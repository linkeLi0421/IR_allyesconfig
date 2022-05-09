; ModuleID = '/llk/IR_all_yes/block/blk-mq-sched.c_pt.bc'
source_filename = "../block/blk-mq-sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+blk_mq_sched_mark_restart_hctx\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_sched_mark_restart_hctx\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_sched_mark_restart_hctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_sched_mark_restart_hctx:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_sched_mark_restart_hctx\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_sched_mark_restart_hctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_mq_sched_try_insert_merge\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_sched_try_insert_merge\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_sched_try_insert_merge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_sched_try_insert_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_sched_try_insert_merge\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_sched_try_insert_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_mq_ctx = type { %struct.anon.3, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [88 x i8] }
%struct.anon.3 = type { %struct.spinlock, [3 x %struct.list_head], [60 x i8] }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.71, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.78, %union.anon.79, %union.anon.80, %union.anon.83, ptr, ptr }
%union.anon.71 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%union.anon.79 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, %struct.list_head, ptr }
%union.anon.83 = type { i64, [8 x i8] }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }

@__kstrtab_blk_mq_sched_mark_restart_hctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_sched_mark_restart_hctx = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_sched_mark_restart_hctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_sched_mark_restart_hctx to i32), ptr @__kstrtab_blk_mq_sched_mark_restart_hctx, ptr @__kstrtabns_blk_mq_sched_mark_restart_hctx }, section "___ksymtab_gpl+blk_mq_sched_mark_restart_hctx", align 4
@__kstrtab_blk_mq_sched_try_insert_merge = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_sched_try_insert_merge = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_sched_try_insert_merge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_sched_try_insert_merge to i32), ptr @__kstrtab_blk_mq_sched_try_insert_merge, ptr @__kstrtabns_blk_mq_sched_try_insert_merge }, section "___ksymtab_gpl+blk_mq_sched_try_insert_merge", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"block/blk-mq-sched.c\00", [43 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 9, i64 13]
@___asan_gen_.6 = private constant [24 x i8] c"../block/blk-mq-sched.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 409, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 695, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 723, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 189, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_blk_mq_sched_mark_restart_hctx, ptr @__ksymtab_blk_mq_sched_try_insert_merge, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_sched_mark_restart_hctx(ptr noundef %hctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__blk_mq_sched_restart(ptr noundef %hctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @blk_mq_run_hw_queue(ptr noundef %hctx, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_sched_dispatch_requests(ptr noundef %hctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %state.i = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 2
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.rhs, label %entry.cleanup_crit_edge, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %queue_flags, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %lor.rhs.cleanup_crit_edge, !prof !27

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %run = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 22
  %7 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %run, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %run, align 4
  %call4 = tail call fastcc i32 @__blk_mq_sched_dispatch_requests(ptr noundef %hctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call4)
  %cmp = icmp eq i32 %call4, -11
  br i1 %cmp, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %call6 = tail call fastcc i32 @__blk_mq_sched_dispatch_requests(ptr noundef %hctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call6)
  %cmp7 = icmp eq i32 %call6, -11
  br i1 %cmp7, label %if.then8, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @blk_mq_run_hw_queue(ptr noundef %hctx, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__blk_mq_sched_dispatch_requests(ptr noundef %hctx) unnamed_addr #0 align 64 {
entry:
  %rq_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %tobool.not = icmp eq ptr %3, null
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rq_list) #8
  %4 = getelementptr inbounds %struct.list_head, ptr %rq_list, i32 0, i32 1
  %5 = ptrtoint ptr %rq_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rq_list, ptr %rq_list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rq_list, ptr %4, align 4
  %dispatch = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 1
  %7 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dispatch, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %cmp.i.not.i = icmp eq ptr %8, %dispatch
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

list_empty_careful.exit:                          ; preds = %entry
  %prev.i = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %10, %dispatch
  br i1 %cmp.i.not, label %list_empty_careful.exit.if.end8_crit_edge, label %list_empty_careful.exit.if.then_crit_edge

list_empty_careful.exit.if.then_crit_edge:        ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

list_empty_careful.exit.if.end8_crit_edge:        ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %list_empty_careful.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @_raw_spin_lock(ptr noundef %hctx) #8
  %11 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %dispatch, align 4
  %cmp.i48.not = icmp eq ptr %12, %dispatch
  br i1 %cmp.i48.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  %13 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %dispatch, align 4
  %cmp.i.not.i49 = icmp eq ptr %14, %dispatch
  br i1 %cmp.i.not.i49, label %if.then5.if.end_crit_edge, label %if.then.i

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rq_list, ptr %prev3.i.i, align 4
  store ptr %14, ptr %rq_list, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %18, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev6.i.i, align 4
  %22 = ptrtoint ptr %dispatch to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %dispatch, ptr %dispatch, align 4
  store ptr %dispatch, ptr %prev2.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %hctx) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %list_empty_careful.exit.if.end8_crit_edge
  %23 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %rq_list, align 4
  %cmp.i50.not = icmp eq ptr %24, %rq_list
  br i1 %cmp.i50.not, label %if.else20, label %if.then11

if.then11:                                        ; preds = %if.end8
  %state.i = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 2
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.blk_mq_sched_mark_restart_hctx.exit_crit_edge

if.then11.blk_mq_sched_mark_restart_hctx.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_sched_mark_restart_hctx.exit

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #8
  br label %blk_mq_sched_mark_restart_hctx.exit

blk_mq_sched_mark_restart_hctx.exit:              ; preds = %if.end.i, %if.then11.blk_mq_sched_mark_restart_hctx.exit_crit_edge
  %call12 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %hctx, ptr noundef nonnull %rq_list, i32 noundef 0) #8
  br i1 %call12, label %if.then13, label %blk_mq_sched_mark_restart_hctx.exit.if.end32_crit_edge

blk_mq_sched_mark_restart_hctx.exit.if.end32_crit_edge: ; preds = %blk_mq_sched_mark_restart_hctx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then13:                                        ; preds = %blk_mq_sched_mark_restart_hctx.exit
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = call fastcc i32 @blk_mq_do_dispatch_sched(ptr noundef %hctx)
  br label %if.end32

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call fastcc i32 @blk_mq_do_dispatch_ctx(ptr noundef %hctx)
  br label %if.end32

if.else20:                                        ; preds = %if.end8
  br i1 %tobool.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call fastcc i32 @blk_mq_do_dispatch_sched(ptr noundef %hctx)
  br label %if.end32

if.else24:                                        ; preds = %if.else20
  %dispatch_busy = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 12
  %28 = ptrtoint ptr %dispatch_busy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dispatch_busy, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not = icmp eq i32 %29, 0
  br i1 %tobool25.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call fastcc i32 @blk_mq_do_dispatch_ctx(ptr noundef %hctx)
  br label %if.end32

if.else28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  call void @blk_mq_flush_busy_ctxs(ptr noundef %hctx, ptr noundef nonnull %rq_list) #8
  %call29 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %hctx, ptr noundef nonnull %rq_list, i32 noundef 0) #8
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then26, %if.then22, %if.else, %if.then15, %blk_mq_sched_mark_restart_hctx.exit.if.end32_crit_edge
  %ret.0 = phi i32 [ %call23, %if.then22 ], [ %call27, %if.then26 ], [ 0, %if.else28 ], [ %call16, %if.then15 ], [ %call17, %if.else ], [ 0, %blk_mq_sched_mark_restart_hctx.exit.if.end32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rq_list) #8
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_mq_sched_bio_merge(ptr noundef %q, ptr noundef %bio, i32 noundef %nr_segs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bio_merge = getelementptr inbounds %struct.elevator_type, ptr %3, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %bio_merge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bio_merge, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 %5(ptr noundef %q, ptr noundef %bio, i32 noundef %nr_segs) #8
  br label %out_put

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %queue_ctx.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 6
  %10 = ptrtoint ptr %queue_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue_ctx.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %12
  %15 = inttoptr i32 %add.i.i to ptr
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %16 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_opf, align 8
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  %and1.i.i = and i32 %17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.i = icmp eq i32 %and1.i.i, 0
  %spec.select.i.i = zext i1 %cmp.i.i to i32
  %type.0.i.i = select i1 %tobool.not.i.i, i32 %spec.select.i.i, i32 2
  %arrayidx.i = getelementptr %struct.blk_mq_ctx, ptr %15, i32 0, i32 3, i32 %type.0.i.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 16
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.out_put_crit_edge, label %lor.lhs.false

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put

lor.lhs.false:                                    ; preds = %if.end
  %type8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %20, i32 0, i32 13
  %23 = ptrtoint ptr %type8 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %type8, align 4
  %conv = zext i16 %24 to i32
  %arrayidx = getelementptr %struct.anon.3, ptr %15, i32 0, i32 1, i32 %conv
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %cmp.i.not.i = icmp eq ptr %26, %arrayidx
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %lor.lhs.false.if.end13_crit_edge

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

list_empty_careful.exit:                          ; preds = %lor.lhs.false
  %prev.i = getelementptr %struct.anon.3, ptr %15, i32 0, i32 1, i32 %conv, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %28, %arrayidx
  br i1 %cmp.i.not, label %list_empty_careful.exit.out_put_crit_edge, label %list_empty_careful.exit.if.end13_crit_edge

list_empty_careful.exit.if.end13_crit_edge:       ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

list_empty_careful.exit.out_put_crit_edge:        ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put

if.end13:                                         ; preds = %list_empty_careful.exit.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %15) #8
  %call16 = tail call zeroext i1 @blk_bio_list_merge(ptr noundef %q, ptr noundef %arrayidx, ptr noundef %bio, i32 noundef %nr_segs) #8
  tail call void @_raw_spin_unlock(ptr noundef %15) #8
  br label %out_put

