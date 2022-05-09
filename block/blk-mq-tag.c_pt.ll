; ModuleID = '/llk/IR_all_yes/block/blk-mq-tag.c_pt.bc'
source_filename = "../block/blk-mq-tag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+blk_mq_tagset_busy_iter\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_tagset_busy_iter\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_tagset_busy_iter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_tagset_busy_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_tagset_busy_iter\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_tagset_busy_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_mq_tagset_wait_completed_request\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_tagset_wait_completed_request\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_tagset_wait_completed_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_tagset_wait_completed_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_tagset_wait_completed_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_tagset_wait_completed_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_mq_unique_tag\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_unique_tag\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_unique_tag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_unique_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_unique_tag\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_unique_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blk_mq_hw_ctx = type { %struct.anon, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.blk_mq_alloc_data = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.sbq_wait = type { ptr, %struct.wait_queue_entry }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [72 x i8] }
%struct.blk_mq_ctx = type { %struct.anon.3, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [88 x i8] }
%struct.anon.3 = type { %struct.spinlock, [3 x %struct.list_head], [60 x i8] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.71, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.78, %union.anon.79, %union.anon.80, %union.anon.83, ptr, ptr }
%union.anon.71 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%union.anon.79 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, %struct.list_head, ptr }
%union.anon.83 = type { i64, [8 x i8] }
%struct.sbitmap_word = type { i32, [124 x i8], i32, [124 x i8], i32, [124 x i8] }

@blk_mq_get_tag.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"block/blk-mq-tag.c\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_blk_mq_tagset_busy_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_tagset_busy_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_tagset_busy_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_tagset_busy_iter to i32), ptr @__kstrtab_blk_mq_tagset_busy_iter, ptr @__kstrtabns_blk_mq_tagset_busy_iter }, section "___ksymtab+blk_mq_tagset_busy_iter", align 4
@__kstrtab_blk_mq_tagset_wait_completed_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_tagset_wait_completed_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_tagset_wait_completed_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_tagset_wait_completed_request to i32), ptr @__kstrtab_blk_mq_tagset_wait_completed_request, ptr @__kstrtabns_blk_mq_tagset_wait_completed_request }, section "___ksymtab+blk_mq_tagset_wait_completed_request", align 4
@blk_mq_init_tags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013blk-mq: tag depth too large\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"blk_mq_init_tags\00", [47 x i8] zeroinitializer }, align 32
@blk_mq_init_tags._entry_ptr = internal global ptr @blk_mq_init_tags._entry, section ".printk_index", align 4
@blk_mq_init_tags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tags->lock\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_blk_mq_unique_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_unique_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_unique_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_unique_tag to i32), ptr @__kstrtab_blk_mq_unique_tag, ptr @__kstrtabns_blk_mq_unique_tag }, section "___ksymtab+blk_mq_unique_tag", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 141, i32 4 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 574, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private constant [22 x i8] c"../block/blk-mq-tag.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 584, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 723, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_blk_mq_tagset_busy_iter, ptr @__ksymtab_blk_mq_tagset_wait_completed_request, ptr @__ksymtab_blk_mq_unique_tag, ptr @blk_mq_init_tags._entry, ptr @blk_mq_init_tags._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @blk_mq_init_tags.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_init_tags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_mq_init_tags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__blk_mq_tag_busy(ptr noundef %hctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 16
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %queue_flags, align 4
  %6 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.cleanup17_crit_edge

if.then.cleanup17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

lor.lhs.false:                                    ; preds = %if.then
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 28, ptr noundef %queue_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.cleanup17_crit_edge

lor.lhs.false.cleanup17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.else:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 2
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %if.else.cleanup17_crit_edge

if.else.cleanup17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

lor.lhs.false8:                                   ; preds = %if.else
  %call10 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false8.if.end14_crit_edge, label %lor.lhs.false8.cleanup17_crit_edge

lor.lhs.false8.cleanup17_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

lor.lhs.false8.if.end14_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false8.if.end14_crit_edge, %lor.lhs.false.if.end14_crit_edge
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 19
  %10 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tags, align 16
  %active_queues = getelementptr inbounds %struct.blk_mq_tags, ptr %11, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %active_queues, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_queues, ptr %active_queues, i32 1, ptr elementtype(i32) %active_queues) #11, !srcloc !37
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end14.cleanup17_crit_edge, label %if.end.i

if.end14.cleanup17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tags, align 16
  %bitmap_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %14, i32 0, i32 3
  tail call void @sbitmap_queue_recalculate_wake_batch(ptr noundef %bitmap_tags.i, i32 noundef %asmresult.i.i.i.i) #11
  %breserved_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %14, i32 0, i32 4
  tail call void @sbitmap_queue_recalculate_wake_batch(ptr noundef %breserved_tags.i, i32 noundef %asmresult.i.i.i.i) #11
  br label %cleanup17

cleanup17:                                        ; preds = %if.end.i, %if.end14.cleanup17_crit_edge, %lor.lhs.false8.cleanup17_crit_edge, %if.else.cleanup17_crit_edge, %lor.lhs.false.cleanup17_crit_edge, %if.then.cleanup17_crit_edge
  ret i1 true
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_tag_wakeup_all(ptr noundef %tags, i1 noundef zeroext %include_reserve) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 3
  tail call void @sbitmap_queue_wake_all(ptr noundef %bitmap_tags) #11
  br i1 %include_reserve, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 4
  tail call void @sbitmap_queue_wake_all(ptr noundef %breserved_tags) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_wake_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__blk_mq_tag_idle(ptr noundef %hctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tags1 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 19
  %0 = ptrtoint ptr %tags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tags1, align 16
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 16
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 11
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 28, ptr noundef %queue_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.cleanup10_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

if.else:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.anon, ptr %hctx, i32 0, i32 2
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.cleanup10_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.else.cleanup10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %active_queues = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_queues, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %active_queues, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_queues, ptr %active_queues, i32 1, ptr elementtype(i32) %active_queues) #11, !srcloc !40
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i, label %if.end8.blk_mq_update_wake_batch.exit_crit_edge, label %if.end.i

if.end8.blk_mq_update_wake_batch.exit_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_mq_update_wake_batch.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %bitmap_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 3
  tail call void @sbitmap_queue_recalculate_wake_batch(ptr noundef %bitmap_tags.i, i32 noundef %asmresult.i.i.i.i) #11
  %breserved_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 4
  tail call void @sbitmap_queue_recalculate_wake_batch(ptr noundef %breserved_tags.i, i32 noundef %asmresult.i.i.i.i) #11
  br label %blk_mq_update_wake_batch.exit

blk_mq_update_wake_batch.exit:                    ; preds = %if.end.i, %if.end8.blk_mq_update_wake_batch.exit_crit_edge
  %bitmap_tags.i19 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 3
  tail call void @sbitmap_queue_wake_all(ptr noundef %bitmap_tags.i19) #11
  br label %cleanup10

