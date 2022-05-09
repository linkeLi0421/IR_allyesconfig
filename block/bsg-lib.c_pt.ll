; ModuleID = '/llk/IR_all_yes/block/bsg-lib.c_pt.bc'
source_filename = "../block/bsg-lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bsg_job_put\22, \22a\22\09"
module asm "\09.weak\09__crc_bsg_job_put\09\09\09\09"
module asm "\09.long\09__crc_bsg_job_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsg_job_put:\09\09\09\09\09"
module asm "\09.asciz \09\22bsg_job_put\22\09\09\09\09\09"
module asm "__kstrtabns_bsg_job_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bsg_job_get\22, \22a\22\09"
module asm "\09.weak\09__crc_bsg_job_get\09\09\09\09"
module asm "\09.long\09__crc_bsg_job_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsg_job_get:\09\09\09\09\09"
module asm "\09.asciz \09\22bsg_job_get\22\09\09\09\09\09"
module asm "__kstrtabns_bsg_job_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bsg_job_done\22, \22a\22\09"
module asm "\09.weak\09__crc_bsg_job_done\09\09\09\09"
module asm "\09.long\09__crc_bsg_job_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsg_job_done:\09\09\09\09\09"
module asm "\09.asciz \09\22bsg_job_done\22\09\09\09\09\09"
module asm "__kstrtabns_bsg_job_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bsg_remove_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_bsg_remove_queue\09\09\09\09"
module asm "\09.long\09__crc_bsg_remove_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsg_remove_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22bsg_remove_queue\22\09\09\09\09\09"
module asm "__kstrtabns_bsg_remove_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bsg_setup_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_bsg_setup_queue\09\09\09\09"
module asm "\09.long\09__crc_bsg_setup_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bsg_setup_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22bsg_setup_queue\22\09\09\09\09\09"
module asm "__kstrtabns_bsg_setup_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.bsg_set = type { %struct.blk_mq_tag_set, ptr, ptr, ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.sg_io_v4 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.blk_mq_hw_ctx = type { %struct.anon.82, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.82 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__kstrtab_bsg_job_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsg_job_put = external dso_local constant [0 x i8], align 1
@__ksymtab_bsg_job_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsg_job_put to i32), ptr @__kstrtab_bsg_job_put, ptr @__kstrtabns_bsg_job_put }, section "___ksymtab_gpl+bsg_job_put", align 4
@__kstrtab_bsg_job_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsg_job_get = external dso_local constant [0 x i8], align 1
@__ksymtab_bsg_job_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsg_job_get to i32), ptr @__kstrtab_bsg_job_get, ptr @__kstrtabns_bsg_job_get }, section "___ksymtab_gpl+bsg_job_get", align 4
@__kstrtab_bsg_job_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsg_job_done = external dso_local constant [0 x i8], align 1
@__ksymtab_bsg_job_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsg_job_done to i32), ptr @__kstrtab_bsg_job_done, ptr @__kstrtabns_bsg_job_done }, section "___ksymtab_gpl+bsg_job_done", align 4
@__kstrtab_bsg_remove_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsg_remove_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_bsg_remove_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsg_remove_queue to i32), ptr @__kstrtab_bsg_remove_queue, ptr @__kstrtabns_bsg_remove_queue }, section "___ksymtab_gpl+bsg_remove_queue", align 4
@bsg_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @bsg_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bsg_timeout, ptr null, ptr @bsg_complete, ptr null, ptr null, ptr @bsg_init_rq, ptr @bsg_exit_rq, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_bsg_setup_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_bsg_setup_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_bsg_setup_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bsg_setup_queue to i32), ptr @__kstrtab_bsg_setup_queue, ptr @__kstrtabns_bsg_setup_queue }, section "___ksymtab_gpl+bsg_setup_queue", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"block/bsg-lib.c\00", [16 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"bsg_mq_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 344, i32 32 }
@___asan_gen_.8 = private constant [19 x i8] c"../block/bsg-lib.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 130, i32 7 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 230, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 214, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 174, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_bsg_job_done, ptr @__ksymtab_bsg_job_get, ptr @__ksymtab_bsg_job_put, ptr @__ksymtab_bsg_remove_queue, ptr @__ksymtab_bsg_setup_queue, ptr @bsg_mq_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsg_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bsg_job_put(ptr noundef %job) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #7, !srcloc !31
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !32

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #7
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %add.ptr.i.i.i = getelementptr %struct.bsg_job, ptr %job, i32 -3, i32 6
  %1 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %job, align 4
  tail call void @put_device(ptr noundef %2) #7
  %sg_list.i.i = getelementptr %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sg_list.i.i, align 4
  tail call void @kfree(ptr noundef %4) #7
  %sg_list1.i.i = getelementptr %struct.bsg_job, ptr %job, i32 0, i32 8, i32 2
  %5 = ptrtoint ptr %sg_list1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sg_list1.i.i, align 4
  tail call void @kfree(ptr noundef %6) #7
  tail call void @blk_mq_end_request(ptr noundef %add.ptr.i.i.i, i8 noundef zeroext 0) #7
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bsg_job_get(ptr noundef %job) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #7
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #7, !srcloc !34
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !32

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !32

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #7
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %conv.i = zext i1 %tobool12.i.i.i.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bsg_job_done(ptr noundef %job, i32 noundef %result, i32 noundef %reply_payload_rcv_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %job, i32 -192
  %result1 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 9
  %0 = ptrtoint ptr %result1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %result, ptr %result1, align 4
  %reply_payload_rcv_len2 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 10
  %1 = ptrtoint ptr %reply_payload_rcv_len2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %reply_payload_rcv_len, ptr %reply_payload_rcv_len2, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %queue_flags.i, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %blk_should_fake_timeout.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

blk_should_fake_timeout.exit:                     ; preds = %entry
  %call1.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %3) #7
  br i1 %call1.i, label %blk_should_fake_timeout.exit.if.end_crit_edge, label %blk_should_fake_timeout.exit.if.then_crit_edge, !prof !35

blk_should_fake_timeout.exit.if.then_crit_edge:   ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

blk_should_fake_timeout.exit.if.end_crit_edge:    ; preds = %blk_should_fake_timeout.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %blk_should_fake_timeout.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @blk_mq_complete_request(ptr noundef %add.ptr.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %blk_should_fake_timeout.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bsg_remove_queue(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %q, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 61
  %0 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tag_set, align 8
  %bd = getelementptr inbounds %struct.bsg_set, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd, align 4
  tail call void @bsg_unregister_queue(ptr noundef %3) #7
  tail call void @blk_cleanup_queue(ptr noundef nonnull %q) #7
  tail call void @blk_mq_free_tag_set(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_unregister_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bsg_setup_queue(ptr noundef %dev, ptr noundef %name, ptr noundef %job_fn, ptr noundef %timeout, i32 noundef %dd_job_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 196) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %job_fn2 = getelementptr inbounds %struct.bsg_set, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %job_fn2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %job_fn, ptr %job_fn2, align 4
  %timeout_fn = getelementptr inbounds %struct.bsg_set, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %timeout_fn to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %timeout, ptr %timeout_fn, align 8
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bsg_mq_ops, ptr %ops, align 8
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %nr_hw_queues, align 4
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %queue_depth, align 8
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %numa_node, align 4
  %add = add i32 %dd_job_size, 72
  %cmd_size = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %cmd_size, align 8
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 96, ptr %flags, align 4
  %call3 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_tag_set_crit_edge

if.end.out_tag_set_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_tag_set

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @blk_mq_init_queue(ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.out_queue_crit_edge, label %if.end11

if.end6.out_queue_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_queue

if.end11:                                         ; preds = %if.end6
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %call7, i32 0, i32 10
  %9 = ptrtoint ptr %queuedata to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %queuedata, align 4
  tail call void @blk_queue_rq_timeout(ptr noundef %call7, i32 noundef 6000) #7
  %call12 = tail call ptr @bsg_register_queue(ptr noundef %call7, ptr noundef %dev, ptr noundef %name, ptr noundef nonnull @bsg_transport_sg_io_fn) #7
  %bd = getelementptr inbounds %struct.bsg_set, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %bd, align 8
  %cmp.i45 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.then15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blk_cleanup_queue(ptr noundef %call7) #7
  br label %out_queue

out_queue:                                        ; preds = %if.then15, %if.end6.out_queue_crit_edge
  %ret.0.in = phi ptr [ %call12, %if.then15 ], [ %call7, %if.end6.out_queue_crit_edge ]
  tail call void @blk_mq_free_tag_set(ptr noundef nonnull %call7.i.i) #7
  br label %out_tag_set

out_tag_set:                                      ; preds = %out_queue, %if.end.out_tag_set_crit_edge
  %ret.1 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.out_tag_set_crit_edge ], [ %ret.0.in, %out_queue ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_tag_set, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.1, %out_tag_set ], [ %call7, %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_init_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsg_register_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bsg_transport_sg_io_fn(ptr noundef %q, ptr noundef %hdr, i32 noundef %mode, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %subprotocol = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %subprotocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subprotocol, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.not = icmp eq i32 %3, 2
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call zeroext i1 @capable(i32 noundef 17) #7
  br i1 %call, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dout_xfer_len = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 12
  %4 = ptrtoint ptr %dout_xfer_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dout_xfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 34, i32 35
  %call4 = tail call ptr @blk_mq_alloc_request(ptr noundef %q, i32 noundef %cond, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %timeout9 = getelementptr inbounds %struct.request, ptr %call4, i32 0, i32 7
  %7 = ptrtoint ptr %timeout9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %timeout, ptr %timeout9, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %call4, i32 1
  %reply11 = getelementptr %struct.request, ptr %call4, i32 1, i32 4
  %8 = ptrtoint ptr %reply11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reply11, align 4
  %10 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 68)
  store ptr %9, ptr %reply11, align 4
  %reply_len = getelementptr %struct.request, ptr %call4, i32 1, i32 6
  %11 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 96, ptr %reply_len, align 4
  %add.ptr = getelementptr %struct.request, ptr %call4, i32 1, i32 14
  %dd_data = getelementptr inbounds %struct.bsg_job, ptr %add.ptr.i, i32 0, i32 13
  %12 = ptrtoint ptr %dd_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %dd_data, align 4
  %request_len = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 3
  %13 = ptrtoint ptr %request_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %request_len, align 4
  %request_len13 = getelementptr %struct.request, ptr %call4, i32 1, i32 5
  %15 = ptrtoint ptr %request_len13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %request_len13, align 4
  %request = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 4
  %16 = ptrtoint ptr %request to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %request, align 8
  %conv = trunc i64 %17 to i32
  %18 = inttoptr i32 %conv to ptr
  %19 = load i32, ptr %request_len, align 4
  %call15 = tail call ptr @memdup_user(ptr noundef %18, i32 noundef %19) #7
  %request16 = getelementptr %struct.request, ptr %call4, i32 1, i32 3
  %20 = ptrtoint ptr %request16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call15, ptr %request16, align 4
  %cmp.i257 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call15 to i32
  br label %out_free_rq

if.end22:                                         ; preds = %if.end8
  %22 = ptrtoint ptr %dout_xfer_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dout_xfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not = icmp eq i32 %23, 0
  br i1 %tobool24.not, label %if.end22.if.else_crit_edge, label %land.lhs.true

if.end22.if.else_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end22
  %din_xfer_len = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 14
  %24 = ptrtoint ptr %din_xfer_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %din_xfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not = icmp eq i32 %25, 0
  br i1 %tobool25.not, label %land.lhs.true.if.else_crit_edge, label %if.then26

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then26:                                        ; preds = %land.lhs.true
  %26 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call4, align 8
  %call28 = tail call ptr @blk_mq_alloc_request(ptr noundef %27, i32 noundef 34, i32 noundef 0) #7
  %bidi_rq = getelementptr %struct.request, ptr %call4, i32 1, i32 12, i32 0, i32 1
  %28 = ptrtoint ptr %bidi_rq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call28, ptr %bidi_rq, align 4
  %cmp.i258 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call28 to i32
  br label %out_free_job_request

if.end34:                                         ; preds = %if.then26
  %30 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call4, align 8
  %din_xferp = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 16
  %32 = ptrtoint ptr %din_xferp to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %din_xferp, align 8
  %conv37 = trunc i64 %33 to i32
  %34 = inttoptr i32 %conv37 to ptr
  %35 = ptrtoint ptr %din_xfer_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %din_xfer_len, align 4
  %call39 = tail call i32 @blk_rq_map_user(ptr noundef %31, ptr noundef %call28, ptr noundef null, ptr noundef %34, i32 noundef %36, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end34.out_free_bidi_rq_crit_edge

if.end34.out_free_bidi_rq_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_bidi_rq

if.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %bidi_rq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bidi_rq, align 4
  %bio44 = getelementptr inbounds %struct.request, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %bio44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bio44, align 8
  br label %if.end47

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end22.if.else_crit_edge
  %bidi_rq45 = getelementptr %struct.request, ptr %call4, i32 1, i32 12, i32 0, i32 1
  %41 = ptrtoint ptr %bidi_rq45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %bidi_rq45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end42
  %.sink = phi ptr [ null, %if.else ], [ %40, %if.end42 ]
  %bidi_bio46 = getelementptr %struct.request, ptr %call4, i32 1, i32 13
  %42 = ptrtoint ptr %bidi_bio46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %.sink, ptr %bidi_bio46, align 4
  %43 = ptrtoint ptr %dout_xfer_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dout_xfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool49.not = icmp eq i32 %44, 0
  br i1 %tobool49.not, label %if.else55, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call4, align 8
  %dout_xferp = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 15
  %47 = ptrtoint ptr %dout_xferp to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %dout_xferp, align 8
  %conv52 = trunc i64 %48 to i32
  %49 = inttoptr i32 %conv52 to ptr
  %call54 = tail call i32 @blk_rq_map_user(ptr noundef %46, ptr noundef %call4, ptr noundef null, ptr noundef %49, i32 noundef %44, i32 noundef 3264) #7
  br label %if.end65

if.else55:                                        ; preds = %if.end47
  %din_xfer_len56 = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 14
  %50 = ptrtoint ptr %din_xfer_len56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %din_xfer_len56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool57.not = icmp eq i32 %51, 0
  br i1 %tobool57.not, label %if.else55.if.end68_crit_edge, label %if.then58

if.else55.if.end68_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then58:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call4, align 8
  %din_xferp60 = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 16
  %54 = ptrtoint ptr %din_xferp60 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %din_xferp60, align 8
  %conv61 = trunc i64 %55 to i32
  %56 = inttoptr i32 %conv61 to ptr
  %call63 = tail call i32 @blk_rq_map_user(ptr noundef %53, ptr noundef %call4, ptr noundef null, ptr noundef %56, i32 noundef %51, i32 noundef 3264) #7
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %if.then50
  %ret.0 = phi i32 [ %call54, %if.then50 ], [ %call63, %if.then58 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool66.not = icmp eq i32 %ret.0, 0
  br i1 %tobool66.not, label %if.end65.if.end68_crit_edge, label %if.end65.out_unmap_bidi_rq_crit_edge

if.end65.out_unmap_bidi_rq_crit_edge:             ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unmap_bidi_rq

if.end65.if.end68_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.end68:                                         ; preds = %if.end65.if.end68_crit_edge, %if.else55.if.end68_crit_edge
  %bio69 = getelementptr inbounds %struct.request, ptr %call4, i32 0, i32 10
  %57 = ptrtoint ptr %bio69 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bio69, align 8
  %flags = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 18
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %and = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  %call71 = tail call zeroext i8 @blk_execute_rq(ptr noundef %call4, i1 noundef zeroext %tobool70.not) #7
  %result = getelementptr %struct.request, ptr %call4, i32 1, i32 11
  %61 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %result, align 4
  %and72 = and i32 %62, 255
  %device_status = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 23
  %63 = ptrtoint ptr %device_status to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and72, ptr %device_status, align 4
  %64 = load i32, ptr %result, align 4
  %65 = lshr i32 %64, 16
  %and74 = and i32 %65, 255
  %transport_status = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 22
  %66 = ptrtoint ptr %transport_status to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and74, ptr %transport_status, align 8
  %driver_status = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 21
  %67 = ptrtoint ptr %driver_status to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %driver_status, align 4
  %info = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool76.not = icmp ne i32 %and72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool79.not = icmp ne i32 %and74, 0
  %or.cond = select i1 %tobool76.not, i1 true, i1 %tobool79.not
  %spec.store.select = zext i1 %or.cond to i32
  %68 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %spec.store.select, ptr %info, align 4
  %response_len = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 27
  %69 = ptrtoint ptr %response_len to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %response_len, align 4
  %70 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp87 = icmp slt i32 %71, 0
  br i1 %cmp87, label %if.end92.thread, label %if.end92

if.end92.thread:                                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4, ptr %reply_len, align 4
  br label %land.lhs.true95

if.end92:                                         ; preds = %if.end68
  %73 = ptrtoint ptr %reply_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pr = load i32, ptr %reply_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool94.not = icmp eq i32 %.pr, 0
  br i1 %tobool94.not, label %if.end92.if.end111_crit_edge, label %if.end92.land.lhs.true95_crit_edge

if.end92.land.lhs.true95_crit_edge:               ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true95

if.end92.if.end111_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

land.lhs.true95:                                  ; preds = %if.end92.land.lhs.true95_crit_edge, %if.end92.thread
  %ret.1263 = phi i32 [ %71, %if.end92.thread ], [ 0, %if.end92.land.lhs.true95_crit_edge ]
  %74 = phi i32 [ 4, %if.end92.thread ], [ %.pr, %if.end92.land.lhs.true95_crit_edge ]
  %response = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 10
  %75 = ptrtoint ptr %response to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %response, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %76)
  %tobool96.not = icmp eq i64 %76, 0
  br i1 %tobool96.not, label %land.lhs.true95.if.end111_crit_edge, label %if.then97

land.lhs.true95.if.end111_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then97:                                        ; preds = %land.lhs.true95
  %max_response_len = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 9
  %77 = ptrtoint ptr %max_response_len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_response_len, align 4
  %79 = tail call i32 @llvm.umin.i32(i32 %78, i32 %74)
  %conv103 = trunc i64 %76 to i32
  %80 = inttoptr i32 %conv103 to ptr
  %81 = ptrtoint ptr %reply11 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reply11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp9.i.i = icmp slt i32 %79, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then97
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.end111_crit_edge, label %if.then27.i.i, !prof !32

land.rhs16.i.i.if.end111_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %if.end111

if.then.i.i.i:                                    ; preds = %if.then97
  tail call void @__check_object_size(ptr noundef %82, i32 noundef %79, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %83 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %80, i32 %79, i32 -1226833920) #11, !srcloc !36
  %asmresult.i.i = extractvalue { i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %82, i32 noundef %79) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %80, ptr noundef %82, i32 noundef %79) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %79, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %79, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool106.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool106.not, label %if.else108, label %copy_to_user.exit.if.end111_crit_edge

copy_to_user.exit.if.end111_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.else108:                                       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %response_len to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %79, ptr %response_len, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.else108, %copy_to_user.exit.if.end111_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.end111_crit_edge, %land.lhs.true95.if.end111_crit_edge, %if.end92.if.end111_crit_edge
  %ret.3 = phi i32 [ %ret.1263, %land.lhs.true95.if.end111_crit_edge ], [ 0, %if.end92.if.end111_crit_edge ], [ %ret.1263, %if.else108 ], [ -14, %copy_to_user.exit.if.end111_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end111_crit_edge ]
  %dout_resid = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 29
  %85 = ptrtoint ptr %dout_resid to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %dout_resid, align 4
  %bidi_rq112 = getelementptr %struct.request, ptr %call4, i32 1, i32 12, i32 0, i32 1
  %86 = ptrtoint ptr %bidi_rq112 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bidi_rq112, align 4
  %tobool113.not = icmp eq ptr %87, null
  br i1 %tobool113.not, label %if.end111.if.end148_crit_edge, label %if.then114

if.end111.if.end148_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then114:                                       ; preds = %if.end111
  %reply_payload = getelementptr %struct.request, ptr %call4, i32 1, i32 9
  %88 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %reply_payload, align 4
  %reply_payload_rcv_len = getelementptr %struct.request, ptr %call4, i32 1, i32 12
  %90 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %reply_payload_rcv_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp115 = icmp ult i32 %89, %91
  br i1 %cmp115, label %do.end, label %if.else142, !prof !35

do.end:                                           ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #7
  br label %if.end148

if.else142:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %89, %91
  br label %if.end148

if.end148:                                        ; preds = %if.else142, %do.end, %if.end111.if.end148_crit_edge
  %.sink266 = phi i32 [ 0, %do.end ], [ %sub, %if.else142 ], [ 0, %if.end111.if.end148_crit_edge ]
  %din_resid = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 28
  %92 = ptrtoint ptr %din_resid to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.sink266, ptr %din_resid, align 8
  %call149 = tail call i32 @blk_rq_unmap_user(ptr noundef %58) #7
  br label %out_unmap_bidi_rq

out_unmap_bidi_rq:                                ; preds = %if.end148, %if.end65.out_unmap_bidi_rq_crit_edge
  %ret.4 = phi i32 [ %ret.0, %if.end65.out_unmap_bidi_rq_crit_edge ], [ %ret.3, %if.end148 ]
  %bidi_rq150 = getelementptr %struct.request, ptr %call4, i32 1, i32 12, i32 0, i32 1
  %93 = ptrtoint ptr %bidi_rq150 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bidi_rq150, align 4
  %tobool151.not = icmp eq ptr %94, null
  br i1 %tobool151.not, label %out_unmap_bidi_rq.out_free_bidi_rq_crit_edge, label %if.then152

out_unmap_bidi_rq.out_free_bidi_rq_crit_edge:     ; preds = %out_unmap_bidi_rq
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_bidi_rq

if.then152:                                       ; preds = %out_unmap_bidi_rq
  call void @__sanitizer_cov_trace_pc() #9
  %bidi_bio153 = getelementptr %struct.request, ptr %call4, i32 1, i32 13
  %95 = ptrtoint ptr %bidi_bio153 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bidi_bio153, align 4
  %call154 = tail call i32 @blk_rq_unmap_user(ptr noundef %96) #7
  br label %out_free_bidi_rq

out_free_bidi_rq:                                 ; preds = %if.then152, %out_unmap_bidi_rq.out_free_bidi_rq_crit_edge, %if.end34.out_free_bidi_rq_crit_edge
  %ret.5 = phi i32 [ %call39, %if.end34.out_free_bidi_rq_crit_edge ], [ %ret.4, %if.then152 ], [ %ret.4, %out_unmap_bidi_rq.out_free_bidi_rq_crit_edge ]
  %bidi_rq156 = getelementptr %struct.request, ptr %call4, i32 1, i32 12, i32 0, i32 1
  %97 = ptrtoint ptr %bidi_rq156 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bidi_rq156, align 4
  %tobool157.not = icmp eq ptr %98, null
  br i1 %tobool157.not, label %out_free_bidi_rq.out_free_job_request_crit_edge, label %if.then158

out_free_bidi_rq.out_free_job_request_crit_edge:  ; preds = %out_free_bidi_rq
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_job_request

if.then158:                                       ; preds = %out_free_bidi_rq
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blk_mq_free_request(ptr noundef nonnull %98) #7
  br label %out_free_job_request

out_free_job_request:                             ; preds = %if.then158, %out_free_bidi_rq.out_free_job_request_crit_edge, %if.then31
  %ret.6 = phi i32 [ %29, %if.then31 ], [ %ret.5, %if.then158 ], [ %ret.5, %out_free_bidi_rq.out_free_job_request_crit_edge ]
  %99 = ptrtoint ptr %request16 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %request16, align 4
  tail call void @kfree(ptr noundef %100) #7
  br label %out_free_rq

out_free_rq:                                      ; preds = %out_free_job_request, %if.then19
  %ret.7 = phi i32 [ %21, %if.then19 ], [ %ret.6, %out_free_job_request ]
  tail call void @blk_mq_free_request(ptr noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_rq, %if.then6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ %ret.7, %out_free_rq ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bsg_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  %last_sg.i.i32.i = alloca ptr, align 4
  %last_sg.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %4 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd, align 4
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tag_set, align 8
  tail call void @blk_mq_start_request(ptr noundef %5) #7
  %call = tail call ptr @get_device(ptr noundef %3) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.request, ptr %5, i32 1
  %timeout.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout.i, align 4
  %timeout1.i = getelementptr %struct.request, ptr %5, i32 1, i32 2
  %10 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %timeout1.i, align 4
  %bio.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bio.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.if.end5.i_crit_edge, label %if.then.i

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end
  %request_payload.i = getelementptr %struct.request, ptr %5, i32 1, i32 7
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 19
  %13 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nr_phys_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i.i, label %do.body5.i.i, label %if.end8.i.i.i, !prof !35

do.body5.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bsg-lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

if.end8.i.i.i:                                    ; preds = %if.then.i
  %conv.i.i = zext i16 %14 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 20
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 3264) #12
  %sg_list.i.i = getelementptr inbounds %struct.bsg_buffer, ptr %request_payload.i, i32 0, i32 2
  %15 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i.i, ptr %sg_list.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool12.not.i.i, label %if.end8.i.i.i.bsg_prepare_job.exit_crit_edge, label %bsg_map_buffer.exit.thread.i

if.end8.i.i.i.bsg_prepare_job.exit_crit_edge:     ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bsg_prepare_job.exit

bsg_map_buffer.exit.thread.i:                     ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nr_phys_segments.i.i, align 4
  %conv17.i.i = zext i16 %17 to i32
  tail call void @sg_init_table(ptr noundef nonnull %call9.i.i.i, i32 noundef %conv17.i.i) #7
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 8
  %20 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg_list.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i.i.i) #7
  %22 = ptrtoint ptr %last_sg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %last_sg.i.i.i, align 4
  %call.i.i.i = call i32 @__blk_rq_map_sg(ptr noundef %19, ptr noundef %5, ptr noundef %21, ptr noundef nonnull %last_sg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i.i.i) #7
  %sg_cnt.i.i = getelementptr %struct.request, ptr %5, i32 1, i32 8
  %23 = ptrtoint ptr %sg_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i.i.i, ptr %sg_cnt.i.i, align 4
  %__data_len.i.i.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %__data_len.i.i.i, align 8
  %26 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %request_payload.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %bsg_map_buffer.exit.thread.i, %if.end.if.end5.i_crit_edge
  %bidi_rq.i = getelementptr %struct.request, ptr %5, i32 1, i32 12, i32 0, i32 1
  %27 = ptrtoint ptr %bidi_rq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bidi_rq.i, align 4
  %tobool6.not.i = icmp eq ptr %28, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end3_crit_edge, label %if.then7.i

if.end5.i.if.end3_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then7.i:                                       ; preds = %if.end5.i
  %reply_payload.i = getelementptr %struct.request, ptr %5, i32 1, i32 9
  %nr_phys_segments.i33.i = getelementptr inbounds %struct.request, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %nr_phys_segments.i33.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nr_phys_segments.i33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i34.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i34.i, label %do.body5.i35.i, label %if.end8.i.i63.i, !prof !35

do.body5.i35.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bsg-lib.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 216, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

if.end8.i.i63.i:                                  ; preds = %if.then7.i
  %conv.i36.i = zext i16 %30 to i32
  %mul.i37.i = mul nuw nsw i32 %conv.i36.i, 20
  %call9.i.i62.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i37.i, i32 noundef 3264) #12
  %sg_list.i65.i = getelementptr %struct.request, ptr %5, i32 1, i32 10
  %31 = ptrtoint ptr %sg_list.i65.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i.i62.i, ptr %sg_list.i65.i, align 4
  %tobool12.not.i66.i = icmp eq ptr %call9.i.i62.i, null
  br i1 %tobool12.not.i66.i, label %failjob_rls_rqst_payload.i, label %bsg_map_buffer.exit74.thread.i

bsg_map_buffer.exit74.thread.i:                   ; preds = %if.end8.i.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %nr_phys_segments.i33.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nr_phys_segments.i33.i, align 4
  %conv17.i68.i = zext i16 %33 to i32
  call void @sg_init_table(ptr noundef nonnull %call9.i.i62.i, i32 noundef %conv17.i68.i) #7
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %28, align 8
  %36 = ptrtoint ptr %sg_list.i65.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg_list.i65.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i.i32.i) #7
  %38 = ptrtoint ptr %last_sg.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %last_sg.i.i32.i, align 4
  %call.i.i69.i = call i32 @__blk_rq_map_sg(ptr noundef %35, ptr noundef nonnull %28, ptr noundef %37, ptr noundef nonnull %last_sg.i.i32.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i.i32.i) #7
  %sg_cnt.i70.i = getelementptr inbounds %struct.bsg_buffer, ptr %reply_payload.i, i32 0, i32 1
  %39 = ptrtoint ptr %sg_cnt.i70.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i.i69.i, ptr %sg_cnt.i70.i, align 4
  %__data_len.i.i71.i = getelementptr inbounds %struct.request, ptr %28, i32 0, i32 8
  %40 = ptrtoint ptr %__data_len.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %__data_len.i.i71.i, align 8
  %42 = ptrtoint ptr %reply_payload.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %reply_payload.i, align 4
  br label %if.end3

failjob_rls_rqst_payload.i:                       ; preds = %if.end8.i.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  %sg_list.i = getelementptr inbounds %struct.bsg_job, ptr %add.ptr.i.i, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sg_list.i, align 4
  call void @kfree(ptr noundef %44) #7
  br label %bsg_prepare_job.exit

bsg_prepare_job.exit:                             ; preds = %failjob_rls_rqst_payload.i, %if.end8.i.i.i.bsg_prepare_job.exit_crit_edge
  %result.i = getelementptr %struct.request, ptr %5, i32 1, i32 11
  %45 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -12, ptr %result.i, align 4
  br label %out

if.end3:                                          ; preds = %bsg_map_buffer.exit74.thread.i, %if.end5.i.if.end3_crit_edge
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %3, ptr %add.ptr.i.i, align 4
  %call16.i = call ptr @get_device(ptr noundef %3) #7
  %kref.i = getelementptr %struct.request, ptr %5, i32 1, i32 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #7
  %47 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 1, ptr %kref.i, align 4
  %job_fn = getelementptr inbounds %struct.bsg_set, ptr %7, i32 0, i32 2
  %48 = ptrtoint ptr %job_fn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %job_fn, align 4
  %call5 = call i32 %49(ptr noundef %add.ptr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i8 0, i8 10
  br label %out

out:                                              ; preds = %if.end3, %bsg_prepare_job.exit
  %sts.0 = phi i8 [ 10, %bsg_prepare_job.exit ], [ %spec.select, %if.end3 ]
  call void @put_device(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %sts.0, %out ], [ 10, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bsg_timeout(ptr noundef %rq, i1 noundef zeroext %reserved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %tag_set = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tag_set, align 8
  %timeout_fn = getelementptr inbounds %struct.bsg_set, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %timeout_fn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timeout_fn, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %5(ptr noundef %rq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bsg_complete(ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  tail call void @bsg_job_put(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bsg_init_rq(ptr nocapture noundef readnone %set, ptr nocapture noundef writeonly %req, i32 noundef %hctx_idx, i32 noundef %numa_node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #10
  %reply = getelementptr %struct.request, ptr %req, i32 1, i32 4
  %1 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %reply, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bsg_exit_rq(ptr nocapture noundef readnone %set, ptr nocapture noundef readonly %req, i32 noundef %hctx_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reply = getelementptr %struct.request, ptr %req, i32 1, i32 4
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_unmap_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__ksymtab_bsg_job_put, !1, !"__ksymtab_bsg_job_put", i1 false, i1 false}
!1 = !{!"../block/bsg-lib.c", i32 173, i32 1}
!2 = !{ptr @__ksymtab_bsg_job_get, !3, !"__ksymtab_bsg_job_get", i1 false, i1 false}
!3 = !{!"../block/bsg-lib.c", i32 179, i32 1}
!4 = !{ptr @__ksymtab_bsg_job_done, !5, !"__ksymtab_bsg_job_done", i1 false, i1 false}
!5 = !{!"../block/bsg-lib.c", i32 199, i32 1}
!6 = !{ptr @__ksymtab_bsg_remove_queue, !7, !"__ksymtab_bsg_remove_queue", i1 false, i1 false}
!7 = !{!"../block/bsg-lib.c", i32 332, i32 1}
!8 = !{ptr @__ksymtab_bsg_setup_queue, !9, !"__ksymtab_bsg_setup_queue", i1 false, i1 false}
!9 = !{!"../block/bsg-lib.c", i32 409, i32 1}
!10 = !{ptr @bsg_mq_ops, !11, !"bsg_mq_ops", i1 false, i1 false}
!11 = !{!"../block/bsg-lib.c", i32 344, i32 32}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/bsg-lib.c", i32 130, i32 7}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148681155}
!31 = !{i64 2148595595, i64 2148595627, i64 2148595656, i64 2148595690, i64 2148595721, i64 2148595744}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2149878928}
!34 = !{i64 1077113, i64 1077137, i64 1077158, i64 1077175, i64 1077192}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2152699139, i64 2152699164}
!37 = !{i64 2154607601, i64 2154608081, i64 2154607638, i64 2154607694, i64 2154607728, i64 2154607752, i64 2154607793, i64 2154607814, i64 2154607842, i64 2154607876}