out_put:                                          ; preds = %if.end13, %list_empty_careful.exit.out_put_crit_edge, %if.end.out_put_crit_edge, %if.then
  %ret.1.off0 = phi i1 [ %call, %if.then ], [ false, %list_empty_careful.exit.out_put_crit_edge ], [ %call16, %if.end13 ], [ false, %if.end.out_put_crit_edge ]
  ret i1 %ret.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_bio_list_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_mq_sched_try_insert_merge(ptr noundef %q, ptr noundef %rq, ptr noundef %free) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags.i.i, align 4
  %2 = and i32 %1, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %2)
  %3 = icmp eq i32 %2, 34
  br i1 %3, label %entry.land.end_crit_edge, label %if.end.i

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.end.i:                                         ; preds = %entry
  %trunc.i = trunc i32 %1 to i8
  %4 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.end12.i [
    i8 2, label %if.end.i.land.end_crit_edge
    i8 9, label %if.end.i.land.end_crit_edge4
    i8 13, label %if.end.i.land.end_crit_edge5
  ]

if.end.i.land.end_crit_edge5:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.end.i.land.end_crit_edge4:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.end12.i:                                       ; preds = %if.end.i
  %5 = and i32 %1, 409600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %rq_mergeable.exit, label %if.end12.i.land.end_crit_edge

if.end12.i.land.end_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

rq_mergeable.exit:                                ; preds = %if.end12.i
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %6 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_flags.i, align 8
  %and17.i = and i32 %7, 262170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %land.rhs, label %rq_mergeable.exit.land.end_crit_edge

rq_mergeable.exit.land.end_crit_edge:             ; preds = %rq_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %rq_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call zeroext i1 @elv_attempt_insert_merge(ptr noundef %q, ptr noundef %rq, ptr noundef %free) #8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %rq_mergeable.exit.land.end_crit_edge, %if.end12.i.land.end_crit_edge, %if.end.i.land.end_crit_edge, %if.end.i.land.end_crit_edge4, %if.end.i.land.end_crit_edge5, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %rq_mergeable.exit.land.end_crit_edge ], [ %call1, %land.rhs ], [ false, %entry.land.end_crit_edge ], [ false, %if.end.i.land.end_crit_edge ], [ false, %if.end.i.land.end_crit_edge4 ], [ false, %if.end.i.land.end_crit_edge5 ], [ false, %if.end12.i.land.end_crit_edge ]
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @elv_attempt_insert_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_sched_insert_request(ptr noundef %rq, i1 noundef zeroext %at_head, i1 noundef zeroext %run_queue, i1 noundef zeroext %async) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %mq_ctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 1
  %4 = ptrtoint ptr %mq_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mq_ctx, align 4
  %mq_hctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 2
  %6 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mq_hctx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %tag = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 5
  %8 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %land.rhs.if.end_crit_edge, label %do.end, !prof !27

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 409, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %10 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %blk_mq_sched_bypass_insert.exit, label %if.end.if.then23_crit_edge

if.end.if.then23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

blk_mq_sched_bypass_insert.exit:                  ; preds = %if.end
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %12 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_flags.i.i, align 4
  %14 = and i32 %13, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %14)
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %blk_mq_sched_bypass_insert.exit.if.then23_crit_edge, label %if.end29

blk_mq_sched_bypass_insert.exit.if.then23_crit_edge: ; preds = %blk_mq_sched_bypass_insert.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.then23:                                        ; preds = %blk_mq_sched_bypass_insert.exit.if.then23_crit_edge, %if.end.if.then23_crit_edge
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %spec.select = or i1 %not.tobool.not.i, %at_head
  tail call void @blk_mq_request_bypass_insert(ptr noundef %rq, i1 noundef zeroext %spec.select, i1 noundef zeroext false) #8
  br label %run

if.end29:                                         ; preds = %blk_mq_sched_bypass_insert.exit
  br i1 %tobool.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #8
  %16 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %list, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %16, align 4
  %19 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 12
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef nonnull %list, ptr noundef nonnull %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then31.list_add.exit_crit_edge

if.then31.list_add.exit_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %16, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %19, align 4
  %prev3.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 12, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then31.list_add.exit_crit_edge
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %insert_requests = getelementptr inbounds %struct.elevator_type, ptr %25, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %insert_requests to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %insert_requests, align 4
  call void %27(ptr noundef %7, ptr noundef nonnull %list, i1 noundef zeroext %at_head) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #8
  br label %run

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %5) #8
  tail call void @__blk_mq_insert_request(ptr noundef %7, ptr noundef %rq, i1 noundef zeroext %at_head) #8
  tail call void @_raw_spin_unlock(ptr noundef %5) #8
  br label %run

run:                                              ; preds = %if.else, %list_add.exit, %if.then23
  br i1 %run_queue, label %if.then37, label %run.if.end39_crit_edge

run.if.end39_crit_edge:                           ; preds = %run
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then37:                                        ; preds = %run
  call void @__sanitizer_cov_trace_pc() #10
  call void @blk_mq_run_hw_queue(ptr noundef %7, i1 noundef zeroext %async) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %run.if.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_request_bypass_insert(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_insert_request(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_sched_insert_requests(ptr noundef %hctx, ptr noundef %ctx, ptr noundef %list, i1 noundef zeroext %run_queue_async) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %q_usage_counter = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %6 = ptrtoint ptr %q_usage_counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %q_usage_counter, align 4
  %and.i.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !27

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !30
  %9 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i2.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %7
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add15.i.i = add i32 %17, 1
  store i32 %add15.i.i, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !31
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !32

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #8, !srcloc !33
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #8
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #8, !srcloc !34
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else.i.i, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i3.i.i, label %if.end38.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end38.i.i.percpu_ref_get.exit_crit_edge:       ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %percpu_ref_get.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end38.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %percpu_ref_get.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %percpu_ref_get.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #8
  br label %percpu_ref_get.exit

percpu_ref_get.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, %if.end38.i.i.percpu_ref_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %22 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i10.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %queue, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %elevator, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %percpu_ref_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %insert_requests = getelementptr inbounds %struct.elevator_type, ptr %31, i32 0, i32 1, i32 13
  %32 = ptrtoint ptr %insert_requests to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %insert_requests, align 4
  tail call void %33(ptr noundef %hctx, ptr noundef %list, i1 noundef zeroext false) #8
  br label %if.end28

if.else:                                          ; preds = %percpu_ref_get.exit
  %dispatch_busy = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 12
  %34 = ptrtoint ptr %dispatch_busy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dispatch_busy, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not = icmp ne i32 %35, 0
  %brmerge = or i1 %tobool2.not, %run_queue_async
  br i1 %brmerge, label %if.else.if.end27_crit_edge, label %do.body

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.body:                                          ; preds = %if.else
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 11
  %36 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %queue_flags, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool6.not = icmp eq i32 %38, 0
  br i1 %tobool6.not, label %if.then7, label %if.else8

if.then7:                                         ; preds = %do.body
  %39 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.then7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then7.rcu_read_lock.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then7
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then7.rcu_read_lock.exit_crit_edge
  tail call void @blk_mq_try_issue_list_directly(ptr noundef %hctx, ptr noundef %list) #8
  %call.i48 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i48, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i51

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i51:                                ; preds = %rcu_read_lock.exit
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %43 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i55 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i56, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %do.end22

if.else8:                                         ; preds = %do.body
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 479) #8
  %47 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %queue, align 8
  %srcu = getelementptr inbounds %struct.request_queue, ptr %48, i32 0, i32 70
  %call.i57 = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #8
  %dep_map.i = getelementptr inbounds %struct.request_queue, ptr %48, i32 1, i32 50, i32 2
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #8
  tail call void @blk_mq_try_issue_list_directly(ptr noundef %hctx, ptr noundef %list) #8
  %49 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %queue, align 8
  %srcu19 = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i57)
  %tobool.not.i58 = icmp ult i32 %call.i57, 2
  br i1 %tobool.not.i58, label %if.else8.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.else8.srcu_read_unlock.exit_crit_edge:         ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.else8
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i59, !prof !27

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %srcu_read_unlock.exit

if.then.i59:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #8
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i59, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.else8.srcu_read_unlock.exit_crit_edge
  %dep_map.i60 = getelementptr inbounds %struct.request_queue, ptr %50, i32 1, i32 50, i32 2
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i60) #8
  tail call void @__srcu_read_unlock(ptr noundef %srcu19, i32 noundef %call.i57) #8
  br label %do.end22

do.end22:                                         ; preds = %srcu_read_unlock.exit, %rcu_read_unlock.exit
  %51 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %52, %list
  br i1 %cmp.i.not, label %do.end22.out_crit_edge, label %do.end22.if.end27_crit_edge