cleanup10:                                        ; preds = %blk_mq_update_wake_batch.exit, %if.else.cleanup10_crit_edge, %if.then.cleanup10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_get_tags(ptr nocapture noundef readonly %data, i32 noundef %nr_tags, ptr noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags.i = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags.i, align 4
  %and.i = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %hctx.i = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %hctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hctx.i, align 4
  %sched_tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %3, i32 0, i32 20
  %tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %3, i32 0, i32 19
  %retval.0.in.i = select i1 %tobool.not.i, ptr %tags.i, ptr %sched_tags.i
  %4 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i, i32 0, i32 3
  %shallow_depth = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %shallow_depth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shallow_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %flags3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags3, align 16
  %and4 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @__sbitmap_queue_get_batch(ptr noundef %bitmap_tags, i32 noundef %nr_tags, ptr noundef %offset) #11
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %nr_reserved_tags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_reserved_tags, align 4
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add = add i32 %14, %12
  store i32 %add, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get_batch(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_get_tag(ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.sbq_wait, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags.i = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags.i, align 4
  %and.i = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %hctx.i = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %hctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hctx.i, align 4
  %sched_tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %3, i32 0, i32 20
  %tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %3, i32 0, i32 19
  %retval.0.in.i = select i1 %tobool.not.i, ptr %tags.i, ptr %sched_tags.i
  %4 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wait) #11
  %5 = getelementptr inbounds %struct.sbq_wait, ptr %wait, i32 0, i32 1
  %6 = getelementptr inbounds %struct.sbq_wait, ptr %wait, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.sbq_wait, ptr %wait, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds %struct.sbq_wait, ptr %wait, i32 0, i32 1, i32 3
  %9 = getelementptr inbounds %struct.sbq_wait, ptr %wait, i32 0, i32 1, i32 3, i32 1
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %wait, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %5, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i159 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i159 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %6, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @autoremove_wake_function, ptr %7, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %8, ptr %8, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %8, ptr %9, align 4
  %flags8 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags8, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %nr_reserved_tags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_reserved_tags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool9.not = icmp eq i32 %23, 0
  br i1 %tobool9.not, label %land.end, label %if.end53, !prof !42

land.end:                                         ; preds = %if.then
  %.b158 = load i1, ptr @blk_mq_get_tag.__already_done, align 1
  br i1 %.b158, label %land.end.cleanup109_crit_edge, label %if.then24, !prof !43

land.end.cleanup109_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup109

if.then24:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @blk_mq_get_tag.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #11
  br label %cleanup109

if.end53:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i, i32 0, i32 4
  br label %if.end55

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i, i32 0, i32 3
  %nr_reserved_tags54 = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %nr_reserved_tags54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_reserved_tags54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.end53
  %bt.0 = phi ptr [ %breserved_tags, %if.end53 ], [ %bitmap_tags, %if.else ]
  %tag_offset.0 = phi i32 [ 0, %if.end53 ], [ %25, %if.else ]
  %call56 = call fastcc i32 @__blk_mq_get_tag(ptr noundef %data, ptr noundef %bt.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call56)
  %cmp.not = icmp eq i32 %call56, -1
  br i1 %cmp.not, label %if.end58, label %if.end55.found_tag_crit_edge

if.end55.found_tag_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %found_tag

if.end58:                                         ; preds = %if.end55
  %26 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags8, align 4
  %and60 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end58.cleanup109_crit_edge

if.end58.cleanup109_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup109

if.end63:                                         ; preds = %if.end58
  %28 = ptrtoint ptr %hctx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hctx.i, align 4
  %tobool.not.i160 = icmp eq ptr %29, null
  br i1 %tobool.not.i160, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %ws.i = getelementptr inbounds %struct.sbitmap_queue, ptr %bt.0, i32 0, i32 3
  %30 = ptrtoint ptr %ws.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ws.i, align 4
  br label %bt_wait_ptr.exit

if.end.i:                                         ; preds = %if.end63
  %wait_index.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %29, i32 0, i32 18
  %ws1.i.i = getelementptr inbounds %struct.sbitmap_queue, ptr %bt.0, i32 0, i32 3
  %32 = ptrtoint ptr %ws1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ws1.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %wait_index.i, i32 noundef 4) #11
  %34 = ptrtoint ptr %wait_index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %wait_index.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %wait_index.i, i32 noundef 4) #11
  %36 = ptrtoint ptr %wait_index.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %wait_index.i, align 4
  %add.i.i.i.i = add i32 %37, 1
  %and.i.i.i.i = and i32 %add.i.i.i.i, 7
  %call.i.i5.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wait_index.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !44
  call void @llvm.prefetch.p0(ptr %wait_index.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.end.i
  %38 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %wait_index.i, ptr %wait_index.i, i32 %37, i32 %and.i.i.i.i, ptr elementtype(i32) %wait_index.i) #11, !srcloc !45
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %sbq_wait_ptr.exit.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

sbq_wait_ptr.exit.i:                              ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.sbq_wait_state, ptr %33, i32 %35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !46
  br label %bt_wait_ptr.exit

bt_wait_ptr.exit:                                 ; preds = %sbq_wait_ptr.exit.i, %if.then.i
  %retval.0.i161 = phi ptr [ %arrayidx.i.i, %sbq_wait_ptr.exit.i ], [ %31, %if.then.i ]
  %39 = ptrtoint ptr %hctx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hctx.i, align 4
  call void @blk_mq_run_hw_queue(ptr noundef %40, i1 noundef zeroext false) #11
  %call67199 = call fastcc i32 @__blk_mq_get_tag(ptr noundef %data, ptr noundef %bt.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call67199)
  %cmp68.not200 = icmp eq i32 %call67199, -1
  br i1 %cmp68.not200, label %if.end70.lr.ph, label %bt_wait_ptr.exit.do.end95_crit_edge

bt_wait_ptr.exit.do.end95_crit_edge:              ; preds = %bt_wait_ptr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end95

if.end70.lr.ph:                                   ; preds = %bt_wait_ptr.exit
  %ctx = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 7
  %cmd_flags = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 3
  call void @sbitmap_prepare_to_wait(ptr noundef %bt.0, ptr noundef %retval.0.i161, ptr noundef nonnull %wait, i32 noundef 2) #11
  %call71211 = call fastcc i32 @__blk_mq_get_tag(ptr noundef %data, ptr noundef %bt.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call71211)
  %cmp72.not212 = icmp eq i32 %call71211, -1
  br i1 %cmp72.not212, label %if.end70.lr.ph.if.end74_crit_edge, label %if.end70.lr.ph.do.end95_crit_edge

if.end70.lr.ph.do.end95_crit_edge:                ; preds = %if.end70.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end95

if.end70.lr.ph.if.end74_crit_edge:                ; preds = %if.end70.lr.ph
  br label %if.end74

if.end70:                                         ; preds = %cleanup
  call void @sbitmap_prepare_to_wait(ptr noundef %bt.2, ptr noundef %ws.1, ptr noundef nonnull %wait, i32 noundef 2) #11
  %call71 = call fastcc i32 @__blk_mq_get_tag(ptr noundef %data, ptr noundef %bt.2)
  %cmp72.not = icmp eq i32 %call71, -1
  br i1 %cmp72.not, label %if.end70.if.end74_crit_edge, label %if.end70.do.end95_crit_edge

if.end70.do.end95_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end95

if.end70.if.end74_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.end74:                                         ; preds = %if.end70.if.end74_crit_edge, %if.end70.lr.ph.if.end74_crit_edge
  %bt.1201214 = phi ptr [ %bt.2, %if.end70.if.end74_crit_edge ], [ %bt.0, %if.end70.lr.ph.if.end74_crit_edge ]
  %ws.0202213 = phi ptr [ %ws.1, %if.end70.if.end74_crit_edge ], [ %retval.0.i161, %if.end70.lr.ph.if.end74_crit_edge ]
  call void @io_schedule() #11
  call void @sbitmap_finish_wait(ptr noundef %bt.1201214, ptr noundef %ws.0202213, ptr noundef nonnull %wait) #11
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %43 = call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu.i, align 4
  %queue_ctx.i.i = getelementptr inbounds %struct.request_queue, ptr %42, i32 0, i32 6
  %47 = ptrtoint ptr %queue_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %queue_ctx.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %arrayidx.i.i162 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %50 = ptrtoint ptr %arrayidx.i.i162 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i162, align 4
  %add.i.i = add i32 %51, %49
  %52 = inttoptr i32 %add.i.i to ptr
  %53 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %ctx, align 4
  %54 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmd_flags, align 4
  %56 = and i32 %55, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i = icmp eq i32 %56, 0
  %and1.i.i = and i32 %55, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.i = icmp eq i32 %and1.i.i, 0
  %spec.select.i.i = zext i1 %cmp.i.i to i32
  %type.0.i.i = select i1 %tobool.not.i.i, i32 %spec.select.i.i, i32 2
  %arrayidx.i = getelementptr %struct.blk_mq_ctx, ptr %52, i32 0, i32 3, i32 %type.0.i.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %59 = ptrtoint ptr %hctx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %hctx.i, align 4
  %60 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rq_flags.i, align 4
  %and.i164 = and i32 %61, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool.not.i165 = icmp eq i32 %and.i164, 0
  %sched_tags.i167 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %58, i32 0, i32 20
  %tags.i168 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %58, i32 0, i32 19
  %retval.0.in.i169 = select i1 %tobool.not.i165, ptr %tags.i168, ptr %sched_tags.i167
  %62 = ptrtoint ptr %retval.0.in.i169 to i32
  call void @__asan_load4_noabort(i32 %62)
  %retval.0.i170 = load ptr, ptr %retval.0.in.i169, align 4
  %63 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags8, align 4
  %and82 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %breserved_tags85 = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i170, i32 0, i32 4
  %bitmap_tags87 = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i170, i32 0, i32 3
  %bt.2 = select i1 %tobool83.not, ptr %bitmap_tags87, ptr %breserved_tags85
  %cmp89.not = icmp eq ptr %bt.2, %bt.1201214
  br i1 %cmp89.not, label %if.end74.if.end91_crit_edge, label %if.then90

if.end74.if.end91_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then90:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  call void @sbitmap_queue_wake_up(ptr noundef %bt.1201214) #11
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end74.if.end91_crit_edge
  %65 = ptrtoint ptr %hctx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hctx.i, align 4
  %tobool.not.i171 = icmp eq ptr %66, null
  br i1 %tobool.not.i171, label %if.then.i173, label %if.end.i181

if.then.i173:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %ws.i172 = getelementptr inbounds %struct.sbitmap_queue, ptr %bt.2, i32 0, i32 3
  %67 = ptrtoint ptr %ws.i172 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ws.i172, align 4
  br label %cleanup