do.end22.if.end27_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end22.out_crit_edge:                           ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end27:                                         ; preds = %do.end22.if.end27_crit_edge, %if.else.if.end27_crit_edge
  tail call void @blk_mq_insert_requests(ptr noundef %hctx, ptr noundef %ctx, ptr noundef %list) #8
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  tail call void @blk_mq_run_hw_queue(ptr noundef %hctx, i1 noundef zeroext %run_queue_async) #8
  br label %out

out:                                              ; preds = %if.end28, %do.end22.out_crit_edge
  %53 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i.i.i61 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i62, align 4
  %add.i.i.i.i.i63 = add i32 %56, 1
  store volatile i32 %add.i.i.i.i.i63, ptr %preempt_count.i.i.i.i.i.i62, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i64 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i64, label %out.rcu_read_lock.exit.i.i73_crit_edge, label %land.lhs.true.i.i.i67

out.rcu_read_lock.exit.i.i73_crit_edge:           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i73

land.lhs.true.i.i.i67:                            ; preds = %out
  %call1.i.i.i65 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i65)
  %tobool.not.i.i.i66 = icmp eq i32 %call1.i.i.i65, 0
  br i1 %tobool.not.i.i.i66, label %land.lhs.true.i.i.i67.rcu_read_lock.exit.i.i73_crit_edge, label %land.lhs.true2.i.i.i69

land.lhs.true.i.i.i67.rcu_read_lock.exit.i.i73_crit_edge: ; preds = %land.lhs.true.i.i.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i73

land.lhs.true2.i.i.i69:                           ; preds = %land.lhs.true.i.i.i67
  %.b4.i.i.i68 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i68, label %land.lhs.true2.i.i.i69.rcu_read_lock.exit.i.i73_crit_edge, label %if.then.i.i.i70

land.lhs.true2.i.i.i69.rcu_read_lock.exit.i.i73_crit_edge: ; preds = %land.lhs.true2.i.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i73

if.then.i.i.i70:                                  ; preds = %land.lhs.true2.i.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %rcu_read_lock.exit.i.i73

rcu_read_lock.exit.i.i73:                         ; preds = %if.then.i.i.i70, %land.lhs.true2.i.i.i69.rcu_read_lock.exit.i.i73_crit_edge, %land.lhs.true.i.i.i67.rcu_read_lock.exit.i.i73_crit_edge, %out.rcu_read_lock.exit.i.i73_crit_edge
  %57 = ptrtoint ptr %q_usage_counter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %q_usage_counter, align 4
  %and.i.i.i71 = and i32 %58, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i71)
  %tobool.not.i1.i.i72 = icmp eq i32 %and.i.i.i71, 0
  br i1 %tobool.not.i1.i.i72, label %do.body1.i.i81, label %if.else.i.i86, !prof !27

do.body1.i.i81:                                   ; preds = %rcu_read_lock.exit.i.i73
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !30
  %60 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i2.i.i74 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i2.i.i74 to ptr
  %cpu.i.i75 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i.i75 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i.i75, align 4
  %arrayidx.i.i76 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i76, align 4
  %add.i.i77 = add i32 %65, %58
  %66 = inttoptr i32 %add.i.i77 to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add15.i.i78 = add i32 %68, -1
  store i32 %add15.i.i78, ptr %66, align 4
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !31
  %and.i.i.i.i79 = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i79)
  %tobool.not.i.i80 = icmp eq i32 %and.i.i.i.i79, 0
  br i1 %tobool.not.i.i80, label %if.then29.i.i82, label %do.body1.i.i81.do.end31.i.i83_crit_edge, !prof !32

do.body1.i.i81.do.end31.i.i83_crit_edge:          ; preds = %do.body1.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31.i.i83

if.then29.i.i82:                                  ; preds = %do.body1.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end31.i.i83

do.end31.i.i83:                                   ; preds = %if.then29.i.i82, %do.body1.i.i81.do.end31.i.i83_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #8, !srcloc !33
  br label %if.end48.i.i

if.else.i.i86:                                    ; preds = %rcu_read_lock.exit.i.i73
  %data.i.i84 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %data.i.i84 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i84, align 4
  %call.i.i.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %71, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %71, i32 1, i32 3, i32 1) #8
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %72, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i86.if.end48.i.i_crit_edge, !prof !32

if.else.i.i86.if.end48.i.i_crit_edge:             ; preds = %if.else.i.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i86
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %data.i.i84 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i84, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %release.i.i, align 4
  tail call void %76(ptr noundef %q_usage_counter) #8
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i86.if.end48.i.i_crit_edge, %do.end31.i.i83
  %call.i3.i.i87 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i3.i.i87, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i90

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i90:                           ; preds = %if.end48.i.i
  %call1.i4.i.i88 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i88)
  %tobool.not.i5.i.i89 = icmp eq i32 %call1.i4.i.i88, 0
  br i1 %tobool.not.i5.i.i89, label %land.lhs.true.i6.i.i90.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i92

land.lhs.true.i6.i.i90.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i92:                          ; preds = %land.lhs.true.i6.i.i90
  %.b4.i7.i.i91 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i91, label %land.lhs.true2.i8.i.i92.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i93

land.lhs.true2.i8.i.i92.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %percpu_ref_put.exit

if.then.i9.i.i93:                                 ; preds = %land.lhs.true2.i8.i.i92
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #8
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i93, %land.lhs.true2.i8.i.i92.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i90.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %77 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i.i.i.i10.i.i94 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i10.i.i94 to ptr
  %preempt_count.i.i.i.i11.i.i95 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i95 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i95, align 4
  %sub.i.i.i.i.i96 = add i32 %80, -1
  store volatile i32 %sub.i.i.i.i.i96, ptr %preempt_count.i.i.i.i11.i.i95, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_try_issue_list_directly(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_insert_requests(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_init_sched(ptr noundef %q, ptr noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 61
  %0 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tag_set, align 8
  %tobool.not = icmp eq ptr %e, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %elevator, align 4
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %queue_depth, align 4
  %nr_requests = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 21
  %5 = ptrtoint ptr %nr_requests to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %nr_requests, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1, align 4
  %queue_depth4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %queue_depth4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_depth4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %9)
  %cmp = icmp ult i32 %9, 128
  %phi.bo = shl i32 %9, 1
  %cond = select i1 %cmp, i32 %phi.bo, i32 256
  %nr_requests5 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 21
  %10 = ptrtoint ptr %nr_requests5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %nr_requests5, align 8
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %call.i = tail call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %1, i32 noundef -1, i32 noundef 2048) #8
  %sched_shared_tags.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 32
  %11 = ptrtoint ptr %sched_shared_tags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %sched_shared_tags.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then6.cleanup_crit_edge, label %blk_mq_init_sched_shared_tags.exit.thread

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

blk_mq_init_sched_shared_tags.exit.thread:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @blk_mq_tag_update_sched_shared_tags(ptr noundef %q) #8
  br label %if.end11

if.end11:                                         ; preds = %blk_mq_init_sched_shared_tags.exit.thread, %if.end.if.end11_crit_edge
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %12 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12152.not = icmp eq i32 %13, 0
  br i1 %cmp12152.not, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  %sched_shared_tags.i97 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.0153
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tag_set, align 8
  %flags.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i99, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %sched_shared_tags.i97 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sched_shared_tags.i97, align 8
  br label %for.inc

if.end.i99:                                       ; preds = %for.body
  %24 = ptrtoint ptr %nr_requests5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_requests5, align 8
  %call2.i = tail call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %19, i32 noundef %i.0153, i32 noundef %25) #8
  %tobool.not.i98 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i98, label %blk_mq_sched_alloc_map_and_rqs.exit, label %if.end.i99.for.inc_crit_edge

if.end.i99.for.inc_crit_edge:                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

blk_mq_sched_alloc_map_and_rqs.exit:              ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #10
  %26 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %17, i32 0, i32 20
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %26, align 4
  br label %err_free_map_and_rqs

for.inc:                                          ; preds = %if.end.i99.for.inc_crit_edge, %if.then.i
  %.sink.i.ph = phi ptr [ %23, %if.then.i ], [ %call2.i, %if.end.i99.for.inc_crit_edge ]
  %28 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %17, i32 0, i32 20
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.sink.i.ph, ptr %28, align 4
  %inc = add nuw i32 %i.0153, 1
  %30 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_hw_queues, align 8
  %cmp12 = icmp ult i32 %inc, %31
  br i1 %cmp12, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %ops = getelementptr inbounds %struct.elevator_type, ptr %e, i32 0, i32 1
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %call19 = tail call i32 %33(ptr noundef %q, ptr noundef nonnull %e) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %for.end.err_free_map_and_rqs_crit_edge

for.end.err_free_map_and_rqs_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_map_and_rqs

if.end22:                                         ; preds = %for.end
  tail call void @blk_mq_debugfs_register_sched(ptr noundef %q) #8
  %34 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp25155.not = icmp eq i32 %35, 0
  br i1 %cmp25155.not, label %if.end22.cleanup_crit_edge, label %land.rhs26.lr.ph

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs26.lr.ph:                                 ; preds = %if.end22
  %queue_hw_ctx27 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  %init_hctx = getelementptr inbounds %struct.elevator_type, ptr %e, i32 0, i32 1, i32 2
  br label %land.rhs26