if.end.i181:                                      ; preds = %if.end91
  %wait_index.i174 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %66, i32 0, i32 18
  %ws1.i.i175 = getelementptr inbounds %struct.sbitmap_queue, ptr %bt.2, i32 0, i32 3
  %69 = ptrtoint ptr %ws1.i.i175 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ws1.i.i175, align 4
  %call.i.i.i.i176 = call zeroext i1 @__kasan_check_read(ptr noundef %wait_index.i174, i32 noundef 4) #11
  %71 = ptrtoint ptr %wait_index.i174 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %wait_index.i174, align 4
  %call.i.i.i.i.i177 = call zeroext i1 @__kasan_check_read(ptr noundef %wait_index.i174, i32 noundef 4) #11
  %73 = ptrtoint ptr %wait_index.i174 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %wait_index.i174, align 4
  %add.i.i.i.i178 = add i32 %74, 1
  %and.i.i.i.i179 = and i32 %add.i.i.i.i178, 7
  %call.i.i5.i.i.i180 = call zeroext i1 @__kasan_check_write(ptr noundef %wait_index.i174, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !44
  call void @llvm.prefetch.p0(ptr %wait_index.i174, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i184

do.body.i.i.i.i.i.i184:                           ; preds = %do.body.i.i.i.i.i.i184.do.body.i.i.i.i.i.i184_crit_edge, %if.end.i181
  %75 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %wait_index.i174, ptr %wait_index.i174, i32 %74, i32 %and.i.i.i.i179, ptr elementtype(i32) %wait_index.i174) #11, !srcloc !45
  %asmresult.i.i.i.i.i.i182 = extractvalue { i32, i32 } %75, 0
  %tobool.not.i.i.i.i.i.i183 = icmp eq i32 %asmresult.i.i.i.i.i.i182, 0
  br i1 %tobool.not.i.i.i.i.i.i183, label %sbq_wait_ptr.exit.i186, label %do.body.i.i.i.i.i.i184.do.body.i.i.i.i.i.i184_crit_edge

do.body.i.i.i.i.i.i184.do.body.i.i.i.i.i.i184_crit_edge: ; preds = %do.body.i.i.i.i.i.i184
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i184

sbq_wait_ptr.exit.i186:                           ; preds = %do.body.i.i.i.i.i.i184
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i185 = getelementptr %struct.sbq_wait_state, ptr %70, i32 %72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !46
  br label %cleanup

cleanup:                                          ; preds = %sbq_wait_ptr.exit.i186, %if.then.i173
  %ws.1 = phi ptr [ %arrayidx.i.i185, %sbq_wait_ptr.exit.i186 ], [ %68, %if.then.i173 ]
  %76 = ptrtoint ptr %hctx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hctx.i, align 4
  call void @blk_mq_run_hw_queue(ptr noundef %77, i1 noundef zeroext false) #11
  %call67 = call fastcc i32 @__blk_mq_get_tag(ptr noundef %data, ptr noundef %bt.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, -1
  br i1 %cmp68.not, label %if.end70, label %cleanup.do.end95_crit_edge

cleanup.do.end95_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end95

do.end95:                                         ; preds = %cleanup.do.end95_crit_edge, %if.end70.do.end95_crit_edge, %if.end70.lr.ph.do.end95_crit_edge, %bt_wait_ptr.exit.do.end95_crit_edge
  %bt.1.lcssa = phi ptr [ %bt.0, %bt_wait_ptr.exit.do.end95_crit_edge ], [ %bt.0, %if.end70.lr.ph.do.end95_crit_edge ], [ %bt.2, %if.end70.do.end95_crit_edge ], [ %bt.2, %cleanup.do.end95_crit_edge ]
  %ws.0.lcssa = phi ptr [ %retval.0.i161, %bt_wait_ptr.exit.do.end95_crit_edge ], [ %retval.0.i161, %if.end70.lr.ph.do.end95_crit_edge ], [ %ws.1, %if.end70.do.end95_crit_edge ], [ %ws.1, %cleanup.do.end95_crit_edge ]
  %tags.0.lcssa = phi ptr [ %retval.0.i, %bt_wait_ptr.exit.do.end95_crit_edge ], [ %retval.0.i, %if.end70.lr.ph.do.end95_crit_edge ], [ %retval.0.i170, %if.end70.do.end95_crit_edge ], [ %retval.0.i170, %cleanup.do.end95_crit_edge ]
  %tag.0.ph = phi i32 [ %call67199, %bt_wait_ptr.exit.do.end95_crit_edge ], [ %call71211, %if.end70.lr.ph.do.end95_crit_edge ], [ %call71, %if.end70.do.end95_crit_edge ], [ %call67, %cleanup.do.end95_crit_edge ]
  call void @sbitmap_finish_wait(ptr noundef %bt.1.lcssa, ptr noundef %ws.0.lcssa, ptr noundef nonnull %wait) #11
  br label %found_tag

found_tag:                                        ; preds = %do.end95, %if.end55.found_tag_crit_edge
  %tag.1 = phi i32 [ %call56, %if.end55.found_tag_crit_edge ], [ %tag.0.ph, %do.end95 ]
  %tags.2 = phi ptr [ %retval.0.i, %if.end55.found_tag_crit_edge ], [ %tags.0.lcssa, %do.end95 ]
  %78 = ptrtoint ptr %hctx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hctx.i, align 4
  %state = getelementptr inbounds %struct.anon, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %state, align 4
  %82 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool98.not = icmp eq i32 %82, 0
  br i1 %tobool98.not, label %if.end107, label %if.then105, !prof !43

if.then105:                                       ; preds = %found_tag
  call void @__sanitizer_cov_trace_pc() #13
  %ctx106 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 7
  %83 = ptrtoint ptr %ctx106 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctx106, align 4
  %add = add i32 %tag.1, %tag_offset.0
  call void @blk_mq_put_tag(ptr noundef %tags.2, ptr noundef %84, i32 noundef %add)
  br label %cleanup109

if.end107:                                        ; preds = %found_tag
  call void @__sanitizer_cov_trace_pc() #13
  %add108 = add i32 %tag.1, %tag_offset.0
  br label %cleanup109

cleanup109:                                       ; preds = %if.end107, %if.then105, %if.end58.cleanup109_crit_edge, %if.then24, %land.end.cleanup109_crit_edge
  %retval.0 = phi i32 [ -1, %if.then105 ], [ %add108, %if.end107 ], [ -1, %if.then24 ], [ -1, %land.end.cleanup109_crit_edge ], [ -1, %if.end58.cleanup109_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wait) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__blk_mq_get_tag(ptr nocapture noundef readonly %data, ptr noundef %bt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %hctx = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %hctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hctx, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true2.if.end_crit_edge, label %lor.lhs.false.i

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %land.lhs.true2
  %flags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 16
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %and.i.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  %queue.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue.i, align 8
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %queue_flags.i, align 4
  %16 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not.i = icmp eq i32 %16, 0
  br i1 %tobool8.not.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.if.end15.i_crit_edge

if.then6.i.if.end15.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.i:                                        ; preds = %if.end4.i
  %state.i = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not.i = icmp eq i32 %19, 0
  br i1 %tobool12.not.i, label %if.else.i.if.end_crit_edge, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end15.i:                                       ; preds = %if.else.i.if.end15.i_crit_edge, %if.then6.i.if.end15.i_crit_edge
  %tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 19
  %20 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tags.i, align 16
  %active_queues.i = getelementptr inbounds %struct.blk_mq_tags, ptr %21, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_queues.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %active_queues.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %active_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not.i = icmp eq i32 %23, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end_crit_edge, label %if.end19.i

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end19.i:                                       ; preds = %if.end15.i
  %24 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bt, align 4
  %add.i = add i32 %23, -1
  %sub.i = add i32 %add.i, %25
  %div.i = udiv i32 %sub.i, %23
  %26 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 4) #11
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 16
  %and.i.i.i = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %queue.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 7
  %29 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue.i.i, align 8
  %nr_active_requests_shared_tags.i.i = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 31
  br label %hctx_may_queue.exit

if.end.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %nr_active.i.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 25
  br label %hctx_may_queue.exit

hctx_may_queue.exit:                              ; preds = %if.end.i.i, %if.then.i.i
  %nr_active.sink.i.i = phi ptr [ %nr_active.i.i, %if.end.i.i ], [ %nr_active_requests_shared_tags.i.i, %if.then.i.i ]
  %call.i.i5.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_active.sink.i.i, i32 noundef 4) #11
  %31 = ptrtoint ptr %nr_active.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %retval.0.i.i = load volatile i32, ptr %nr_active.sink.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %26)
  %cmp24.i = icmp ult i32 %retval.0.i.i, %26
  br i1 %cmp24.i, label %hctx_may_queue.exit.if.end_crit_edge, label %hctx_may_queue.exit.return_crit_edge

hctx_may_queue.exit.return_crit_edge:             ; preds = %hctx_may_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

hctx_may_queue.exit.if.end_crit_edge:             ; preds = %hctx_may_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %hctx_may_queue.exit.if.end_crit_edge, %if.end15.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %if.then6.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %shallow_depth = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 2
  %32 = ptrtoint ptr %shallow_depth to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shallow_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool3.not = icmp eq i32 %33, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @__sbitmap_queue_get_shallow(ptr noundef %bt, i32 noundef %33) #11
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @__sbitmap_queue_get(ptr noundef %bt) #11
  br label %return