land.rhs26:                                       ; preds = %if.end43.land.rhs26_crit_edge, %land.rhs26.lr.ph
  %i.1156 = phi i32 [ 0, %land.rhs26.lr.ph ], [ %inc45, %if.end43.land.rhs26_crit_edge ]
  %36 = ptrtoint ptr %queue_hw_ctx27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %queue_hw_ctx27, align 4
  %arrayidx28 = getelementptr ptr, ptr %37, i32 %i.1156
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx28, align 4
  %40 = ptrtoint ptr %init_hctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_hctx, align 4
  %tobool34.not = icmp eq ptr %41, null
  br i1 %tobool34.not, label %land.rhs26.if.end43_crit_edge, label %if.then35

land.rhs26.if.end43_crit_edge:                    ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then35:                                        ; preds = %land.rhs26
  %call38 = tail call i32 %41(ptr noundef %39, i32 noundef %i.1156) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then35.if.end43_crit_edge, label %if.then40

if.then35.if.end43_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then40:                                        ; preds = %if.then35
  %elevator41 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %42 = ptrtoint ptr %elevator41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %elevator41, align 4
  %44 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tag_set, align 8
  %flags.i102 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %flags.i102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i102, align 4
  %and.i.i103 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i103)
  %tobool.i.not.i104 = icmp eq i32 %and.i.i103, 0
  br i1 %tobool.i.not.i104, label %for.cond.preheader.i, label %if.then.i106

for.cond.preheader.i:                             ; preds = %if.then40
  %48 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp16.not.i = icmp eq i32 %49, 0
  br i1 %cmp16.not.i, label %for.cond.preheader.i.blk_mq_sched_free_rqs.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.blk_mq_sched_free_rqs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_sched_free_rqs.exit

if.then.i106:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %sched_shared_tags.i105 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 32
  %50 = ptrtoint ptr %sched_shared_tags.i105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sched_shared_tags.i105, align 8
  tail call void @blk_mq_free_rqs(ptr noundef %45, ptr noundef %51, i32 noundef -1) #8
  br label %blk_mq_sched_free_rqs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %queue_hw_ctx27 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %queue_hw_ctx27, align 4
  %arrayidx.i = getelementptr ptr, ptr %53, i32 %i.017.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %sched_tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %sched_tags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sched_tags.i, align 4
  %tobool2.not.i = icmp eq ptr %57, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tag_set, align 8
  tail call void @blk_mq_free_rqs(ptr noundef %59, ptr noundef nonnull %57, i32 noundef %i.017.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.017.i, 1
  %60 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_hw_queues, align 8
  %cmp.i = icmp ult i32 %inc.i, %61
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.blk_mq_sched_free_rqs.exit_crit_edge

for.inc.i.blk_mq_sched_free_rqs.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_sched_free_rqs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

blk_mq_sched_free_rqs.exit:                       ; preds = %for.inc.i.blk_mq_sched_free_rqs.exit_crit_edge, %if.then.i106, %for.cond.preheader.i.blk_mq_sched_free_rqs.exit_crit_edge
  tail call void @blk_mq_exit_sched(ptr noundef %q, ptr noundef %43)
  %kobj = getelementptr inbounds %struct.elevator_queue, ptr %43, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %kobj) #8
  br label %cleanup

if.end43:                                         ; preds = %if.then35.if.end43_crit_edge, %land.rhs26.if.end43_crit_edge
  tail call void @blk_mq_debugfs_register_sched_hctx(ptr noundef %q, ptr noundef %39) #8
  %inc45 = add nuw i32 %i.1156, 1
  %62 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_hw_queues, align 8
  %cmp25 = icmp ult i32 %inc45, %63
  br i1 %cmp25, label %if.end43.land.rhs26_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43.land.rhs26_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs26

err_free_map_and_rqs:                             ; preds = %for.end.err_free_map_and_rqs_crit_edge, %blk_mq_sched_alloc_map_and_rqs.exit
  %ret.0 = phi i32 [ -12, %blk_mq_sched_alloc_map_and_rqs.exit ], [ %call19, %for.end.err_free_map_and_rqs_crit_edge ]
  %64 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tag_set, align 8
  %flags.i108 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %flags.i108 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i108, align 4
  %and.i.i109 = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i109)
  %tobool.i.not.i110 = icmp eq i32 %and.i.i109, 0
  br i1 %tobool.i.not.i110, label %for.cond.preheader.i113, label %if.then.i117

for.cond.preheader.i113:                          ; preds = %err_free_map_and_rqs
  %68 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp16.not.i112 = icmp eq i32 %69, 0
  br i1 %cmp16.not.i112, label %for.cond.preheader.i113.for.end.i_crit_edge, label %for.body.lr.ph.i115

for.cond.preheader.i113.for.end.i_crit_edge:      ; preds = %for.cond.preheader.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i115:                              ; preds = %for.cond.preheader.i113
  %queue_hw_ctx.i114 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %for.body.i122

if.then.i117:                                     ; preds = %err_free_map_and_rqs
  call void @__sanitizer_cov_trace_pc() #10
  %sched_shared_tags.i116 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 32
  %70 = ptrtoint ptr %sched_shared_tags.i116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sched_shared_tags.i116, align 8
  tail call void @blk_mq_free_rqs(ptr noundef %65, ptr noundef %71, i32 noundef -1) #8
  %72 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pr = load i32, ptr %nr_hw_queues, align 8
  br label %blk_mq_sched_free_rqs.exit127

for.body.i122:                                    ; preds = %for.inc.i126.for.body.i122_crit_edge, %for.body.lr.ph.i115
  %i.017.i118 = phi i32 [ 0, %for.body.lr.ph.i115 ], [ %inc.i124, %for.inc.i126.for.body.i122_crit_edge ]
  %73 = ptrtoint ptr %queue_hw_ctx.i114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %queue_hw_ctx.i114, align 4
  %arrayidx.i119 = getelementptr ptr, ptr %74, i32 %i.017.i118
  %75 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i119, align 4
  %sched_tags.i120 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %76, i32 0, i32 20
  %77 = ptrtoint ptr %sched_tags.i120 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sched_tags.i120, align 4
  %tobool2.not.i121 = icmp eq ptr %78, null
  br i1 %tobool2.not.i121, label %for.body.i122.for.inc.i126_crit_edge, label %if.then3.i123

for.body.i122.for.inc.i126_crit_edge:             ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i126

if.then3.i123:                                    ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tag_set, align 8
  tail call void @blk_mq_free_rqs(ptr noundef %80, ptr noundef nonnull %78, i32 noundef %i.017.i118) #8
  br label %for.inc.i126

for.inc.i126:                                     ; preds = %if.then3.i123, %for.body.i122.for.inc.i126_crit_edge
  %inc.i124 = add nuw i32 %i.017.i118, 1
  %81 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_hw_queues, align 8
  %cmp.i125 = icmp ult i32 %inc.i124, %82
  br i1 %cmp.i125, label %for.inc.i126.for.body.i122_crit_edge, label %for.inc.i126.blk_mq_sched_free_rqs.exit127_crit_edge

for.inc.i126.blk_mq_sched_free_rqs.exit127_crit_edge: ; preds = %for.inc.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_sched_free_rqs.exit127

for.inc.i126.for.body.i122_crit_edge:             ; preds = %for.inc.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i122

blk_mq_sched_free_rqs.exit127:                    ; preds = %for.inc.i126.blk_mq_sched_free_rqs.exit127_crit_edge, %if.then.i117
  %83 = phi i32 [ %.pr, %if.then.i117 ], [ %82, %for.inc.i126.blk_mq_sched_free_rqs.exit127_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp18.not.i = icmp eq i32 %83, 0
  br i1 %cmp18.not.i, label %blk_mq_sched_free_rqs.exit127.for.end.i_crit_edge, label %for.body.lr.ph.i132

blk_mq_sched_free_rqs.exit127.for.end.i_crit_edge: ; preds = %blk_mq_sched_free_rqs.exit127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i132:                              ; preds = %blk_mq_sched_free_rqs.exit127
  %queue_hw_ctx.i129 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %for.body.i135

for.body.i135:                                    ; preds = %for.inc.i140.for.body.i135_crit_edge, %for.body.lr.ph.i132
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i132 ], [ %inc.i138, %for.inc.i140.for.body.i135_crit_edge ]
  %84 = ptrtoint ptr %queue_hw_ctx.i129 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %queue_hw_ctx.i129, align 4
  %arrayidx.i133 = getelementptr ptr, ptr %85, i32 %i.019.i
  %86 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i133, align 4
  %sched_tags.i134 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %87, i32 0, i32 20
  %88 = ptrtoint ptr %sched_tags.i134 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sched_tags.i134, align 4
  %tobool1.not.i = icmp eq ptr %89, null
  br i1 %tobool1.not.i, label %for.body.i135.for.inc.i140_crit_edge, label %if.then.i136

for.body.i135.for.inc.i140_crit_edge:             ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i140

if.then.i136:                                     ; preds = %for.body.i135
  br i1 %tobool.i.not, label %if.then2.i, label %if.then.i136.if.end.i137_crit_edge

if.then.i136.if.end.i137_crit_edge:               ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i137

if.then2.i:                                       ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @blk_mq_free_rq_map(ptr noundef nonnull %89) #8
  br label %if.end.i137

if.end.i137:                                      ; preds = %if.then2.i, %if.then.i136.if.end.i137_crit_edge
  %90 = ptrtoint ptr %sched_tags.i134 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %sched_tags.i134, align 4
  br label %for.inc.i140

for.inc.i140:                                     ; preds = %if.end.i137, %for.body.i135.for.inc.i140_crit_edge
  %inc.i138 = add nuw i32 %i.019.i, 1
  %91 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nr_hw_queues, align 8
  %cmp.i139 = icmp ult i32 %inc.i138, %92
  br i1 %cmp.i139, label %for.inc.i140.for.body.i135_crit_edge, label %for.inc.i140.for.end.i_crit_edge

for.inc.i140.for.end.i_crit_edge:                 ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i140.for.body.i135_crit_edge:             ; preds = %for.inc.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i135

for.end.i:                                        ; preds = %for.inc.i140.for.end.i_crit_edge, %blk_mq_sched_free_rqs.exit127.for.end.i_crit_edge, %for.cond.preheader.i113.for.end.i_crit_edge
  br i1 %tobool.i.not, label %for.end.i.blk_mq_sched_tags_teardown.exit_crit_edge, label %if.then7.i

for.end.i.blk_mq_sched_tags_teardown.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_sched_tags_teardown.exit

if.then7.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sched_shared_tags.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 32
  %93 = ptrtoint ptr %sched_shared_tags.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sched_shared_tags.i.i, align 8
  tail call void @blk_mq_free_rq_map(ptr noundef %94) #8
  %95 = ptrtoint ptr %sched_shared_tags.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %sched_shared_tags.i.i, align 8
  br label %blk_mq_sched_tags_teardown.exit

blk_mq_sched_tags_teardown.exit:                  ; preds = %if.then7.i, %for.end.i.blk_mq_sched_tags_teardown.exit_crit_edge
  %elevator47 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %96 = ptrtoint ptr %elevator47 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %elevator47, align 4
  br label %cleanup

cleanup:                                          ; preds = %blk_mq_sched_tags_teardown.exit, %if.end43.cleanup_crit_edge, %blk_mq_sched_free_rqs.exit, %if.end22.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.0, %blk_mq_sched_tags_teardown.exit ], [ %call38, %blk_mq_sched_free_rqs.exit ], [ 0, %if.then ], [ -12, %if.then6.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register_sched(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_sched_free_rqs(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 61
  %0 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tag_set, align 8
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %4 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.not = icmp eq i32 %5, 0
  br i1 %cmp16.not, label %for.cond.preheader.if.end6_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end6_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sched_shared_tags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 32
  %6 = ptrtoint ptr %sched_shared_tags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sched_shared_tags, align 8
  tail call void @blk_mq_free_rqs(ptr noundef %1, ptr noundef %7, i32 noundef -1) #8
  br label %if.end6

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.017
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %sched_tags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sched_tags, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tag_set, align 8
  tail call void @blk_mq_free_rqs(ptr noundef %15, ptr noundef nonnull %13, i32 noundef %i.017) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.017, 1
  %16 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end6_crit_edge

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end6:                                          ; preds = %for.inc.if.end6_crit_edge, %if.then, %for.cond.preheader.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_exit_sched(ptr noundef %q, ptr noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %0 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp32.not = icmp eq i32 %1, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.033 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.033
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @blk_mq_debugfs_unregister_sched_hctx(ptr noundef %5) #8
  %6 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %e, align 4
  %exit_hctx = getelementptr inbounds %struct.elevator_type, ptr %7, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %exit_hctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %exit_hctx, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %land.rhs.if.end_crit_edge, label %land.lhs.true

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %land.rhs
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sched_data, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %5, i32 noundef %i.033) #8
  %12 = ptrtoint ptr %sched_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %sched_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %land.rhs.if.end_crit_edge
  %inc = add nuw i32 %i.033, 1
  %13 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %if.end.land.rhs_crit_edge, label %for.cond.for.end_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.cond.for.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %flags7 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags7, align 16
  %phi.bo.le = and i32 %16, 8
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %phi.bo.le, %for.cond.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ]
  tail call void @blk_mq_debugfs_unregister_sched(ptr noundef %q) #8
  %17 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %e, align 4
  %exit_sched = getelementptr inbounds %struct.elevator_type, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %exit_sched to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %exit_sched, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %for.end.if.end15_crit_edge, label %if.then11

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %20(ptr noundef %e) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %for.end.if.end15_crit_edge
  %21 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp18.not.i = icmp eq i32 %22, 0
  br i1 %cmp18.not.i, label %if.end15.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end15.for.end.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end15
  %queue_hw_ctx.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.0.lcssa)
  %tobool.i.not.i = icmp eq i32 %flags.0.lcssa, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %queue_hw_ctx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue_hw_ctx.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %24, i32 %i.019.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %sched_tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %sched_tags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sched_tags.i, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  br i1 %tobool.i.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @blk_mq_free_rq_map(ptr noundef nonnull %28) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %29 = ptrtoint ptr %sched_tags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %sched_tags.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.019.i, 1
  %30 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_hw_queues, align 8
  %cmp.i = icmp ult i32 %inc.i, %31
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end15.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.0.lcssa)
  %tobool.i17.not.i = icmp eq i32 %flags.0.lcssa, 0
  br i1 %tobool.i17.not.i, label %for.end.i.blk_mq_sched_tags_teardown.exit_crit_edge, label %if.then7.i

for.end.i.blk_mq_sched_tags_teardown.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_sched_tags_teardown.exit

if.then7.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sched_shared_tags.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 32
  %32 = ptrtoint ptr %sched_shared_tags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sched_shared_tags.i.i, align 8
  tail call void @blk_mq_free_rq_map(ptr noundef %33) #8
  %34 = ptrtoint ptr %sched_shared_tags.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %sched_shared_tags.i.i, align 8
  br label %blk_mq_sched_tags_teardown.exit

blk_mq_sched_tags_teardown.exit:                  ; preds = %if.then7.i, %for.end.i.blk_mq_sched_tags_teardown.exit_crit_edge
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %35 = ptrtoint ptr %elevator to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %elevator, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register_sched_hctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_rqs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister_sched_hctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister_sched(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blk_mq_do_dispatch_sched(ptr noundef %hctx) unnamed_addr #0 align 64 {
entry:
  %hctx_list.i.i = alloca %struct.list_head, align 4
  %rq_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = getelementptr inbounds %struct.list_head, ptr %rq_list.i, i32 0, i32 1
  %dispatch_busy.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 12
  %dispatch.i = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 1, i32 1
  %1 = getelementptr inbounds %struct.list_head, ptr %hctx_list.i.i, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %__blk_mq_do_dispatch_sched.exit.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue.i, align 8
  %elevator.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rq_list.i) #8
  %6 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rq_list.i, ptr %rq_list.i, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rq_list.i, ptr %0, align 4
  %8 = ptrtoint ptr %dispatch_busy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dispatch_busy.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.if.end.i_crit_edge

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %nr_requests.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %nr_requests.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_requests.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.body.if.end.i_crit_edge
  %max_dispatch.0.i = phi i32 [ %11, %if.else.i ], [ 1, %do.body.if.end.i_crit_edge ]
  %mq_ops.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 5
  %umax.i = call i32 @llvm.umax.i32(i32 %max_dispatch.0.i, i32 1) #8
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %if.end.i
  %multi_hctxs.0.off0.i = phi i1 [ false, %if.end.i ], [ %spec.select.i, %cleanup.i.do.body.i_crit_edge ]
  %count.0.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %cleanup.i.do.body.i_crit_edge ]
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %has_work.i = getelementptr inbounds %struct.elevator_type, ptr %13, i32 0, i32 1, i32 15
  %14 = ptrtoint ptr %has_work.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %has_work.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %do.body.i.if.end7.i_crit_edge, label %land.lhs.true.i

do.body.i.if.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call.i = call zeroext i1 %15(ptr noundef %hctx) #8
  br i1 %call.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %do.body.i.if.end7.i_crit_edge
  %16 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %dispatch.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %cmp.i.not.i.i = icmp eq ptr %17, %dispatch.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %if.end7.i.do.end.i_crit_edge

if.end7.i.do.end.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

list_empty_careful.exit.i:                        ; preds = %if.end7.i
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %dispatch.i
  br i1 %cmp.i.not.i, label %if.end11.i, label %list_empty_careful.exit.i.do.end.i_crit_edge

list_empty_careful.exit.i.do.end.i_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end11.i:                                       ; preds = %list_empty_careful.exit.i
  %20 = ptrtoint ptr %mq_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mq_ops.i.i, align 8
  %get_budget.i.i = getelementptr inbounds %struct.blk_mq_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %get_budget.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_budget.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end11.i.if.end14.i_crit_edge, label %blk_mq_get_dispatch_budget.exit.i

if.end11.i.if.end14.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