return:                                           ; preds = %if.else, %if.then4, %hctx_may_queue.exit.return_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ %call7, %if.else ], [ -1, %hctx_may_queue.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_prepare_to_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_finish_wait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_put_tag(ptr noundef %tags, ptr nocapture noundef readonly %ctx, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_reserved_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 1
  %0 = ptrtoint ptr %nr_reserved_tags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_reserved_tags.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %tag)
  %cmp.i = icmp ugt i32 %1, %tag
  br i1 %cmp.i, label %do.end27, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i32 %tag, %1
  %2 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp.not = icmp ult i32 %sub, %3
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !43

do.body3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq-tag.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 228, 0\0A.popsection", ""() #11, !srcloc !47
  unreachable

do.end8:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 3
  %cpu = getelementptr inbounds %struct.blk_mq_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 128
  tail call void @sbitmap_queue_clear(ptr noundef %bitmap_tags, i32 noundef %sub, i32 noundef %5) #11
  br label %if.end29

do.end27:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 4
  %cpu28 = getelementptr inbounds %struct.blk_mq_ctx, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %cpu28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu28, align 128
  tail call void @sbitmap_queue_clear(ptr noundef %breserved_tags, i32 noundef %tag, i32 noundef %7) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %do.end8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_put_tags(ptr noundef %tags, ptr noundef %tag_array, i32 noundef %nr_tags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 3
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 1
  %0 = ptrtoint ptr %nr_reserved_tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_reserved_tags, align 4
  tail call void @sbitmap_queue_clear_batch(ptr noundef %bitmap_tags, i32 noundef %1, ptr noundef %tag_array, i32 noundef %nr_tags) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear_batch(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_all_tag_iter(ptr noundef %tags, ptr noundef %fn, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_reserved_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 1
  %0 = ptrtoint ptr %nr_reserved_tags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_reserved_tags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool36.not.i = icmp eq i32 %1, 0
  br i1 %tobool36.not.i, label %entry.__blk_mq_all_tag_iter.exit_crit_edge, label %if.then37.i

entry.__blk_mq_all_tag_iter.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__blk_mq_all_tag_iter.exit

if.then37.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %breserved_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 4
  tail call fastcc void @bt_tags_for_each(ptr noundef %tags, ptr noundef %breserved_tags.i, ptr noundef %fn, ptr noundef %priv, i32 noundef 5) #11
  br label %__blk_mq_all_tag_iter.exit

__blk_mq_all_tag_iter.exit:                       ; preds = %if.then37.i, %entry.__blk_mq_all_tag_iter.exit_crit_edge
  %bitmap_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 3
  tail call fastcc void @bt_tags_for_each(ptr noundef %tags, ptr noundef %bitmap_tags.i, ptr noundef %fn, ptr noundef %priv, i32 noundef 4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_tagset_busy_iter(ptr nocapture noundef readonly %tagset, ptr noundef %fn, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %tagset, i32 0, i32 9
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %cond.end, label %entry.for.body.lr.ph_crit_edge

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

cond.end:                                         ; preds = %entry
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, ptr %tagset, i32 0, i32 3
  %2 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_hw_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %cond.end.for.body.lr.ph_crit_edge, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.end.for.body.lr.ph_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %cond.end.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %cond19 = phi i32 [ %3, %cond.end.for.body.lr.ph_crit_edge ], [ 1, %entry.for.body.lr.ph_crit_edge ]
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %tagset, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tags, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.015
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %nr_reserved_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %nr_reserved_tags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_reserved_tags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool36.not.i = icmp eq i32 %9, 0
  br i1 %tobool36.not.i, label %if.then.__blk_mq_all_tag_iter.exit_crit_edge, label %if.then37.i

if.then.__blk_mq_all_tag_iter.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %__blk_mq_all_tag_iter.exit

if.then37.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %breserved_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %7, i32 0, i32 4
  tail call fastcc void @bt_tags_for_each(ptr noundef nonnull %7, ptr noundef %breserved_tags.i, ptr noundef %fn, ptr noundef %priv, i32 noundef 3) #11
  br label %__blk_mq_all_tag_iter.exit

__blk_mq_all_tag_iter.exit:                       ; preds = %if.then37.i, %if.then.__blk_mq_all_tag_iter.exit_crit_edge
  %bitmap_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %7, i32 0, i32 3
  tail call fastcc void @bt_tags_for_each(ptr noundef nonnull %7, ptr noundef %bitmap_tags.i, ptr noundef %fn, ptr noundef %priv, i32 noundef 2) #11
  br label %for.inc

for.inc:                                          ; preds = %__blk_mq_all_tag_iter.exit, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %cond19
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_tagset_wait_completed_request(ptr nocapture noundef readonly %tagset) #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %tagset, i32 0, i32 9
  %nr_hw_queues.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %tagset, i32 0, i32 3
  %tags.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %tagset, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %cleanup, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #11
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %count, align 4
  %1 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags1.i, align 4
  %and.i.i = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %cond.end.i, label %while.body.for.body.lr.ph.i_crit_edge

while.body.for.body.lr.ph.i_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i

cond.end.i:                                       ; preds = %while.body
  %3 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_hw_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp14.i = icmp sgt i32 %4, 0
  br i1 %cmp14.i, label %cond.end.i.for.body.lr.ph.i_crit_edge, label %cond.end.i.blk_mq_tagset_busy_iter.exit_crit_edge

cond.end.i.blk_mq_tagset_busy_iter.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_mq_tagset_busy_iter.exit

cond.end.i.for.body.lr.ph.i_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cond.end.i.for.body.lr.ph.i_crit_edge, %while.body.for.body.lr.ph.i_crit_edge
  %cond19.i = phi i32 [ %4, %cond.end.i.for.body.lr.ph.i_crit_edge ], [ 1, %while.body.for.body.lr.ph.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tags.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %i.015.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %nr_reserved_tags.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %nr_reserved_tags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_reserved_tags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool36.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool36.not.i.i, label %if.then.i.__blk_mq_all_tag_iter.exit.i_crit_edge, label %if.then37.i.i

if.then.i.__blk_mq_all_tag_iter.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__blk_mq_all_tag_iter.exit.i

if.then37.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %breserved_tags.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %8, i32 0, i32 4
  call fastcc void @bt_tags_for_each(ptr noundef nonnull %8, ptr noundef %breserved_tags.i.i, ptr noundef nonnull @blk_mq_tagset_count_completed_rqs, ptr noundef nonnull %count, i32 noundef 3) #11
  br label %__blk_mq_all_tag_iter.exit.i

__blk_mq_all_tag_iter.exit.i:                     ; preds = %if.then37.i.i, %if.then.i.__blk_mq_all_tag_iter.exit.i_crit_edge
  %bitmap_tags.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %8, i32 0, i32 3
  call fastcc void @bt_tags_for_each(ptr noundef nonnull %8, ptr noundef %bitmap_tags.i.i, ptr noundef nonnull @blk_mq_tagset_count_completed_rqs, ptr noundef nonnull %count, i32 noundef 2) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %__blk_mq_all_tag_iter.exit.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond19.i
  br i1 %exitcond.not.i, label %for.inc.i.blk_mq_tagset_busy_iter.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.blk_mq_tagset_busy_iter.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_mq_tagset_busy_iter.exit

blk_mq_tagset_busy_iter.exit:                     ; preds = %for.inc.i.blk_mq_tagset_busy_iter.exit_crit_edge, %cond.end.i.blk_mq_tagset_busy_iter.exit_crit_edge
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %while.end, label %cleanup

cleanup:                                          ; preds = %blk_mq_tagset_busy_iter.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #11
  br label %while.body

while.end:                                        ; preds = %blk_mq_tagset_busy_iter.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @blk_mq_tagset_count_completed_rqs(ptr noundef %rq, ptr nocapture noundef %data, i1 noundef zeroext %reserved) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 25
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_queue_tag_busy_iter(ptr noundef %q, ptr noundef %fn, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %q_usage_counter = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %q_usage_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %q_usage_counter, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !43

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !49
  %7 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, 1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !50
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !42

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !51
  br label %if.end39.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 1, ptr elementtype(i32) %18) #11, !srcloc !53
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.else.i.i.atomic_long_add_unless.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.else.i.i.atomic_long_add_unless.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_long_add_unless.exit.i.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  br label %atomic_long_add_unless.exit.i.i

atomic_long_add_unless.exit.i.i:                  ; preds = %do.end11.i.i.i.i.i.i, %if.else.i.i.atomic_long_add_unless.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i, 0
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %atomic_long_add_unless.exit.i.i, %do.end31.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end31.i.i ], [ %cmp.i.i.i.i.i, %atomic_long_add_unless.exit.i.i ]
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i3.i.i, label %if.end39.i.i.percpu_ref_tryget.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end39.i.i.percpu_ref_tryget.exit_crit_edge:    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %percpu_ref_tryget.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end39.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_tryget.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_tryget.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %percpu_ref_tryget.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_tryget.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_tryget.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %percpu_ref_tryget.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %percpu_ref_tryget.exit

percpu_ref_tryget.exit:                           ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_tryget.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_tryget.exit_crit_edge, %if.end39.i.i.percpu_ref_tryget.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !55
  %20 = tail call i32 @llvm.read_register.i32(metadata !26) #11
  %and.i.i.i.i.i10.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %ret.0.off0.i.i, label %if.end, label %percpu_ref_tryget.exit.return_crit_edge

percpu_ref_tryget.exit.return_crit_edge:          ; preds = %percpu_ref_tryget.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %percpu_ref_tryget.exit
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 61
  %24 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tag_set, align 8
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.cond.preheader, label %if.then2

for.cond.preheader:                               ; preds = %if.end
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 9
  %28 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_hw_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp47.not = icmp eq i32 %29, 0
  br i1 %cmp47.not, label %for.cond.preheader.if.end22_crit_edge, label %land.rhs.lr.ph

for.cond.preheader.if.end22_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 8
  br label %land.rhs

if.then2:                                         ; preds = %if.end
  %shared_tags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %25, i32 0, i32 12
  %30 = ptrtoint ptr %shared_tags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shared_tags, align 4
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %31, i32 0, i32 3
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %nr_reserved_tags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_reserved_tags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %if.then2.if.end5_crit_edge, label %if.then4

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %31, i32 0, i32 4
  tail call fastcc void @bt_for_each(ptr noundef null, ptr noundef %q, ptr noundef %breserved_tags, ptr noundef %fn, ptr noundef %priv, i1 noundef zeroext true)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2.if.end5_crit_edge
  tail call fastcc void @bt_for_each(ptr noundef null, ptr noundef %q, ptr noundef %bitmap_tags, ptr noundef %fn, ptr noundef %priv, i1 noundef zeroext false)
  br label %if.end22

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.048 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %cleanup.land.rhs_crit_edge ]
  %34 = ptrtoint ptr %queue_hw_ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue_hw_ctx, align 4
  %arrayidx = getelementptr ptr, ptr %35, i32 %i.048
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %tags8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %37, i32 0, i32 19
  %38 = ptrtoint ptr %tags8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tags8, align 16
  %breserved_tags10 = getelementptr inbounds %struct.blk_mq_tags, ptr %39, i32 0, i32 4
  %bitmap_tags12 = getelementptr inbounds %struct.blk_mq_tags, ptr %39, i32 0, i32 3
  %nr_ctx.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %37, i32 0, i32 14
  %40 = ptrtoint ptr %nr_ctx.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nr_ctx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i = icmp ne i16 %41, 0
  %tobool1.i = icmp ne ptr %39, null
  %or.cond = select i1 %tobool.not.i, i1 %tobool1.i, i1 false
  br i1 %or.cond, label %if.end15, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %land.rhs
  %nr_reserved_tags16 = getelementptr inbounds %struct.blk_mq_tags, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %nr_reserved_tags16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_reserved_tags16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool17.not = icmp eq i32 %43, 0
  br i1 %tobool17.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @bt_for_each(ptr noundef %37, ptr noundef %q, ptr noundef %breserved_tags10, ptr noundef %fn, ptr noundef %priv, i1 noundef zeroext true)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  tail call fastcc void @bt_for_each(ptr noundef %37, ptr noundef %q, ptr noundef %bitmap_tags12, ptr noundef %fn, ptr noundef %priv, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %land.rhs.cleanup_crit_edge
  %inc = add nuw i32 %i.048, 1
  %44 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %45
  br i1 %cmp, label %cleanup.land.rhs_crit_edge, label %cleanup.if.end22_crit_edge

cleanup.if.end22_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end22:                                         ; preds = %cleanup.if.end22_crit_edge, %if.end5, %for.cond.preheader.if.end22_crit_edge
  tail call void @blk_queue_exit(ptr noundef %q) #11
  br label %return

return:                                           ; preds = %if.end22, %percpu_ref_tryget.exit.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bt_for_each(ptr noundef %hctx, ptr noundef %q, ptr nocapture noundef readonly %bt, ptr noundef %fn, ptr noundef %data, i1 noundef zeroext %reserved) unnamed_addr #0 align 64 {
entry:
  %word.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shift.i.i = getelementptr inbounds %struct.sbitmap, ptr %bt, i32 0, i32 1
  %0 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp37.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp37.not.i.i, label %entry.sbitmap_for_each_set.exit_crit_edge, label %while.body.lr.ph.i.i

entry.sbitmap_for_each_set.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbitmap_for_each_set.exit

while.body.lr.ph.i.i:                             ; preds = %entry
  %map.i.i = getelementptr inbounds %struct.sbitmap, ptr %bt, i32 0, i32 4
  %map_nr.i.i = getelementptr inbounds %struct.sbitmap, ptr %bt, i32 0, i32 2
  %tag_set.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 61
  %tags4.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 19
  %tobool13.not.i = icmp eq ptr %hctx, null
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %2 = phi i32 [ %1, %while.body.lr.ph.i.i ], [ %37, %cleanup.i.i.while.body.i.i_crit_edge ]
  %index.09.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %spec.store.select42.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %scanned.08.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i.i) #11
  %3 = ptrtoint ptr %word.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %word.i.i, align 4, !annotation !56
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.sbitmap_word, ptr %5, i32 %index.09.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 128
  %sub8.i.i = sub i32 %2, %scanned.08.i.i
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 %sub8.i.i) #11
  %add.i.i = add i32 %8, %scanned.08.i.i
  %word12.i.i = getelementptr %struct.sbitmap_word, ptr %5, i32 %index.09.i.i, i32 2
  %9 = ptrtoint ptr %word12.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %word12.i.i, align 128
  %cleared.i.i = getelementptr %struct.sbitmap_word, ptr %5, i32 %index.09.i.i, i32 4
  %11 = ptrtoint ptr %cleared.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cleared.i.i, align 128
  %neg.i.i = xor i32 %12, -1
  %and15.i.i = and i32 %10, %neg.i.i
  %13 = ptrtoint ptr %word.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and15.i.i, ptr %word.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.cleanup.i.i_crit_edge, label %while.cond19.preheader.i.i

while.body.i.i.cleanup.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

while.cond19.preheader.i.i:                       ; preds = %while.body.i.i
  %call4.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %word.i.i, i32 noundef %8, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.i, i32 %8)
  %cmp21.not5.i.i = icmp ult i32 %call4.i.i, %8
  br i1 %cmp21.not5.i.i, label %while.cond19.preheader.i.i.if.end23.i.i_crit_edge, label %while.cond19.preheader.i.i.cleanup.i.i_crit_edge

while.cond19.preheader.i.i.cleanup.i.i_crit_edge: ; preds = %while.cond19.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

while.cond19.preheader.i.i.if.end23.i.i_crit_edge: ; preds = %while.cond19.preheader.i.i
  br label %if.end23.i.i

while.cond19.i.i:                                 ; preds = %bt_iter.exit.while.cond19.i.i_crit_edge, %bt_iter.exit.thread10, %bt_iter.exit.thread
  %inc.i.i = add nuw i32 %call6.i.i, 1
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %word.i.i, i32 noundef %8, i32 noundef %inc.i.i) #11
  %cmp21.not.i.i = icmp ult i32 %call.i.i, %8
  br i1 %cmp21.not.i.i, label %while.cond19.i.i.if.end23.i.i_crit_edge, label %while.cond19.i.i.cleanup.i.i_crit_edge

while.cond19.i.i.cleanup.i.i_crit_edge:           ; preds = %while.cond19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

while.cond19.i.i.if.end23.i.i_crit_edge:          ; preds = %while.cond19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %while.cond19.i.i.if.end23.i.i_crit_edge, %while.cond19.preheader.i.i.if.end23.i.i_crit_edge
  %call6.i.i = phi i32 [ %call.i.i, %while.cond19.i.i.if.end23.i.i_crit_edge ], [ %call4.i.i, %while.cond19.preheader.i.i.if.end23.i.i_crit_edge ]
  %14 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift.i.i, align 4
  %shl25.i.i = shl i32 %index.09.i.i, %15
  %add26.i.i = add i32 %shl25.i.i, %call6.i.i
  %16 = ptrtoint ptr %tag_set.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tag_set.i, align 8
  %flags.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %shared_tags.i = getelementptr inbounds %struct.blk_mq_tag_set, ptr %17, i32 0, i32 12
  %tags.0.in.i = select i1 %tobool.i.not.i, ptr %tags4.i, ptr %shared_tags.i
  %20 = ptrtoint ptr %tags.0.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %tags.0.i = load ptr, ptr %tags.0.in.i, align 4
  br i1 %reserved, label %if.end23.i.i.if.end7.i_crit_edge, label %if.then6.i

if.end23.i.i.if.end7.i_crit_edge:                 ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %nr_reserved_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nr_reserved_tags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_reserved_tags.i, align 4
  %add.i = add i32 %22, %add26.i.i
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end23.i.i.if.end7.i_crit_edge
  %bitnr.addr.0.i = phi i32 [ %add26.i.i, %if.end23.i.i.if.end7.i_crit_edge ], [ %add.i, %if.then6.i ]
  %lock.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags.0.i, i32 0, i32 8
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags.0.i, i32 0, i32 5
  %23 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i7 = getelementptr ptr, ptr %24, i32 %bitnr.addr.0.i
  %25 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i7, align 4
  %tobool.not.i.i8 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i8, label %if.end7.i.bt_iter.exit.thread_crit_edge, label %lor.lhs.false.i.i

if.end7.i.bt_iter.exit.thread_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bt_iter.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end7.i
  %tag.i.i = getelementptr inbounds %struct.request, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tag.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %bitnr.addr.0.i)
  %cmp5.not.i.i = icmp eq i32 %28, %bitnr.addr.0.i
  br i1 %cmp5.not.i.i, label %lor.lhs.false7.i.i, label %lor.lhs.false.i.i.bt_iter.exit.thread_crit_edge

lor.lhs.false.i.i.bt_iter.exit.thread_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bt_iter.exit.thread

lor.lhs.false7.i.i:                               ; preds = %lor.lhs.false.i.i
  %ref.i.i.i = getelementptr inbounds %struct.request, ptr %26, i32 0, i32 26
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !52
  call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #11
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 0, i32 1, ptr elementtype(i32) %ref.i.i.i) #11, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %lor.lhs.false7.i.i.bt_iter.exit.thread_crit_edge, label %if.end11.i