blk_mq_get_dispatch_budget.exit.i:                ; preds = %if.end11.i
  %call.i.i = call i32 %23(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %blk_mq_get_dispatch_budget.exit.i.do.end.i_crit_edge, label %blk_mq_get_dispatch_budget.exit.i.if.end14.i_crit_edge

blk_mq_get_dispatch_budget.exit.i.if.end14.i_crit_edge: ; preds = %blk_mq_get_dispatch_budget.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

blk_mq_get_dispatch_budget.exit.i.do.end.i_crit_edge: ; preds = %blk_mq_get_dispatch_budget.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end14.i:                                       ; preds = %blk_mq_get_dispatch_budget.exit.i.if.end14.i_crit_edge, %if.end11.i.if.end14.i_crit_edge
  %retval.0.i128.i = phi i32 [ %call.i.i, %blk_mq_get_dispatch_budget.exit.i.if.end14.i_crit_edge ], [ 0, %if.end11.i.if.end14.i_crit_edge ]
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %dispatch_request.i = getelementptr inbounds %struct.elevator_type, ptr %25, i32 0, i32 1, i32 14
  %26 = ptrtoint ptr %dispatch_request.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dispatch_request.i, align 4
  %call17.i = call ptr %27(ptr noundef %hctx) #8
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end20.i

if.then19.i:                                      ; preds = %if.end14.i
  %28 = ptrtoint ptr %mq_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mq_ops.i.i, align 8
  %put_budget.i.i = getelementptr inbounds %struct.blk_mq_ops, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %put_budget.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %put_budget.i.i, align 4
  %tobool.not.i109.i = icmp eq ptr %31, null
  br i1 %tobool.not.i109.i, label %if.then19.i.do.end.i_crit_edge, label %if.then.i110.i

if.then19.i.do.end.i_crit_edge:                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i110.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %31(ptr noundef %3, i32 noundef %retval.0.i128.i) #8
  br label %do.end.i

if.end20.i:                                       ; preds = %if.end14.i
  %32 = ptrtoint ptr %call17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call17.i, align 8
  %mq_ops.i111.i = getelementptr inbounds %struct.request_queue, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %mq_ops.i111.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mq_ops.i111.i, align 8
  %set_rq_budget_token.i.i = getelementptr inbounds %struct.blk_mq_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %set_rq_budget_token.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_rq_budget_token.i.i, align 4
  %tobool.not.i112.i = icmp eq ptr %37, null
  br i1 %tobool.not.i112.i, label %if.end20.i.blk_mq_set_rq_budget_token.exit.i_crit_edge, label %if.then1.i.i

if.end20.i.blk_mq_set_rq_budget_token.exit.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_set_rq_budget_token.exit.i

if.then1.i.i:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %37(ptr noundef nonnull %call17.i, i32 noundef %retval.0.i128.i) #8
  br label %blk_mq_set_rq_budget_token.exit.i

blk_mq_set_rq_budget_token.exit.i:                ; preds = %if.then1.i.i, %if.end20.i.blk_mq_set_rq_budget_token.exit.i_crit_edge
  %38 = getelementptr inbounds %struct.request, ptr %call17.i, i32 0, i32 12
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %38, ptr noundef %40, ptr noundef nonnull %rq_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %blk_mq_set_rq_budget_token.exit.i.list_add_tail.exit.i_crit_edge

blk_mq_set_rq_budget_token.exit.i.list_add_tail.exit.i_crit_edge: ; preds = %blk_mq_set_rq_budget_token.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %blk_mq_set_rq_budget_token.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %rq_list.i, ptr %38, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.request, ptr %call17.i, i32 0, i32 12, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %38, ptr %40, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %blk_mq_set_rq_budget_token.exit.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %count.0.i, 1
  %mq_hctx.i = getelementptr inbounds %struct.request, ptr %call17.i, i32 0, i32 2
  %45 = ptrtoint ptr %mq_hctx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mq_hctx.i, align 8
  %cmp21.not.i = icmp ne ptr %46, %hctx
  %spec.select.i = select i1 %cmp21.not.i, i1 true, i1 %multi_hctxs.0.off0.i
  %tag.i.i = getelementptr inbounds %struct.request, ptr %call17.i, i32 0, i32 5
  %47 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tag.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.not.i.i = icmp eq i32 %48, -1
  br i1 %cmp.not.i.i, label %list_add_tail.exit.i.blk_mq_get_driver_tag.exit.i_crit_edge, label %land.lhs.true.i.i

list_add_tail.exit.i.blk_mq_get_driver_tag.exit.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_get_driver_tag.exit.i

land.lhs.true.i.i:                                ; preds = %list_add_tail.exit.i
  %flags.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i.i, align 16
  %and.i.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i114.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i114.i, label %blk_mq_get_driver_tag.exit.thread.i, label %land.lhs.true.i.i.blk_mq_get_driver_tag.exit.i_crit_edge

land.lhs.true.i.i.blk_mq_get_driver_tag.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_get_driver_tag.exit.i

blk_mq_get_driver_tag.exit.thread.i:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tags.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %46, i32 0, i32 19
  %51 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tags.i.i, align 16
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %54, i32 %48
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call17.i, ptr %arrayidx.i.i, align 4
  br label %cleanup.i

blk_mq_get_driver_tag.exit.i:                     ; preds = %land.lhs.true.i.i.blk_mq_get_driver_tag.exit.i_crit_edge, %list_add_tail.exit.i.blk_mq_get_driver_tag.exit.i_crit_edge
  %call.i116.i = call zeroext i1 @__blk_mq_get_driver_tag(ptr noundef %46, ptr noundef nonnull %call17.i) #8
  br i1 %call.i116.i, label %blk_mq_get_driver_tag.exit.i.cleanup.i_crit_edge, label %do.end.thread.i

blk_mq_get_driver_tag.exit.i.cleanup.i_crit_edge: ; preds = %blk_mq_get_driver_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

do.end.thread.i:                                  ; preds = %blk_mq_get_driver_tag.exit.i
  br i1 %spec.select.i, label %do.end.thread.i.if.then36.i_crit_edge, label %do.end.thread.i.if.else46.i_crit_edge

do.end.thread.i.if.else46.i_crit_edge:            ; preds = %do.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else46.i

do.end.thread.i.if.then36.i_crit_edge:            ; preds = %do.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i

cleanup.i:                                        ; preds = %blk_mq_get_driver_tag.exit.i.cleanup.i_crit_edge, %blk_mq_get_driver_tag.exit.thread.i
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %do.end.thread169.i, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.thread169.i:                               ; preds = %cleanup.i
  br i1 %spec.select.i, label %do.end.thread169.i.if.then36.i_crit_edge, label %do.end.thread169.i.if.else46.i_crit_edge

do.end.thread169.i.if.else46.i_crit_edge:         ; preds = %do.end.thread169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else46.i

do.end.thread169.i.if.then36.i_crit_edge:         ; preds = %do.end.thread169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i

do.end.i:                                         ; preds = %if.then.i110.i, %if.then19.i.do.end.i_crit_edge, %blk_mq_get_dispatch_budget.exit.i.do.end.i_crit_edge, %list_empty_careful.exit.i.do.end.i_crit_edge, %if.end7.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge
  %busy.1.off0140.i = phi i1 [ false, %if.then.i110.i ], [ false, %if.then19.i.do.end.i_crit_edge ], [ false, %land.lhs.true.i.do.end.i_crit_edge ], [ true, %if.end7.i.do.end.i_crit_edge ], [ true, %list_empty_careful.exit.i.do.end.i_crit_edge ], [ false, %blk_mq_get_dispatch_budget.exit.i.do.end.i_crit_edge ]
  %run_queue.1.off0139.i = phi i1 [ true, %if.then.i110.i ], [ true, %if.then19.i.do.end.i_crit_edge ], [ false, %land.lhs.true.i.do.end.i_crit_edge ], [ false, %if.end7.i.do.end.i_crit_edge ], [ false, %list_empty_careful.exit.i.do.end.i_crit_edge ], [ false, %blk_mq_get_dispatch_budget.exit.i.do.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %tobool29.not.i = icmp eq i32 %count.0.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else34.i

if.then30.i:                                      ; preds = %do.end.i
  br i1 %run_queue.1.off0139.i, label %if.then32.i, label %if.then30.i.__blk_mq_do_dispatch_sched.exit_crit_edge

if.then30.i.__blk_mq_do_dispatch_sched.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__blk_mq_do_dispatch_sched.exit

if.then32.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @blk_mq_delay_run_hw_queues(ptr noundef %3, i32 noundef 3) #8
  br label %__blk_mq_do_dispatch_sched.exit

if.else34.i:                                      ; preds = %do.end.i
  br i1 %multi_hctxs.0.off0.i, label %if.else34.i.if.then36.i_crit_edge, label %if.else34.i.if.else46.i_crit_edge

if.else34.i.if.else46.i_crit_edge:                ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else46.i

if.else34.i.if.then36.i_crit_edge:                ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.else34.i.if.then36.i_crit_edge, %do.end.thread169.i.if.then36.i_crit_edge, %do.end.thread.i.if.then36.i_crit_edge
  %busy.1.off0140149151.i = phi i1 [ false, %do.end.thread.i.if.then36.i_crit_edge ], [ %busy.1.off0140.i, %if.else34.i.if.then36.i_crit_edge ], [ false, %do.end.thread169.i.if.then36.i_crit_edge ]
  call void @list_sort(ptr noundef null, ptr noundef nonnull %rq_list.i, ptr noundef nonnull @sched_rq_cmp) #8
  br label %do.body37.i

do.body37.i:                                      ; preds = %blk_mq_dispatch_hctx_list.exit.i.do.body37.i_crit_edge, %if.then36.i
  %dispatched.0.off0.i = phi i1 [ false, %if.then36.i ], [ %or106.i, %blk_mq_dispatch_hctx_list.exit.i.do.body37.i_crit_edge ]
  %56 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rq_list.i, align 4
  %mq_hctx.i118.i = getelementptr i8, ptr %57, i32 -48
  %58 = ptrtoint ptr %mq_hctx.i118.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mq_hctx.i118.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hctx_list.i.i) #8
  %60 = ptrtoint ptr %hctx_list.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %hctx_list.i.i, ptr %hctx_list.i.i, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %hctx_list.i.i, ptr %1, align 4
  %cmp.not28.i.i = icmp eq ptr %57, %rq_list.i
  br i1 %cmp.not28.i.i, label %do.body37.i.for.end.i.i_crit_edge, label %do.body37.i.for.body.i.i_crit_edge

do.body37.i.for.body.i.i_crit_edge:               ; preds = %do.body37.i
  br label %for.body.i.i

do.body37.i.for.end.i.i_crit_edge:                ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end.i122.i.for.body.i.i_crit_edge, %do.body37.i.for.body.i.i_crit_edge
  %.pn30.i.i = phi ptr [ %.pn.i.i, %if.end.i122.i.for.body.i.i_crit_edge ], [ %57, %do.body37.i.for.body.i.i_crit_edge ]
  %count.029.i.i = phi i32 [ %inc.i.i, %if.end.i122.i.for.body.i.i_crit_edge ], [ 0, %do.body37.i.for.body.i.i_crit_edge ]
  %mq_hctx6.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -48
  %62 = ptrtoint ptr %mq_hctx6.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mq_hctx6.i.i, align 8
  %cmp7.not.i.i = icmp eq ptr %63, %59
  br i1 %cmp7.not.i.i, label %if.end.i122.i, label %if.then.i119.i

if.then.i119.i:                                   ; preds = %for.body.i.i
  %cmp.i.i.i = icmp eq ptr %57, %.pn30.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i120.i

if.then.i.i.i:                                    ; preds = %if.then.i119.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %hctx_list.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %hctx_list.i.i, ptr %hctx_list.i.i, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %hctx_list.i.i, ptr %1, align 4
  br label %blk_mq_dispatch_hctx_list.exit.i

if.end.i.i120.i:                                  ; preds = %if.then.i119.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %hctx_list.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %57, ptr %hctx_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %hctx_list.i.i, ptr %prev.i.i.i, align 4
  %prev5.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn30.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev5.i.i.i, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %1, align 4
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %hctx_list.i.i, ptr %69, align 4
  %72 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %.pn30.i.i, ptr %rq_list.i, align 4
  store ptr %rq_list.i, ptr %prev5.i.i.i, align 4
  br label %blk_mq_dispatch_hctx_list.exit.i

if.end.i122.i:                                    ; preds = %for.body.i.i
  %inc.i.i = add i32 %count.029.i.i, 1
  %73 = ptrtoint ptr %.pn30.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn.i.i = load ptr, ptr %.pn30.i.i, align 4
  %cmp.not.i121.i = icmp eq ptr %.pn.i.i, %rq_list.i
  br i1 %cmp.not.i121.i, label %if.end.i122.i.for.end.i.i_crit_edge, label %if.end.i122.i.for.body.i.i_crit_edge

if.end.i122.i.for.body.i.i_crit_edge:             ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end.i122.i.for.end.i.i_crit_edge:              ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i122.i.for.end.i.i_crit_edge, %do.body37.i.for.end.i.i_crit_edge
  %count.0.lcssa.i.i = phi i32 [ 0, %do.body37.i.for.end.i.i_crit_edge ], [ %inc.i.i, %if.end.i122.i.for.end.i.i_crit_edge ]
  %74 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %rq_list.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %75, %rq_list.i
  br i1 %cmp.i.not.i.i.i, label %for.end.i.i.blk_mq_dispatch_hctx_list.exit.i_crit_edge, label %if.then.i22.i.i

for.end.i.i.blk_mq_dispatch_hctx_list.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_dispatch_hctx_list.exit.i

if.then.i22.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %0, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %hctx_list.i.i, ptr %prev3.i.i.i.i, align 4
  %79 = ptrtoint ptr %hctx_list.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %75, ptr %hctx_list.i.i, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %hctx_list.i.i, ptr %77, align 4
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %77, ptr %1, align 4
  %82 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %rq_list.i, ptr %rq_list.i, align 4
  store ptr %rq_list.i, ptr %0, align 4
  br label %blk_mq_dispatch_hctx_list.exit.i

blk_mq_dispatch_hctx_list.exit.i:                 ; preds = %if.then.i22.i.i, %for.end.i.i.blk_mq_dispatch_hctx_list.exit.i_crit_edge, %if.end.i.i120.i, %if.then.i.i.i
  %count.026.i.i = phi i32 [ %count.0.lcssa.i.i, %if.then.i22.i.i ], [ %count.0.lcssa.i.i, %for.end.i.i.blk_mq_dispatch_hctx_list.exit.i_crit_edge ], [ %count.029.i.i, %if.end.i.i120.i ], [ %count.029.i.i, %if.then.i.i.i ]
  %call.i123.i = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %59, ptr noundef nonnull %hctx_list.i.i, i32 noundef %count.026.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hctx_list.i.i) #8
  %or106.i = or i1 %dispatched.0.off0.i, %call.i123.i
  %83 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %rq_list.i, align 4
  %cmp.i124.not.i = icmp eq ptr %84, %rq_list.i
  br i1 %cmp.i124.not.i, label %blk_mq_dispatch_hctx_list.exit.i.__blk_mq_do_dispatch_sched.exit_crit_edge, label %blk_mq_dispatch_hctx_list.exit.i.do.body37.i_crit_edge