lor.lhs.false7.i.i.bt_iter.exit.thread_crit_edge: ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bt_iter.exit.thread

bt_iter.exit.thread:                              ; preds = %lor.lhs.false7.i.i.bt_iter.exit.thread_crit_edge, %lor.lhs.false.i.i.bt_iter.exit.thread_crit_edge, %if.end7.i.bt_iter.exit.thread_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #11
  br label %while.cond19.i.i

if.end11.i:                                       ; preds = %lor.lhs.false7.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #11
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %26, align 8
  %cmp.i = icmp eq ptr %31, %q
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end11.i.bt_iter.exit.thread10_crit_edge

if.end11.i.bt_iter.exit.thread10_crit_edge:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bt_iter.exit.thread10

land.lhs.true.i:                                  ; preds = %if.end11.i
  br i1 %tobool13.not.i, label %land.lhs.true.i.bt_iter.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.bt_iter.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bt_iter.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %mq_hctx.i = getelementptr inbounds %struct.request, ptr %26, i32 0, i32 2
  %32 = ptrtoint ptr %mq_hctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mq_hctx.i, align 8
  %cmp14.i = icmp eq ptr %33, %hctx
  br i1 %cmp14.i, label %lor.lhs.false.i.bt_iter.exit_crit_edge, label %lor.lhs.false.i.bt_iter.exit.thread10_crit_edge

lor.lhs.false.i.bt_iter.exit.thread10_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bt_iter.exit.thread10

lor.lhs.false.i.bt_iter.exit_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bt_iter.exit

bt_iter.exit.thread10:                            ; preds = %lor.lhs.false.i.bt_iter.exit.thread10_crit_edge, %if.end11.i.bt_iter.exit.thread10_crit_edge
  call void @blk_mq_put_rq_ref(ptr noundef nonnull %26) #11
  br label %while.cond19.i.i

bt_iter.exit:                                     ; preds = %lor.lhs.false.i.bt_iter.exit_crit_edge, %land.lhs.true.i.bt_iter.exit_crit_edge
  %call18.i = call zeroext i1 %fn(ptr noundef nonnull %26, ptr noundef %data, i1 noundef zeroext %reserved) #11
  call void @blk_mq_put_rq_ref(ptr noundef nonnull %26) #11
  br i1 %call18.i, label %bt_iter.exit.while.cond19.i.i_crit_edge, label %cleanup.thread.i.i

bt_iter.exit.while.cond19.i.i_crit_edge:          ; preds = %bt_iter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond19.i.i

cleanup.thread.i.i:                               ; preds = %bt_iter.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i.i) #11
  br label %sbitmap_for_each_set.exit

cleanup.i.i:                                      ; preds = %while.cond19.i.i.cleanup.i.i_crit_edge, %while.cond19.preheader.i.i.cleanup.i.i_crit_edge, %while.body.i.i.cleanup.i.i_crit_edge
  %inc30.i.i = add i32 %index.09.i.i, 1
  %34 = ptrtoint ptr %map_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %map_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc30.i.i, i32 %35)
  %cmp31.not.i.i = icmp ult i32 %inc30.i.i, %35
  %spec.store.select42.i.i = select i1 %cmp31.not.i.i, i32 %inc30.i.i, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i.i) #11
  %36 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bt, align 4
  %cmp3.i.i = icmp ugt i32 %37, %add.i.i
  br i1 %cmp3.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.sbitmap_for_each_set.exit_crit_edge

cleanup.i.i.sbitmap_for_each_set.exit_crit_edge:  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbitmap_for_each_set.exit

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

sbitmap_for_each_set.exit:                        ; preds = %cleanup.i.i.sbitmap_for_each_set.exit_crit_edge, %cleanup.thread.i.i, %entry.sbitmap_for_each_set.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_init_bitmaps(ptr noundef %bitmap_tags, ptr noundef %breserved_tags, i32 noundef %queue_depth, i32 noundef %reserved, i32 noundef %node, i32 noundef %alloc_policy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 %queue_depth, %reserved
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alloc_policy)
  %cmp = icmp eq i32 %alloc_policy, 1
  %call.i = tail call i32 @sbitmap_queue_init_node(ptr noundef %bitmap_tags, i32 noundef %sub, i32 noundef -1, i1 noundef zeroext %cmp, i32 noundef 3264, i32 noundef %node) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i12 = tail call i32 @sbitmap_queue_init_node(ptr noundef %breserved_tags, i32 noundef %reserved, i32 noundef -1, i1 noundef zeroext %cmp, i32 noundef 3264, i32 noundef %node) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool4.not = icmp eq i32 %call.i12, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %free_bitmap_tags

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

free_bitmap_tags:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ws.i = getelementptr inbounds %struct.sbitmap_queue, ptr %bitmap_tags, i32 0, i32 3
  %0 = ptrtoint ptr %ws.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ws.i, align 4
  tail call void @kfree(ptr noundef %1) #11
  %alloc_hint.i.i = getelementptr inbounds %struct.sbitmap, ptr %bitmap_tags, i32 0, i32 5
  %2 = ptrtoint ptr %alloc_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_hint.i.i, align 4
  tail call void @free_percpu(ptr noundef %3) #11
  %map.i.i = getelementptr inbounds %struct.sbitmap, ptr %bitmap_tags, i32 0, i32 4
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 4
  tail call void @kfree(ptr noundef %5) #11
  %6 = ptrtoint ptr %map.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %map.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_bitmap_tags, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %free_bitmap_tags ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @blk_mq_init_tags(i32 noundef %total_tags, i32 noundef %reserved_tags, i32 noundef %node, i32 noundef %alloc_policy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %total_tags)
  %cmp = icmp eq i32 %total_tags, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #15
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %total_tags, ptr %call.i.i.i, align 8
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %call.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %nr_reserved_tags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %reserved_tags, ptr %nr_reserved_tags, align 4
  %lock = getelementptr inbounds %struct.blk_mq_tags, ptr %call.i.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @blk_mq_init_tags.__key, i16 noundef signext 3) #11
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %call.i.i.i, i32 0, i32 3
  %sub.i = sub i32 %total_tags, %reserved_tags
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alloc_policy)
  %cmp.i = icmp eq i32 %alloc_policy, 1
  %call.i.i = tail call i32 @sbitmap_queue_init_node(ptr noundef %bitmap_tags, i32 noundef %sub.i, i32 noundef -1, i1 noundef zeroext %cmp.i, i32 noundef 3264, i32 noundef %node) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.end3.if.then10_crit_edge

if.end3.if.then10_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.end.i:                                         ; preds = %if.end3
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %call.i.i.i, i32 0, i32 4
  %call.i12.i = tail call i32 @sbitmap_queue_init_node(ptr noundef %breserved_tags, i32 noundef %reserved_tags, i32 noundef -1, i1 noundef zeroext %cmp.i, i32 noundef 3264, i32 noundef %node) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool4.not.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %free_bitmap_tags.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

free_bitmap_tags.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %ws.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %call.i.i.i, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %ws.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ws.i.i, align 4
  tail call void @kfree(ptr noundef %4) #11
  %alloc_hint.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %call.i.i.i, i32 0, i32 3, i32 0, i32 5
  %5 = ptrtoint ptr %alloc_hint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_hint.i.i.i, align 8
  tail call void @free_percpu(ptr noundef %6) #11
  %map.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %call.i.i.i, i32 0, i32 3, i32 0, i32 4
  %7 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i.i.i, align 4
  tail call void @kfree(ptr noundef %8) #11
  %9 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %map.i.i.i, align 4
  br label %if.then10