blk_mq_dispatch_hctx_list.exit.i.do.body37.i_crit_edge: ; preds = %blk_mq_dispatch_hctx_list.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body37.i

blk_mq_dispatch_hctx_list.exit.i.__blk_mq_do_dispatch_sched.exit_crit_edge: ; preds = %blk_mq_dispatch_hctx_list.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__blk_mq_do_dispatch_sched.exit

if.else46.i:                                      ; preds = %if.else34.i.if.else46.i_crit_edge, %do.end.thread169.i.if.else46.i_crit_edge, %do.end.thread.i.if.else46.i_crit_edge
  %count.1141147153.i = phi i32 [ %inc.i, %do.end.thread.i.if.else46.i_crit_edge ], [ %count.0.i, %if.else34.i.if.else46.i_crit_edge ], [ %umax.i, %do.end.thread169.i.if.else46.i_crit_edge ]
  %busy.1.off0140149152.i = phi i1 [ false, %do.end.thread.i.if.else46.i_crit_edge ], [ %busy.1.off0140.i, %if.else34.i.if.else46.i_crit_edge ], [ false, %do.end.thread169.i.if.else46.i_crit_edge ]
  %call47.i = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %hctx, ptr noundef nonnull %rq_list.i, i32 noundef %count.1141147153.i) #8
  br label %__blk_mq_do_dispatch_sched.exit

__blk_mq_do_dispatch_sched.exit:                  ; preds = %if.else46.i, %blk_mq_dispatch_hctx_list.exit.i.__blk_mq_do_dispatch_sched.exit_crit_edge, %if.then32.i, %if.then30.i.__blk_mq_do_dispatch_sched.exit_crit_edge
  %busy.1.off0140148.i = phi i1 [ %busy.1.off0140149152.i, %if.else46.i ], [ %busy.1.off0140.i, %if.then32.i ], [ %busy.1.off0140.i, %if.then30.i.__blk_mq_do_dispatch_sched.exit_crit_edge ], [ %busy.1.off0140149151.i, %blk_mq_dispatch_hctx_list.exit.i.__blk_mq_do_dispatch_sched.exit_crit_edge ]
  %dispatched.1.off0.i = phi i1 [ %call47.i, %if.else46.i ], [ false, %if.then32.i ], [ false, %if.then30.i.__blk_mq_do_dispatch_sched.exit_crit_edge ], [ %or106.i, %blk_mq_dispatch_hctx_list.exit.i.__blk_mq_do_dispatch_sched.exit_crit_edge ]
  %lnot.ext.i = zext i1 %dispatched.1.off0.i to i32
  %retval.0.i = select i1 %busy.1.off0140148.i, i32 -11, i32 %lnot.ext.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rq_list.i) #8
  %cmp = icmp eq i32 %retval.0.i, 1
  br i1 %cmp, label %__blk_mq_do_dispatch_sched.exit.do.body_crit_edge, label %do.end

__blk_mq_do_dispatch_sched.exit.do.body_crit_edge: ; preds = %__blk_mq_do_dispatch_sched.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %__blk_mq_do_dispatch_sched.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blk_mq_do_dispatch_ctx(ptr noundef %hctx) unnamed_addr #0 align 64 {
entry:
  %rq_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rq_list) #8
  %2 = getelementptr inbounds %struct.list_head, ptr %rq_list, i32 0, i32 1
  %3 = ptrtoint ptr %rq_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rq_list, ptr %rq_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rq_list, ptr %2, align 4
  %dispatch_from = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 11
  %5 = ptrtoint ptr %dispatch_from to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %dispatch_from, align 4
  %dispatch = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 1, i32 1
  %ctx_map = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 10
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 5
  %type.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 13
  %nr_ctx.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 14
  %ctxs.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 15
  br label %do.body1