if.then10:                                        ; preds = %free_bitmap_tags.i, %if.end3.if.then10_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.then10 ], [ null, %if.end.cleanup_crit_edge ], [ %call.i.i.i, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_free_tags(ptr noundef %tags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ws.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %ws.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ws.i, align 4
  tail call void @kfree(ptr noundef %1) #11
  %alloc_hint.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %alloc_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_hint.i.i, align 4
  tail call void @free_percpu(ptr noundef %3) #11
  %map.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 3, i32 0, i32 4
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 4
  tail call void @kfree(ptr noundef %5) #11
  %6 = ptrtoint ptr %map.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %map.i.i, align 4
  %ws.i3 = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %ws.i3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ws.i3, align 4
  tail call void @kfree(ptr noundef %8) #11
  %alloc_hint.i.i4 = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 4, i32 0, i32 5
  %9 = ptrtoint ptr %alloc_hint.i.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alloc_hint.i.i4, align 4
  tail call void @free_percpu(ptr noundef %10) #11
  %map.i.i5 = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 4, i32 0, i32 4
  %11 = ptrtoint ptr %map.i.i5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i.i5, align 4
  tail call void @kfree(ptr noundef %12) #11
  %13 = ptrtoint ptr %map.i.i5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %map.i.i5, align 4
  tail call void @kfree(ptr noundef %tags) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_mq_tag_update_depth(ptr nocapture noundef readonly %hctx, ptr nocapture noundef %tagsptr, i32 noundef %tdepth, i1 noundef zeroext %can_grow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tagsptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tagsptr, align 4
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr_reserved_tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_reserved_tags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %tdepth)
  %cmp.not = icmp ult i32 %3, %tdepth
  br i1 %cmp.not, label %if.end, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %tdepth)
  %cmp1 = icmp ult i32 %5, %tdepth
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 8
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 61
  %8 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tag_set, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %tdepth)
  %cmp5 = icmp ult i32 %tdepth, 2049
  %10 = and i1 %cmp5, %can_grow
  br i1 %10, label %if.end7, label %if.then2.cleanup18_crit_edge

if.then2.cleanup18_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

if.end7:                                          ; preds = %if.then2
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %9, i32 0, i32 9
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end9, label %if.end7.cleanup18_crit_edge

if.end7.cleanup18_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

if.end9:                                          ; preds = %if.end7
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 24
  %13 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %queue_num, align 4
  %call10 = tail call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %9, i32 noundef %14, i32 noundef %tdepth) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup18_crit_edge, label %cleanup

if.end9.cleanup18_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

cleanup:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %tagsptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tagsptr, align 4
  %17 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queue_num, align 4
  tail call void @blk_mq_free_map_and_rqs(ptr noundef %9, ptr noundef %16, i32 noundef %18) #11
  %19 = ptrtoint ptr %tagsptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call10, ptr %tagsptr, align 4
  br label %cleanup18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 3
  %sub = sub i32 %tdepth, %3
  tail call void @sbitmap_queue_resize(ptr noundef %bitmap_tags, i32 noundef %sub) #11
  br label %cleanup18

cleanup18:                                        ; preds = %if.else, %cleanup, %if.end9.cleanup18_crit_edge, %if.end7.cleanup18_crit_edge, %if.then2.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup18_crit_edge ], [ 0, %cleanup ], [ 0, %if.else ], [ -12, %if.end9.cleanup18_crit_edge ], [ 0, %if.end7.cleanup18_crit_edge ], [ -22, %if.then2.cleanup18_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_map_and_rqs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_map_and_rqs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_tag_resize_shared_tags(ptr nocapture noundef readonly %set, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shared_tags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 12
  %0 = ptrtoint ptr %shared_tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shared_tags, align 4
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 3
  %reserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 5
  %2 = ptrtoint ptr %reserved_tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_tags, align 4
  %sub = sub i32 %size, %3
  tail call void @sbitmap_queue_resize(ptr noundef %bitmap_tags, i32 noundef %sub) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_mq_tag_update_sched_shared_tags(ptr nocapture noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_shared_tags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 32
  %0 = ptrtoint ptr %sched_shared_tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_shared_tags, align 8
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 3
  %nr_requests = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 21
  %2 = ptrtoint ptr %nr_requests to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_requests, align 8
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 61
  %4 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tag_set, align 8
  %reserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %reserved_tags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reserved_tags, align 4
  %sub = sub i32 %3, %7
  tail call void @sbitmap_queue_resize(ptr noundef %bitmap_tags, i32 noundef %sub) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @blk_mq_unique_tag(ptr nocapture noundef readonly %rq) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mq_hctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq_hctx, align 8
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_num, align 4
  %shl = shl i32 %3, 16
  %tag = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 5
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag, align 4
  %and = and i32 %5, 65535
  %or = or i32 %and, %shl
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_recalculate_wake_batch(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get_shallow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bt_tags_for_each(ptr noundef %tags, ptr nocapture noundef readonly %bt, ptr noundef %fn, ptr noundef %data, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %word.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rqs = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 5
  %0 = ptrtoint ptr %rqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %shift.i.i = getelementptr inbounds %struct.sbitmap, ptr %bt, i32 0, i32 1
  %2 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp37.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp37.not.i.i, label %if.then.if.end_crit_edge, label %while.body.lr.ph.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.body.lr.ph.i.i:                             ; preds = %if.then
  %map.i.i = getelementptr inbounds %struct.sbitmap, ptr %bt, i32 0, i32 4
  %map_nr.i.i = getelementptr inbounds %struct.sbitmap, ptr %bt, i32 0, i32 2
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %and3.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %nr_reserved_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 1
  %static_rqs.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 6
  %lock.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %tags, i32 0, i32 8
  %and15.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %4 = phi i32 [ %3, %while.body.lr.ph.i.i ], [ %36, %cleanup.i.i.while.body.i.i_crit_edge ]
  %index.09.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %spec.store.select42.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %scanned.08.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i.i) #11
  %5 = ptrtoint ptr %word.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %word.i.i, align 4, !annotation !56
  %6 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.sbitmap_word, ptr %7, i32 %index.09.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 128
  %sub8.i.i = sub i32 %4, %scanned.08.i.i
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 %sub8.i.i) #11
  %add.i.i = add i32 %10, %scanned.08.i.i
  %word12.i.i = getelementptr %struct.sbitmap_word, ptr %7, i32 %index.09.i.i, i32 2
  %11 = ptrtoint ptr %word12.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word12.i.i, align 128
  %cleared.i.i = getelementptr %struct.sbitmap_word, ptr %7, i32 %index.09.i.i, i32 4
  %13 = ptrtoint ptr %cleared.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cleared.i.i, align 128
  %neg.i.i = xor i32 %14, -1
  %and15.i.i = and i32 %12, %neg.i.i
  %15 = ptrtoint ptr %word.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and15.i.i, ptr %word.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.cleanup.i.i_crit_edge, label %while.cond19.preheader.i.i

while.body.i.i.cleanup.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

while.cond19.preheader.i.i:                       ; preds = %while.body.i.i
  %call4.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %word.i.i, i32 noundef %10, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.i, i32 %10)
  %cmp21.not5.i.i = icmp ult i32 %call4.i.i, %10
  br i1 %cmp21.not5.i.i, label %while.cond19.preheader.i.i.if.end23.i.i_crit_edge, label %while.cond19.preheader.i.i.cleanup.i.i_crit_edge

while.cond19.preheader.i.i.cleanup.i.i_crit_edge: ; preds = %while.cond19.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

while.cond19.preheader.i.i.if.end23.i.i_crit_edge: ; preds = %while.cond19.preheader.i.i
  br label %if.end23.i.i

while.cond19.i.i:                                 ; preds = %bt_tags_iter.exit.while.cond19.i.i_crit_edge, %if.then26.i.while.cond19.i.i_crit_edge, %if.then26.i.thread, %if.end24.i.thread.while.cond19.i.i_crit_edge, %if.end10.i.while.cond19.i.i_crit_edge
  %inc.i.i = add nuw i32 %call6.i.i, 1
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %word.i.i, i32 noundef %10, i32 noundef %inc.i.i) #11
  %cmp21.not.i.i = icmp ult i32 %call.i.i, %10
  br i1 %cmp21.not.i.i, label %while.cond19.i.i.if.end23.i.i_crit_edge, label %while.cond19.i.i.cleanup.i.i_crit_edge

while.cond19.i.i.cleanup.i.i_crit_edge:           ; preds = %while.cond19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

while.cond19.i.i.if.end23.i.i_crit_edge:          ; preds = %while.cond19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %while.cond19.i.i.if.end23.i.i_crit_edge, %while.cond19.preheader.i.i.if.end23.i.i_crit_edge
  %call6.i.i = phi i32 [ %call.i.i, %while.cond19.i.i.if.end23.i.i_crit_edge ], [ %call4.i.i, %while.cond19.preheader.i.i.if.end23.i.i_crit_edge ]
  %16 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift.i.i, align 4
  %shl25.i.i = shl i32 %index.09.i.i, %17
  %add26.i.i = add i32 %shl25.i.i, %call6.i.i
  br i1 %tobool.i, label %if.end23.i.i.if.end.i_crit_edge, label %if.then.i

if.end23.i.i.if.end.i_crit_edge:                  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %nr_reserved_tags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_reserved_tags.i, align 4
  %add.i = add i32 %19, %add26.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end23.i.i.if.end.i_crit_edge
  %bitnr.addr.0.i = phi i32 [ %add26.i.i, %if.end23.i.i.if.end.i_crit_edge ], [ %add.i, %if.then.i ]
  br i1 %tobool4.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %static_rqs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %static_rqs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %bitnr.addr.0.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %24 = ptrtoint ptr %rqs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rqs, align 4
  %arrayidx.i.i6 = getelementptr ptr, ptr %25, i32 %bitnr.addr.0.i
  %26 = ptrtoint ptr %arrayidx.i.i6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i6, align 4
  %tobool.not.i.i7 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i7, label %if.else.i.blk_mq_find_and_get_req.exit.i_crit_edge, label %lor.lhs.false.i.i

if.else.i.blk_mq_find_and_get_req.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_mq_find_and_get_req.exit.i

lor.lhs.false.i.i:                                ; preds = %if.else.i
  %tag.i.i = getelementptr inbounds %struct.request, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tag.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %bitnr.addr.0.i)
  %cmp5.not.i.i = icmp eq i32 %29, %bitnr.addr.0.i
  br i1 %cmp5.not.i.i, label %lor.lhs.false7.i.i, label %lor.lhs.false.i.i.blk_mq_find_and_get_req.exit.i_crit_edge

lor.lhs.false.i.i.blk_mq_find_and_get_req.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_mq_find_and_get_req.exit.i

lor.lhs.false7.i.i:                               ; preds = %lor.lhs.false.i.i
  %ref.i.i.i = getelementptr inbounds %struct.request, ptr %27, i32 0, i32 26
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !52
  call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #11
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 0, i32 1, ptr elementtype(i32) %ref.i.i.i) #11, !srcloc !53
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %lor.lhs.false7.i.i.blk_mq_find_and_get_req.exit.i_crit_edge, label %req_ref_inc_not_zero.exit.thread.i.i

lor.lhs.false7.i.i.blk_mq_find_and_get_req.exit.i_crit_edge: ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_mq_find_and_get_req.exit.i

req_ref_inc_not_zero.exit.thread.i.i:             ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  br label %blk_mq_find_and_get_req.exit.i

blk_mq_find_and_get_req.exit.i:                   ; preds = %req_ref_inc_not_zero.exit.thread.i.i, %lor.lhs.false7.i.i.blk_mq_find_and_get_req.exit.i_crit_edge, %lor.lhs.false.i.i.blk_mq_find_and_get_req.exit.i_crit_edge, %if.else.i.blk_mq_find_and_get_req.exit.i_crit_edge
  %rq.0.i.i = phi ptr [ %27, %req_ref_inc_not_zero.exit.thread.i.i ], [ null, %lor.lhs.false7.i.i.blk_mq_find_and_get_req.exit.i_crit_edge ], [ null, %lor.lhs.false.i.i.blk_mq_find_and_get_req.exit.i_crit_edge ], [ null, %if.else.i.blk_mq_find_and_get_req.exit.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %blk_mq_find_and_get_req.exit.i, %if.then9.i
  %rq.0.i = phi ptr [ %23, %if.then9.i ], [ %rq.0.i.i, %blk_mq_find_and_get_req.exit.i ]
  %tobool11.not.i = icmp eq ptr %rq.0.i, null
  br i1 %tobool11.not.i, label %if.end10.i.while.cond19.i.i_crit_edge, label %if.end13.i

if.end10.i.while.cond19.i.i_crit_edge:            ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond19.i.i

if.end13.i:                                       ; preds = %if.end10.i
  br i1 %tobool16.not.i, label %if.end13.i.if.end24.i_crit_edge, label %lor.lhs.false.i

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

lor.lhs.false.i:                                  ; preds = %if.end13.i
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %rq.0.i, i32 0, i32 25
  %31 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.not.i = icmp eq i32 %32, 0
  br i1 %cmp.i.not.i, label %if.end24.i.thread, label %lor.lhs.false.i.if.end24.i_crit_edge

lor.lhs.false.i.if.end24.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %lor.lhs.false.i.if.end24.i_crit_edge, %if.end13.i.if.end24.i_crit_edge
  %call22.i = call zeroext i1 %fn(ptr noundef nonnull %rq.0.i, ptr noundef %data, i1 noundef zeroext %tobool.i) #11
  br i1 %tobool4.not.i, label %if.then26.i, label %bt_tags_iter.exit

if.end24.i.thread:                                ; preds = %lor.lhs.false.i
  br i1 %tobool4.not.i, label %if.then26.i.thread, label %if.end24.i.thread.while.cond19.i.i_crit_edge

if.end24.i.thread.while.cond19.i.i_crit_edge:     ; preds = %if.end24.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond19.i.i

if.then26.i.thread:                               ; preds = %if.end24.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_mq_put_rq_ref(ptr noundef nonnull %rq.0.i) #11
  br label %while.cond19.i.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @blk_mq_put_rq_ref(ptr noundef nonnull %rq.0.i) #11
  br i1 %call22.i, label %if.then26.i.while.cond19.i.i_crit_edge, label %if.then26.i.cleanup.thread.i.i_crit_edge

if.then26.i.cleanup.thread.i.i_crit_edge:         ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i

if.then26.i.while.cond19.i.i_crit_edge:           ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond19.i.i

bt_tags_iter.exit:                                ; preds = %if.end24.i
  br i1 %call22.i, label %bt_tags_iter.exit.while.cond19.i.i_crit_edge, label %bt_tags_iter.exit.cleanup.thread.i.i_crit_edge

bt_tags_iter.exit.cleanup.thread.i.i_crit_edge:   ; preds = %bt_tags_iter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i

bt_tags_iter.exit.while.cond19.i.i_crit_edge:     ; preds = %bt_tags_iter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond19.i.i

cleanup.thread.i.i:                               ; preds = %bt_tags_iter.exit.cleanup.thread.i.i_crit_edge, %if.then26.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i.i) #11
  br label %if.end

cleanup.i.i:                                      ; preds = %while.cond19.i.i.cleanup.i.i_crit_edge, %while.cond19.preheader.i.i.cleanup.i.i_crit_edge, %while.body.i.i.cleanup.i.i_crit_edge
  %inc30.i.i = add i32 %index.09.i.i, 1
  %33 = ptrtoint ptr %map_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %map_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc30.i.i, i32 %34)
  %cmp31.not.i.i = icmp ult i32 %inc30.i.i, %34
  %spec.store.select42.i.i = select i1 %cmp31.not.i.i, i32 %inc30.i.i, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i.i) #11
  %35 = ptrtoint ptr %bt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bt, align 4
  %cmp3.i.i = icmp ugt i32 %36, %add.i.i
  br i1 %cmp3.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.if.end_crit_edge

cleanup.i.i.if.end_crit_edge:                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

if.end:                                           ; preds = %cleanup.i.i.if.end_crit_edge, %cleanup.thread.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_put_rq_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_queue_init_node(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !14, !15, !17, !19, !21, !22, !23, !25}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../block/blk-mq-tag.c", i32 141, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_blk_mq_tagset_busy_iter, !4, !"__ksymtab_blk_mq_tagset_busy_iter", i1 false, i1 false}
!4 = !{!"../block/blk-mq-tag.c", i32 450, i32 1}
!5 = !{ptr @__ksymtab_blk_mq_tagset_wait_completed_request, !6, !"__ksymtab_blk_mq_tagset_wait_completed_request", i1 false, i1 false}
!6 = !{!"../block/blk-mq-tag.c", i32 481, i32 1}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../block/blk-mq-tag.c", i32 574, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @blk_mq_init_tags._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @blk_mq_init_tags._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @blk_mq_init_tags.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../block/blk-mq-tag.c", i32 584, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_blk_mq_unique_tag, !16, !"__ksymtab_blk_mq_unique_tag", i1 false, i1 false}
!16 = !{!"../block/blk-mq-tag.c", i32 684, i32 1}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../block/blk-mq-tag.c", i32 397, i32 2}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148312074}
!37 = !{i64 2148227383, i64 2148227415, i64 2148227444, i64 2148227478, i64 2148227509, i64 2148227532}
!38 = !{i64 2148312303}
!39 = !{i64 2148315115}
!40 = !{i64 2148229848, i64 2148229880, i64 2148229909, i64 2148229943, i64 2148229974, i64 2148229997}
!41 = !{i64 2148315344}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2148328486}
!45 = !{i64 710399, i64 710423, i64 710444, i64 710461, i64 710478}
!46 = !{i64 2148328712}
!47 = !{i64 2154516526, i64 2154517009, i64 2154516563, i64 2154516619, i64 2154516653, i64 2154516677, i64 2154516718, i64 2154516739, i64 2154516767, i64 2154516801}
!48 = !{i64 2149373132}
!49 = !{i64 619144, i64 619205}
!50 = !{i64 621876}
!51 = !{i64 622161}
!52 = !{i64 2148226082}
!53 = !{i64 710905, i64 710930, i64 710952, i64 710968, i64 710980, i64 711000, i64 711024, i64 711040, i64 711052}
!54 = !{i64 2148226270}
!55 = !{i64 2149373398}
!56 = !{!"auto-init"}