do.body1:                                         ; preds = %do.cond13.do.body1_crit_edge, %entry
  %ctx.0 = phi ptr [ %6, %entry ], [ %43, %do.cond13.do.body1_crit_edge ]
  %7 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dispatch, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %cmp.i.not.i = icmp eq ptr %8, %dispatch
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %do.body1.do.body20_crit_edge

do.body1.do.body20_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

list_empty_careful.exit:                          ; preds = %do.body1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %10, %dispatch
  br i1 %cmp.i.not, label %if.end, label %list_empty_careful.exit.do.body20_crit_edge

list_empty_careful.exit.do.body20_crit_edge:      ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.end:                                           ; preds = %list_empty_careful.exit
  %call2 = call zeroext i1 @sbitmap_any_bit_set(ptr noundef %ctx_map) #8
  br i1 %call2, label %if.end4, label %if.end.do.body20_crit_edge

if.end.do.body20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mq_ops.i, align 8
  %get_budget.i = getelementptr inbounds %struct.blk_mq_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %get_budget.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_budget.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end4.if.end7_crit_edge, label %blk_mq_get_dispatch_budget.exit

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

blk_mq_get_dispatch_budget.exit:                  ; preds = %if.end4
  %call.i = call i32 %14(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %blk_mq_get_dispatch_budget.exit.do.body20_crit_edge, label %blk_mq_get_dispatch_budget.exit.if.end7_crit_edge

blk_mq_get_dispatch_budget.exit.if.end7_crit_edge: ; preds = %blk_mq_get_dispatch_budget.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

blk_mq_get_dispatch_budget.exit.do.body20_crit_edge: ; preds = %blk_mq_get_dispatch_budget.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.end7:                                          ; preds = %blk_mq_get_dispatch_budget.exit.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %retval.0.i55 = phi i32 [ %call.i, %blk_mq_get_dispatch_budget.exit.if.end7_crit_edge ], [ 0, %if.end4.if.end7_crit_edge ]
  %call8 = call ptr @blk_mq_dequeue_from_ctx(ptr noundef %hctx, ptr noundef %ctx.0) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %15 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mq_ops.i, align 8
  %put_budget.i = getelementptr inbounds %struct.blk_mq_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %put_budget.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %put_budget.i, align 4
  %tobool.not.i47 = icmp eq ptr %18, null
  br i1 %tobool.not.i47, label %if.then10.blk_mq_put_dispatch_budget.exit_crit_edge, label %if.then.i48

if.then10.blk_mq_put_dispatch_budget.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_put_dispatch_budget.exit

if.then.i48:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  call void %18(ptr noundef %1, i32 noundef %retval.0.i55) #8
  br label %blk_mq_put_dispatch_budget.exit

blk_mq_put_dispatch_budget.exit:                  ; preds = %if.then.i48, %if.then10.blk_mq_put_dispatch_budget.exit_crit_edge
  call void @blk_mq_delay_run_hw_queues(ptr noundef %1, i32 noundef 3) #8
  br label %do.body20

if.end11:                                         ; preds = %if.end7
  %19 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call8, align 8
  %mq_ops.i49 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %mq_ops.i49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mq_ops.i49, align 8
  %set_rq_budget_token.i = getelementptr inbounds %struct.blk_mq_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %set_rq_budget_token.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_rq_budget_token.i, align 4
  %tobool.not.i50 = icmp eq ptr %24, null
  br i1 %tobool.not.i50, label %if.end11.blk_mq_set_rq_budget_token.exit_crit_edge, label %if.then1.i

if.end11.blk_mq_set_rq_budget_token.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %blk_mq_set_rq_budget_token.exit

if.then1.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void %24(ptr noundef nonnull %call8, i32 noundef %retval.0.i55) #8
  br label %blk_mq_set_rq_budget_token.exit

blk_mq_set_rq_budget_token.exit:                  ; preds = %if.then1.i, %if.end11.blk_mq_set_rq_budget_token.exit_crit_edge
  %25 = getelementptr inbounds %struct.request, ptr %call8, i32 0, i32 12
  %26 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rq_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %25, ptr noundef nonnull %rq_list, ptr noundef %27) #8
  br i1 %call.i.i, label %if.end.i.i, label %blk_mq_set_rq_budget_token.exit.do.cond13_crit_edge

blk_mq_set_rq_budget_token.exit.do.cond13_crit_edge: ; preds = %blk_mq_set_rq_budget_token.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond13

if.end.i.i:                                       ; preds = %blk_mq_set_rq_budget_token.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %25, align 4
  %prev3.i.i = getelementptr inbounds %struct.request, ptr %call8, i32 0, i32 12, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rq_list, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %rq_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %25, ptr %rq_list, align 4
  br label %do.cond13

do.cond13:                                        ; preds = %if.end.i.i, %blk_mq_set_rq_budget_token.exit.do.cond13_crit_edge
  %mq_ctx = getelementptr inbounds %struct.request, ptr %call8, i32 0, i32 1
  %32 = ptrtoint ptr %mq_ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mq_ctx, align 4
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %type.i, align 4
  %idxprom.i = zext i16 %35 to i32
  %arrayidx.i = getelementptr %struct.blk_mq_ctx, ptr %33, i32 0, i32 2, i32 %idxprom.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i, align 2
  %inc.i = add i16 %37, 1
  %38 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nr_ctx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %39)
  %cmp.i51 = icmp eq i16 %inc.i, %39
  %spec.store.select.i = select i1 %cmp.i51, i16 0, i16 %inc.i
  %40 = ptrtoint ptr %ctxs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctxs.i, align 8
  %idxprom3.i = zext i16 %spec.store.select.i to i32
  %arrayidx4.i = getelementptr ptr, ptr %41, i32 %idxprom3.i
  %42 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx4.i, align 4
  %mq_hctx = getelementptr inbounds %struct.request, ptr %call8, i32 0, i32 2
  %44 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mq_hctx, align 8
  %call14 = call zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %45, ptr noundef nonnull %rq_list, i32 noundef 1) #8
  br i1 %call14, label %do.cond13.do.body1_crit_edge, label %do.cond13.do.body20_crit_edge

do.cond13.do.body20_crit_edge:                    ; preds = %do.cond13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.cond13.do.body1_crit_edge:                     ; preds = %do.cond13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1

do.body20:                                        ; preds = %do.cond13.do.body20_crit_edge, %blk_mq_put_dispatch_budget.exit, %blk_mq_get_dispatch_budget.exit.do.body20_crit_edge, %if.end.do.body20_crit_edge, %list_empty_careful.exit.do.body20_crit_edge, %do.body1.do.body20_crit_edge
  %ret.162 = phi i32 [ 0, %blk_mq_put_dispatch_budget.exit ], [ -11, %do.body1.do.body20_crit_edge ], [ -11, %list_empty_careful.exit.do.body20_crit_edge ], [ 0, %if.end.do.body20_crit_edge ], [ 0, %blk_mq_get_dispatch_budget.exit.do.body20_crit_edge ], [ 0, %do.cond13.do.body20_crit_edge ]
  %ctx.161 = phi ptr [ %ctx.0, %blk_mq_put_dispatch_budget.exit ], [ %ctx.0, %do.body1.do.body20_crit_edge ], [ %ctx.0, %list_empty_careful.exit.do.body20_crit_edge ], [ %ctx.0, %if.end.do.body20_crit_edge ], [ %ctx.0, %blk_mq_get_dispatch_budget.exit.do.body20_crit_edge ], [ %43, %do.cond13.do.body20_crit_edge ]
  %46 = ptrtoint ptr %dispatch_from to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %ctx.161, ptr %dispatch_from, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rq_list) #8
  ret i32 %ret.162
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_flush_busy_ctxs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_delay_run_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sched_rq_cmp(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mq_hctx = getelementptr i8, ptr %a, i32 -48
  %0 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq_hctx, align 8
  %mq_hctx4 = getelementptr i8, ptr %b, i32 -48
  %2 = ptrtoint ptr %mq_hctx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq_hctx4, align 8
  %cmp = icmp ugt ptr %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_mq_get_driver_tag(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sbitmap_any_bit_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_dequeue_from_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_map_and_rqs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tag_update_sched_shared_tags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_rq_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !15}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_blk_mq_sched_mark_restart_hctx, !1, !"__ksymtab_blk_mq_sched_mark_restart_hctx", i1 false, i1 false}
!1 = !{!"../block/blk-mq-sched.c", i32 32, i32 1}
!2 = !{ptr @__ksymtab_blk_mq_sched_try_insert_merge, !3, !"__ksymtab_blk_mq_sched_try_insert_merge", i1 false, i1 false}
!3 = !{!"../block/blk-mq-sched.c", i32 379, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/blk-mq-sched.c", i32 409, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
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
!26 = !{i64 2155226254}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2148794142}
!29 = !{i64 2149371869}
!30 = !{i64 617881, i64 617942}
!31 = !{i64 620613}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 620898}
!34 = !{i64 2148225400, i64 2148225426, i64 2148225455, i64 2148225489, i64 2148225520, i64 2148225543}
!35 = !{i64 2149372135}
!36 = !{i64 2148313852}
!37 = !{i64 2148228585, i64 2148228617, i64 2148228646, i64 2148228680, i64 2148228711, i64 2148228734}
!38 = !{i64 2148314081}
