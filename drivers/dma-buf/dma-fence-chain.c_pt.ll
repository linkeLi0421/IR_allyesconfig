; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/dma-fence-chain.c_pt.bc'
source_filename = "../drivers/dma-buf/dma-fence-chain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dma_fence_chain_walk\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_fence_chain_walk\09\09\09\09"
module asm "\09.long\09__crc_dma_fence_chain_walk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_chain_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_chain_walk\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_chain_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_fence_chain_find_seqno\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_fence_chain_find_seqno\09\09\09\09"
module asm "\09.long\09__crc_dma_fence_chain_find_seqno\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_chain_find_seqno:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_chain_find_seqno\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_chain_find_seqno:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_fence_chain_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_fence_chain_ops\09\09\09\09"
module asm "\09.long\09__crc_dma_fence_chain_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_chain_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_chain_ops\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_chain_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_fence_chain_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_fence_chain_init\09\09\09\09"
module asm "\09.long\09__crc_dma_fence_chain_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_fence_chain_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_fence_chain_init\22\09\09\09\09\09"
module asm "__kstrtabns_dma_fence_chain_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dma_fence_chain = type { %struct.dma_fence, ptr, i64, ptr, %union.anon.3, %struct.spinlock }
%union.anon.3 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_dma_fence_chain_walk = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_chain_walk = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_chain_walk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_chain_walk to i32), ptr @__kstrtab_dma_fence_chain_walk, ptr @__kstrtabns_dma_fence_chain_walk }, section "___ksymtab+dma_fence_chain_walk", align 4
@__kstrtab_dma_fence_chain_find_seqno = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_chain_find_seqno = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_chain_find_seqno = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_chain_find_seqno to i32), ptr @__kstrtab_dma_fence_chain_find_seqno, ptr @__kstrtabns_dma_fence_chain_find_seqno }, section "___ksymtab+dma_fence_chain_find_seqno", align 4
@dma_fence_chain_ops = dso_local constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 1, ptr @dma_fence_chain_get_driver_name, ptr @dma_fence_chain_get_timeline_name, ptr @dma_fence_chain_enable_signaling, ptr @dma_fence_chain_signaled, ptr null, ptr @dma_fence_chain_release, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_dma_fence_chain_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_chain_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_chain_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_chain_ops to i32), ptr @__kstrtab_dma_fence_chain_ops, ptr @__kstrtabns_dma_fence_chain_ops }, section "___ksymtab+dma_fence_chain_ops", align 4
@dma_fence_chain_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chain->lock\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_dma_fence_chain_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_fence_chain_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_fence_chain_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_fence_chain_init to i32), ptr @__kstrtab_dma_fence_chain_init, ptr @__kstrtabns_dma_fence_chain_init }, section "___ksymtab+dma_fence_chain_init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@dma_fence_get_rcu_safe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma_fence_chain\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unbound\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"dma_fence_chain_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 211, i32 28 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 239, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 695, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 329, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 723, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 114, i32 16 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [37 x i8] c"../drivers/dma-buf/dma-fence-chain.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 119, i32 16 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_dma_fence_chain_find_seqno, ptr @__ksymtab_dma_fence_chain_init, ptr @__ksymtab_dma_fence_chain_ops, ptr @__ksymtab_dma_fence_chain_walk, ptr @dma_fence_chain_ops, ptr @dma_fence_chain_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_fence_chain_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_fence_chain_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_fence_chain_walk(ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fence, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp eq ptr %1, @dma_fence_chain_ops
  br i1 %cmp.not.i, label %while.cond.preheader, label %if.then.i

while.cond.preheader:                             ; preds = %lor.lhs.false.i
  %call1131 = tail call fastcc ptr @dma_fence_chain_get_prev(ptr noundef nonnull %fence)
  %tobool2.not132 = icmp eq ptr %call1131, null
  br i1 %tobool2.not132, label %while.cond.preheader.if.then.i119_crit_edge, label %to_dma_fence_chain.exit60.lr.ph

while.cond.preheader.if.then.i119_crit_edge:      ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i119

to_dma_fence_chain.exit60.lr.ph:                  ; preds = %while.cond.preheader
  %prev15 = getelementptr inbounds %struct.dma_fence_chain, ptr %fence, i32 0, i32 1
  br label %to_dma_fence_chain.exit60

if.then.i:                                        ; preds = %lor.lhs.false.i
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

to_dma_fence_chain.exit60:                        ; preds = %dma_fence_put.exit113.to_dma_fence_chain.exit60_crit_edge, %to_dma_fence_chain.exit60.lr.ph
  %call1133 = phi ptr [ %call1131, %to_dma_fence_chain.exit60.lr.ph ], [ %call1, %dma_fence_put.exit113.to_dma_fence_chain.exit60_crit_edge ]
  %ops.i55 = getelementptr inbounds %struct.dma_fence, ptr %call1133, i32 0, i32 1
  %3 = ptrtoint ptr %ops.i55 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i55, align 4
  %cmp.not.i56.not = icmp eq ptr %4, @dma_fence_chain_ops
  br i1 %cmp.not.i56.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %to_dma_fence_chain.exit60
  %fence6 = getelementptr inbounds %struct.dma_fence_chain, ptr %call1133, i32 0, i32 3
  %5 = ptrtoint ptr %fence6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fence6, align 8
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i61 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i61, label %if.end.i, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.i:                                         ; preds = %if.then5
  %ops.i62 = getelementptr inbounds %struct.dma_fence, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i62 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i62, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end.i.if.then.i119_crit_edge, label %land.lhs.true.i

if.end.i.if.then.i119_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i119

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %12(ptr noundef %6) #8
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.then.i119_crit_edge

land.lhs.true.i.if.then.i119_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i119

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %6) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then5.i, %if.then5.if.end9_crit_edge
  %call10 = tail call fastcc ptr @dma_fence_chain_get_prev(ptr noundef nonnull %call1133)
  br label %if.end14

if.else:                                          ; preds = %to_dma_fence_chain.exit60
  %flags.i64 = getelementptr inbounds %struct.dma_fence, ptr %call1133, i32 0, i32 5
  %13 = ptrtoint ptr %flags.i64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i64, align 4
  %and1.i.i65 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i65)
  %tobool.not.i66 = icmp eq i32 %and1.i.i65, 0
  br i1 %tobool.not.i66, label %if.end.i70, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i70:                                       ; preds = %if.else
  %15 = ptrtoint ptr %ops.i55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i55, align 4
  %signaled.i68 = getelementptr inbounds %struct.dma_fence_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %signaled.i68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signaled.i68, align 4
  %tobool1.not.i69 = icmp eq ptr %18, null
  br i1 %tobool1.not.i69, label %if.end.i70.if.then.i119_crit_edge, label %land.lhs.true.i72

if.end.i70.if.then.i119_crit_edge:                ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i119

land.lhs.true.i72:                                ; preds = %if.end.i70
  %call4.i71 = tail call zeroext i1 %18(ptr noundef nonnull %call1133) #8
  br i1 %call4.i71, label %if.then5.i74, label %land.lhs.true.i72.if.then.i119_crit_edge

land.lhs.true.i72.if.then.i119_crit_edge:         ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i119

if.then5.i74:                                     ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i73 = tail call i32 @dma_fence_signal(ptr noundef nonnull %call1133) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then5.i74, %if.else.if.end14_crit_edge, %if.end9
  %replacement.0 = phi ptr [ %call10, %if.end9 ], [ null, %if.then5.i74 ], [ null, %if.else.if.end14_crit_edge ]
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev15, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  %19 = ptrtoint ptr %call1133 to i32
  %20 = ptrtoint ptr %replacement.0 to i32
  tail call void @llvm.prefetch.p0(ptr %prev15, i32 1, i32 3, i32 1) #8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end14
  %21 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %prev15, i32 %19, i32 %20) #8, !srcloc !45
  %asmresult.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i77 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i77, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %21, 1
  %22 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  %cmp = icmp eq ptr %call1133, %22
  br i1 %cmp, label %if.then32, label %if.else33

if.then32:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool.not.i78 = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool.not.i78, label %if.then32.if.then.i107_crit_edge, label %if.then.i83

if.then32.if.then.i107_crit_edge:                 ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i107

if.then.i83:                                      ; preds = %if.then32
  %refcount.i79 = getelementptr inbounds %struct.dma_fence, ptr %call1133, i32 0, i32 6
  %call.i.i.i.i.i.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i79, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i79, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i79, ptr %refcount.i79, i32 1, ptr elementtype(i32) %refcount.i79) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i81 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i81)
  %cmp.i.i.i.i.i82 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i81, 1
  br i1 %cmp.i.i.i.i.i82, label %if.then.i.i87, label %if.end5.i.i.i.i.i85

if.end5.i.i.i.i.i85:                              ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i81)
  %.not.i.i.i.i.i84 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i81, 0
  br i1 %.not.i.i.i.i.i84, label %if.end5.i.i.i.i.i85.if.then.i107_crit_edge, label %if.then10.i.i.i.i.i86, !prof !42

if.end5.i.i.i.i.i85.if.then.i107_crit_edge:       ; preds = %if.end5.i.i.i.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i107

if.then10.i.i.i.i.i86:                            ; preds = %if.end5.i.i.i.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i79, i32 noundef 3) #8
  br label %if.then.i107

if.then.i.i87:                                    ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i79) #8
  br label %if.then.i107

if.else33:                                        ; preds = %__cmpxchg.exit
  %tobool.not.i90 = icmp eq ptr %replacement.0, null
  br i1 %tobool.not.i90, label %if.else33.if.then.i107_crit_edge, label %if.then.i95

if.else33.if.then.i107_crit_edge:                 ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i107

if.then.i95:                                      ; preds = %if.else33
  %refcount.i91 = getelementptr inbounds %struct.dma_fence, ptr %replacement.0, i32 0, i32 6
  %call.i.i.i.i.i.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i91, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i91, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i91, ptr %refcount.i91, i32 1, ptr elementtype(i32) %refcount.i91) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i93 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i93)
  %cmp.i.i.i.i.i94 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i93, 1
  br i1 %cmp.i.i.i.i.i94, label %if.then.i.i99, label %if.end5.i.i.i.i.i97

if.end5.i.i.i.i.i97:                              ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i93)
  %.not.i.i.i.i.i96 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i93, 0
  br i1 %.not.i.i.i.i.i96, label %if.end5.i.i.i.i.i97.if.then.i107_crit_edge, label %if.then10.i.i.i.i.i98, !prof !42

if.end5.i.i.i.i.i97.if.then.i107_crit_edge:       ; preds = %if.end5.i.i.i.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i107

if.then10.i.i.i.i.i98:                            ; preds = %if.end5.i.i.i.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i91, i32 noundef 3) #8
  br label %if.then.i107

if.then.i.i99:                                    ; preds = %if.then.i95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i91) #8
  br label %if.then.i107

if.then.i107:                                     ; preds = %if.then.i.i99, %if.then10.i.i.i.i.i98, %if.end5.i.i.i.i.i97.if.then.i107_crit_edge, %if.else33.if.then.i107_crit_edge, %if.then.i.i87, %if.then10.i.i.i.i.i86, %if.end5.i.i.i.i.i85.if.then.i107_crit_edge, %if.then32.if.then.i107_crit_edge
  %refcount.i103 = getelementptr inbounds %struct.dma_fence, ptr %call1133, i32 0, i32 6
  %call.i.i.i.i.i.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i103, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i103, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i103, ptr %refcount.i103, i32 1, ptr elementtype(i32) %refcount.i103) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i105 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i105)
  %cmp.i.i.i.i.i106 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i105, 1
  br i1 %cmp.i.i.i.i.i106, label %if.then.i.i111, label %if.end5.i.i.i.i.i109

if.end5.i.i.i.i.i109:                             ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i105)
  %.not.i.i.i.i.i108 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i105, 0
  br i1 %.not.i.i.i.i.i108, label %if.end5.i.i.i.i.i109.dma_fence_put.exit113_crit_edge, label %if.then10.i.i.i.i.i110, !prof !42

if.end5.i.i.i.i.i109.dma_fence_put.exit113_crit_edge: ; preds = %if.end5.i.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit113

if.then10.i.i.i.i.i110:                           ; preds = %if.end5.i.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i103, i32 noundef 3) #8
  br label %dma_fence_put.exit113

if.then.i.i111:                                   ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i103) #8
  br label %dma_fence_put.exit113

dma_fence_put.exit113:                            ; preds = %if.then.i.i111, %if.then10.i.i.i.i.i110, %if.end5.i.i.i.i.i109.dma_fence_put.exit113_crit_edge
  %call1 = tail call fastcc ptr @dma_fence_chain_get_prev(ptr noundef nonnull %fence)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %dma_fence_put.exit113.if.then.i119_crit_edge, label %dma_fence_put.exit113.to_dma_fence_chain.exit60_crit_edge

dma_fence_put.exit113.to_dma_fence_chain.exit60_crit_edge: ; preds = %dma_fence_put.exit113
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_dma_fence_chain.exit60

dma_fence_put.exit113.if.then.i119_crit_edge:     ; preds = %dma_fence_put.exit113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i119

if.then.i119:                                     ; preds = %dma_fence_put.exit113.if.then.i119_crit_edge, %land.lhs.true.i72.if.then.i119_crit_edge, %if.end.i70.if.then.i119_crit_edge, %land.lhs.true.i.if.then.i119_crit_edge, %if.end.i.if.then.i119_crit_edge, %while.cond.preheader.if.then.i119_crit_edge
  %call1.lcssa = phi ptr [ null, %while.cond.preheader.if.then.i119_crit_edge ], [ %call1133, %land.lhs.true.i72.if.then.i119_crit_edge ], [ %call1133, %if.end.i70.if.then.i119_crit_edge ], [ %call1133, %land.lhs.true.i.if.then.i119_crit_edge ], [ %call1133, %if.end.i.if.then.i119_crit_edge ], [ null, %dma_fence_put.exit113.if.then.i119_crit_edge ]
  %refcount.i115 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i116 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i115, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i115, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i115, ptr %refcount.i115, i32 1, ptr elementtype(i32) %refcount.i115) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i117 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i117)
  %cmp.i.i.i.i.i118 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i117, 1
  br i1 %cmp.i.i.i.i.i118, label %if.then.i.i123, label %if.end5.i.i.i.i.i121

if.end5.i.i.i.i.i121:                             ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i117)
  %.not.i.i.i.i.i120 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i117, 0
  br i1 %.not.i.i.i.i.i120, label %if.end5.i.i.i.i.i121.cleanup_crit_edge, label %if.then10.i.i.i.i.i122, !prof !42

if.end5.i.i.i.i.i121.cleanup_crit_edge:           ; preds = %if.end5.i.i.i.i.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i122:                           ; preds = %if.end5.i.i.i.i.i121
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i115, i32 noundef 3) #8
  br label %cleanup

if.then.i.i123:                                   ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i115) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i123, %if.then10.i.i.i.i.i122, %if.end5.i.i.i.i.i121.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i.i ], [ null, %if.then.i.i ], [ %call1.lcssa, %if.end5.i.i.i.i.i121.cleanup_crit_edge ], [ %call1.lcssa, %if.then10.i.i.i.i.i122 ], [ %call1.lcssa, %if.then.i.i123 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dma_fence_chain_get_prev(ptr noundef %chain) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %prev1 = getelementptr inbounds %struct.dma_fence_chain, ptr %chain, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %rcu_read_lock.exit
  %4 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %prev1, align 4
  %call.i2 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4, label %do.body.i.do.end8.i_crit_edge

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

land.lhs.true.i4:                                 ; preds = %do.body.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i4.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i4.do.end8.i_crit_edge:             ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i4
  %.b31.i = load i1, ptr @dma_fence_get_rcu_safe.__warned, align 1
  br i1 %.b31.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i5

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

if.then.i5:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dma_fence_get_rcu_safe.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 329, ptr noundef nonnull @.str.4) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i5, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i4.do.end8.i_crit_edge, %do.body.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %do.end8.i.dma_fence_get_rcu_safe.exit_crit_edge, label %if.end12.i

do.end8.i.dma_fence_get_rcu_safe.exit_crit_edge:  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get_rcu_safe.exit

if.end12.i:                                       ; preds = %do.end8.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %5, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #8
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #8
  %6 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.end12.i
  %8 = phi i32 [ %7, %if.end12.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %11, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !48
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !42

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !42

if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get_rcu.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 0) #8
  %16 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr.i = load i32, ptr %old.i.i.i.i.i.i, align 4
  br label %dma_fence_get_rcu.exit.i

dma_fence_get_rcu.exit.i:                         ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not.i.i = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not.i.i, label %dma_fence_get_rcu.exit.i.do.body.i.backedge_crit_edge, label %if.end16.i

dma_fence_get_rcu.exit.i.do.body.i.backedge_crit_edge: ; preds = %dma_fence_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.backedge

if.end16.i:                                       ; preds = %dma_fence_get_rcu.exit.i
  %18 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prev1, align 4
  %cmp.i = icmp eq ptr %5, %19
  br i1 %cmp.i, label %if.end16.i.dma_fence_get_rcu_safe.exit_crit_edge, label %if.then.i.i

if.end16.i.dma_fence_get_rcu_safe.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get_rcu_safe.exit

if.then.i.i:                                      ; preds = %if.end16.i
  %call.i.i.i.i.i.i.i33.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #8
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i34.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i34.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i34.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i34.i)
  %.not.i.i.i.i.i35.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i34.i, 0
  br i1 %.not.i.i.i.i.i35.i, label %if.end5.i.i.i.i.i.i.do.body.i.backedge_crit_edge, label %if.then10.i.i.i.i.i36.i, !prof !42

if.end5.i.i.i.i.i.i.do.body.i.backedge_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.backedge

if.then10.i.i.i.i.i36.i:                          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #8
  br label %do.body.i.backedge

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  call void @dma_fence_release(ptr noundef %refcount.i.i) #8
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i36.i, %if.end5.i.i.i.i.i.i.do.body.i.backedge_crit_edge, %dma_fence_get_rcu.exit.i.do.body.i.backedge_crit_edge
  br label %do.body.i

dma_fence_get_rcu_safe.exit:                      ; preds = %if.end16.i.dma_fence_get_rcu_safe.exit_crit_edge, %do.end8.i.dma_fence_get_rcu_safe.exit_crit_edge
  %call.i6 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i6, label %dma_fence_get_rcu_safe.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

dma_fence_get_rcu_safe.exit.rcu_read_unlock.exit_crit_edge: ; preds = %dma_fence_get_rcu_safe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %dma_fence_get_rcu_safe.exit
  %call1.i7 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %dma_fence_get_rcu_safe.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %21 = call i32 @llvm.read_register.i32(metadata !30) #8
  %and.i.i.i.i.i13 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_fence_chain_find_seqno(ptr nocapture noundef %pfence, i64 noundef %seqno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %seqno)
  %tobool.not = icmp eq i64 %seqno, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pfence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfence, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp eq ptr %3, @dma_fence_chain_ops
  br i1 %cmp.not.i, label %lor.lhs.false, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %lor.lhs.false.i
  %seqno2 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %seqno2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %seqno2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %seqno)
  %cmp = icmp ult i64 %5, %seqno
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.then.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !51

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.for.body.lr.ph_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !42

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.for.body.lr.ph_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.for.body.lr.ph_crit_edge
  %8 = ptrtoint ptr %pfence to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %pfence, align 4
  %context9 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %storemerge47 = phi ptr [ %1, %for.body.lr.ph ], [ %call16, %for.inc.for.body_crit_edge ]
  %context = getelementptr inbounds %struct.dma_fence, ptr %storemerge47, i32 0, i32 3
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %context, align 8
  %11 = ptrtoint ptr %context9 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %context9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp10.not = icmp eq i64 %10, %12
  br i1 %cmp10.not, label %to_dma_fence_chain.exit37, label %for.body.if.then.i41_crit_edge

for.body.if.then.i41_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i41

to_dma_fence_chain.exit37:                        ; preds = %for.body
  %ops.i32 = getelementptr inbounds %struct.dma_fence, ptr %storemerge47, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i32, align 4
  %cmp.not.i33 = icmp eq ptr %14, @dma_fence_chain_ops
  %spec.select.i34 = select i1 %cmp.not.i33, ptr %storemerge47, ptr null
  %prev_seqno = getelementptr inbounds %struct.dma_fence_chain, ptr %spec.select.i34, i32 0, i32 2
  %15 = ptrtoint ptr %prev_seqno to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %prev_seqno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %seqno)
  %cmp13 = icmp ult i64 %16, %seqno
  br i1 %cmp13, label %to_dma_fence_chain.exit37.if.then.i41_crit_edge, label %for.inc

to_dma_fence_chain.exit37.if.then.i41_crit_edge:  ; preds = %to_dma_fence_chain.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i41

for.inc:                                          ; preds = %to_dma_fence_chain.exit37
  %call16 = tail call ptr @dma_fence_chain_walk(ptr noundef nonnull %storemerge47)
  %17 = ptrtoint ptr %pfence to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call16, ptr %pfence, align 4
  %tobool7.not = icmp eq ptr %call16, null
  br i1 %tobool7.not, label %for.inc.if.then.i41_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then.i41_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i41

if.then.i41:                                      ; preds = %for.inc.if.then.i41_crit_edge, %to_dma_fence_chain.exit37.if.then.i41_crit_edge, %for.body.if.then.i41_crit_edge
  %call.i.i.i.i.i.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i42 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i42, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dma_fence_chain_get_driver_name(ptr nocapture noundef readnone %fence) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dma_fence_chain_get_timeline_name(ptr nocapture noundef readnone %fence) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dma_fence_chain_enable_signaling(ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fence, null
  br i1 %tobool.not.i, label %entry.cleanup13_crit_edge, label %lor.lhs.false.i

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

lor.lhs.false.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp eq ptr %1, @dma_fence_chain_ops
  br i1 %cmp.not.i, label %if.then.i, label %lor.lhs.false.i.cleanup13_crit_edge

lor.lhs.false.i.cleanup13_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

if.then.i:                                        ; preds = %lor.lhs.false.i
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !51

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then.i32_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !42

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then.i32_crit_edge:          ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i32

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %if.then.i32

if.then.i32:                                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then.i32_crit_edge
  %call.i.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i30)
  %tobool1.not.i.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i30, 0
  br i1 %tobool1.not.i.i.i.i.i31, label %if.then.i32.if.end15.sink.split.i.i.i.i.i37_crit_edge, label %if.else.i.i.i.i.i35, !prof !51

if.then.i32.if.end15.sink.split.i.i.i.i.i37_crit_edge: ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i37

if.else.i.i.i.i.i35:                              ; preds = %if.then.i32
  %add.i.i.i.i.i33 = add i32 %asmresult.i.i.i.i.i.i.i30, 1
  %5 = or i32 %add.i.i.i.i.i33, %asmresult.i.i.i.i.i.i.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i34 = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i34, label %if.else.i.i.i.i.i35.to_dma_fence_chain.exit45.lr.ph_crit_edge, label %if.else.i.i.i.i.i35.if.end15.sink.split.i.i.i.i.i37_crit_edge, !prof !42

if.else.i.i.i.i.i35.if.end15.sink.split.i.i.i.i.i37_crit_edge: ; preds = %if.else.i.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i37

if.else.i.i.i.i.i35.to_dma_fence_chain.exit45.lr.ph_crit_edge: ; preds = %if.else.i.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_dma_fence_chain.exit45.lr.ph

if.end15.sink.split.i.i.i.i.i37:                  ; preds = %if.else.i.i.i.i.i35.if.end15.sink.split.i.i.i.i.i37_crit_edge, %if.then.i32.if.end15.sink.split.i.i.i.i.i37_crit_edge
  %.sink.i.i.i.i.i36 = phi i32 [ 2, %if.then.i32.if.end15.sink.split.i.i.i.i.i37_crit_edge ], [ 1, %if.else.i.i.i.i.i35.if.end15.sink.split.i.i.i.i.i37_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i36) #8
  br label %to_dma_fence_chain.exit45.lr.ph

to_dma_fence_chain.exit45.lr.ph:                  ; preds = %if.end15.sink.split.i.i.i.i.i37, %if.else.i.i.i.i.i35.to_dma_fence_chain.exit45.lr.ph_crit_edge
  %6 = getelementptr inbounds %struct.dma_fence_chain, ptr %fence, i32 0, i32 4
  br label %to_dma_fence_chain.exit45

to_dma_fence_chain.exit45:                        ; preds = %dma_fence_put.exit73.to_dma_fence_chain.exit45_crit_edge, %to_dma_fence_chain.exit45.lr.ph
  %fence.addr.0106 = phi ptr [ %fence, %to_dma_fence_chain.exit45.lr.ph ], [ %call11, %dma_fence_put.exit73.to_dma_fence_chain.exit45_crit_edge ]
  %ops.i40 = getelementptr inbounds %struct.dma_fence, ptr %fence.addr.0106, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i40, align 4
  %cmp.not.i41.not = icmp eq ptr %8, @dma_fence_chain_ops
  br i1 %cmp.not.i41.not, label %cond.end, label %to_dma_fence_chain.exit45.if.then.i51_crit_edge

to_dma_fence_chain.exit45.if.then.i51_crit_edge:  ; preds = %to_dma_fence_chain.exit45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i51

cond.end:                                         ; preds = %to_dma_fence_chain.exit45
  %fence6 = getelementptr inbounds %struct.dma_fence_chain, ptr %fence.addr.0106, i32 0, i32 3
  %9 = ptrtoint ptr %fence6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fence6, align 8
  %tobool.not.i46 = icmp eq ptr %10, null
  br i1 %tobool.not.i46, label %dma_fence_get.exit57.thread, label %cond.end.if.then.i51_crit_edge

cond.end.if.then.i51_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i51

if.then.i51:                                      ; preds = %cond.end.if.then.i51_crit_edge, %to_dma_fence_chain.exit45.if.then.i51_crit_edge
  %cond97 = phi ptr [ %10, %cond.end.if.then.i51_crit_edge ], [ %fence.addr.0106, %to_dma_fence_chain.exit45.if.then.i51_crit_edge ]
  %refcount.i47 = getelementptr inbounds %struct.dma_fence, ptr %cond97, i32 0, i32 6
  %call.i.i.i.i.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i47, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i47, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i47, ptr %refcount.i47, i32 1, ptr elementtype(i32) %refcount.i47) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i49 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i49)
  %tobool1.not.i.i.i.i.i50 = icmp eq i32 %asmresult.i.i.i.i.i.i.i49, 0
  br i1 %tobool1.not.i.i.i.i.i50, label %if.then.i51.if.end15.sink.split.i.i.i.i.i56_crit_edge, label %if.else.i.i.i.i.i54, !prof !51

if.then.i51.if.end15.sink.split.i.i.i.i.i56_crit_edge: ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i56

if.else.i.i.i.i.i54:                              ; preds = %if.then.i51
  %add.i.i.i.i.i52 = add i32 %asmresult.i.i.i.i.i.i.i49, 1
  %12 = or i32 %add.i.i.i.i.i52, %asmresult.i.i.i.i.i.i.i49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i53 = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i53, label %if.else.i.i.i.i.i54.dma_fence_get.exit57_crit_edge, label %if.else.i.i.i.i.i54.if.end15.sink.split.i.i.i.i.i56_crit_edge, !prof !42

if.else.i.i.i.i.i54.if.end15.sink.split.i.i.i.i.i56_crit_edge: ; preds = %if.else.i.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i56

if.else.i.i.i.i.i54.dma_fence_get.exit57_crit_edge: ; preds = %if.else.i.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_get.exit57

if.end15.sink.split.i.i.i.i.i56:                  ; preds = %if.else.i.i.i.i.i54.if.end15.sink.split.i.i.i.i.i56_crit_edge, %if.then.i51.if.end15.sink.split.i.i.i.i.i56_crit_edge
  %.sink.i.i.i.i.i55 = phi i32 [ 2, %if.then.i51.if.end15.sink.split.i.i.i.i.i56_crit_edge ], [ 1, %if.else.i.i.i.i.i54.if.end15.sink.split.i.i.i.i.i56_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i47, i32 noundef %.sink.i.i.i.i.i55) #8
  br label %dma_fence_get.exit57

dma_fence_get.exit57:                             ; preds = %if.end15.sink.split.i.i.i.i.i56, %if.else.i.i.i.i.i54.dma_fence_get.exit57_crit_edge
  %call8 = tail call i32 @dma_fence_add_callback(ptr noundef nonnull %cond97, ptr noundef %6, ptr noundef nonnull @dma_fence_chain_cb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %dma_fence_get.exit57.if.then.i61_crit_edge, label %if.then.i68

dma_fence_get.exit57.if.then.i61_crit_edge:       ; preds = %dma_fence_get.exit57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i61

dma_fence_get.exit57.thread:                      ; preds = %cond.end
  %call8118 = tail call i32 @dma_fence_add_callback(ptr noundef null, ptr noundef %6, ptr noundef nonnull @dma_fence_chain_cb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8118)
  %tobool9.not119 = icmp eq i32 %call8118, 0
  br i1 %tobool9.not119, label %dma_fence_get.exit57.thread.if.then.i61_crit_edge, label %dma_fence_get.exit57.thread.dma_fence_put.exit73_crit_edge

dma_fence_get.exit57.thread.dma_fence_put.exit73_crit_edge: ; preds = %dma_fence_get.exit57.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit73

dma_fence_get.exit57.thread.if.then.i61_crit_edge: ; preds = %dma_fence_get.exit57.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i61

if.then.i61:                                      ; preds = %dma_fence_get.exit57.thread.if.then.i61_crit_edge, %dma_fence_get.exit57.if.then.i61_crit_edge
  %refcount.i59 = getelementptr inbounds %struct.dma_fence, ptr %fence.addr.0106, i32 0, i32 6
  %call.i.i.i.i.i.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i59, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i59, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i59, ptr %refcount.i59, i32 1, ptr elementtype(i32) %refcount.i59) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i62 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i62, label %if.end5.i.i.i.i.i.cleanup13_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.cleanup13_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i59, i32 noundef 3) #8
  br label %cleanup13

if.then.i.i:                                      ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i59) #8
  br label %cleanup13

if.then.i68:                                      ; preds = %dma_fence_get.exit57
  %refcount.i64 = getelementptr inbounds %struct.dma_fence, ptr %cond97, i32 0, i32 6
  %call.i.i.i.i.i.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i64, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i64, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i64, ptr %refcount.i64, i32 1, ptr elementtype(i32) %refcount.i64) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i66 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i66)
  %cmp.i.i.i.i.i67 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i66, 1
  br i1 %cmp.i.i.i.i.i67, label %if.then.i.i72, label %if.end5.i.i.i.i.i70

if.end5.i.i.i.i.i70:                              ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i66)
  %.not.i.i.i.i.i69 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i66, 0
  br i1 %.not.i.i.i.i.i69, label %if.end5.i.i.i.i.i70.dma_fence_put.exit73_crit_edge, label %if.then10.i.i.i.i.i71, !prof !42

if.end5.i.i.i.i.i70.dma_fence_put.exit73_crit_edge: ; preds = %if.end5.i.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit73

if.then10.i.i.i.i.i71:                            ; preds = %if.end5.i.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i64, i32 noundef 3) #8
  br label %dma_fence_put.exit73

if.then.i.i72:                                    ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i64) #8
  br label %dma_fence_put.exit73

dma_fence_put.exit73:                             ; preds = %if.then.i.i72, %if.then10.i.i.i.i.i71, %if.end5.i.i.i.i.i70.dma_fence_put.exit73_crit_edge, %dma_fence_get.exit57.thread.dma_fence_put.exit73_crit_edge
  %call11 = tail call ptr @dma_fence_chain_walk(ptr noundef nonnull %fence.addr.0106)
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.then.i79, label %dma_fence_put.exit73.to_dma_fence_chain.exit45_crit_edge

dma_fence_put.exit73.to_dma_fence_chain.exit45_crit_edge: ; preds = %dma_fence_put.exit73
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_dma_fence_chain.exit45

if.then.i79:                                      ; preds = %dma_fence_put.exit73
  %refcount.i75 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i75, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i75, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i75, ptr %refcount.i75, i32 1, ptr elementtype(i32) %refcount.i75) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i77 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i77)
  %cmp.i.i.i.i.i78 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i77, 1
  br i1 %cmp.i.i.i.i.i78, label %if.then.i.i83, label %if.end5.i.i.i.i.i81

if.end5.i.i.i.i.i81:                              ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i77)
  %.not.i.i.i.i.i80 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i77, 0
  br i1 %.not.i.i.i.i.i80, label %if.end5.i.i.i.i.i81.cleanup13_crit_edge, label %if.then10.i.i.i.i.i82, !prof !42

if.end5.i.i.i.i.i81.cleanup13_crit_edge:          ; preds = %if.end5.i.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

if.then10.i.i.i.i.i82:                            ; preds = %if.end5.i.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i75, i32 noundef 3) #8
  br label %cleanup13

if.then.i.i83:                                    ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i75) #8
  br label %cleanup13

cleanup13:                                        ; preds = %if.then.i.i83, %if.then10.i.i.i.i.i82, %if.end5.i.i.i.i.i81.cleanup13_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup13_crit_edge, %lor.lhs.false.i.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %tobool.not103 = phi i1 [ false, %if.then.i.i83 ], [ false, %if.then10.i.i.i.i.i82 ], [ false, %if.end5.i.i.i.i.i81.cleanup13_crit_edge ], [ true, %if.then.i.i ], [ true, %if.then10.i.i.i.i.i ], [ true, %if.end5.i.i.i.i.i.cleanup13_crit_edge ], [ false, %lor.lhs.false.i.cleanup13_crit_edge ], [ false, %entry.cleanup13_crit_edge ]
  ret i1 %tobool.not103
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dma_fence_chain_signaled(ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fence, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.then.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !51

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.to_dma_fence_chain.exit.preheader_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !42

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.to_dma_fence_chain.exit.preheader_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_dma_fence_chain.exit.preheader

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %to_dma_fence_chain.exit.preheader

to_dma_fence_chain.exit.preheader:                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.to_dma_fence_chain.exit.preheader_crit_edge
  br label %to_dma_fence_chain.exit

to_dma_fence_chain.exit:                          ; preds = %for.inc.to_dma_fence_chain.exit_crit_edge, %to_dma_fence_chain.exit.preheader
  %fence.addr.031 = phi ptr [ %call6, %for.inc.to_dma_fence_chain.exit_crit_edge ], [ %fence, %to_dma_fence_chain.exit.preheader ]
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence.addr.031, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.not.i.not = icmp eq ptr %3, @dma_fence_chain_ops
  br i1 %cmp.not.i.not, label %cond.true, label %to_dma_fence_chain.exit.cond.end_crit_edge

to_dma_fence_chain.exit.cond.end_crit_edge:       ; preds = %to_dma_fence_chain.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %to_dma_fence_chain.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fence3 = getelementptr inbounds %struct.dma_fence_chain, ptr %fence.addr.031, i32 0, i32 3
  %4 = ptrtoint ptr %fence3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %to_dma_fence_chain.exit.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ %fence.addr.031, %to_dma_fence_chain.exit.cond.end_crit_edge ]
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %cond, i32 0, i32 5
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i14 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i14, label %if.end.i, label %cond.end.for.inc_crit_edge

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %cond.end
  %ops.i15 = getelementptr inbounds %struct.dma_fence, ptr %cond, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i15, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.end.i.if.then.i20_crit_edge, label %land.lhs.true.i

if.end.i.if.then.i20_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i20

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %11(ptr noundef %cond) #8
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.then.i20_crit_edge

land.lhs.true.i.if.then.i20_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i20

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %cond) #8
  br label %for.inc

if.then.i20:                                      ; preds = %land.lhs.true.i.if.then.i20_crit_edge, %if.end.i.if.then.i20_crit_edge
  %refcount.i18 = getelementptr inbounds %struct.dma_fence, ptr %fence.addr.031, i32 0, i32 6
  %call.i.i.i.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i18, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i18, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i18, ptr %refcount.i18, i32 1, ptr elementtype(i32) %refcount.i18) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i21 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i21, label %if.end5.i.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.return_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i18, i32 noundef 3) #8
  br label %return

if.then.i.i:                                      ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i18) #8
  br label %return

for.inc:                                          ; preds = %if.then5.i, %cond.end.for.inc_crit_edge
  %call6 = tail call ptr @dma_fence_chain_walk(ptr noundef nonnull %fence.addr.031)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %for.inc.return_crit_edge, label %for.inc.to_dma_fence_chain.exit_crit_edge

for.inc.to_dma_fence_chain.exit_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_dma_fence_chain.exit

for.inc.return_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %for.inc.return_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  %tobool.not28 = phi i1 [ false, %if.then.i.i ], [ false, %if.then10.i.i.i.i.i ], [ false, %if.end5.i.i.i.i.i.return_crit_edge ], [ true, %entry.return_crit_edge ], [ true, %for.inc.return_crit_edge ]
  ret i1 %tobool.not28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_fence_chain_release(ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fence, null
  br i1 %tobool.not.i, label %entry.to_dma_fence_chain.exit_crit_edge, label %lor.lhs.false.i

entry.to_dma_fence_chain.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_dma_fence_chain.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp eq ptr %1, @dma_fence_chain_ops
  %spec.select.i = select i1 %cmp.not.i, ptr %fence, ptr null
  br label %to_dma_fence_chain.exit

to_dma_fence_chain.exit:                          ; preds = %lor.lhs.false.i, %entry.to_dma_fence_chain.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.to_dma_fence_chain.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %prev1 = getelementptr inbounds %struct.dma_fence_chain, ptr %retval.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev1, align 8
  %tobool.not65 = icmp eq ptr %3, null
  br i1 %tobool.not65, label %to_dma_fence_chain.exit.dma_fence_put.exit49_crit_edge, label %to_dma_fence_chain.exit.while.body_crit_edge

to_dma_fence_chain.exit.while.body_crit_edge:     ; preds = %to_dma_fence_chain.exit
  br label %while.body

to_dma_fence_chain.exit.dma_fence_put.exit49_crit_edge: ; preds = %to_dma_fence_chain.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit49

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %to_dma_fence_chain.exit.while.body_crit_edge
  %4 = phi ptr [ %14, %cleanup.while.body_crit_edge ], [ %3, %to_dma_fence_chain.exit.while.body_crit_edge ]
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %while.body.if.then.i44_crit_edge, label %to_dma_fence_chain.exit37

while.body.if.then.i44_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i44

to_dma_fence_chain.exit37:                        ; preds = %while.body
  %ops.i32 = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i32, align 4
  %cmp.not.i33.not = icmp eq ptr %8, @dma_fence_chain_ops
  br i1 %cmp.not.i33.not, label %if.then.i, label %to_dma_fence_chain.exit37.if.then.i44_crit_edge

to_dma_fence_chain.exit37.if.then.i44_crit_edge:  ; preds = %to_dma_fence_chain.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i44

if.then.i:                                        ; preds = %to_dma_fence_chain.exit37
  %prev7 = getelementptr inbounds %struct.dma_fence_chain, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev7, align 8
  %11 = ptrtoint ptr %prev1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %prev1, align 8
  store volatile ptr null, ptr %prev7, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge
  %13 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev1, align 8
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %cleanup.dma_fence_put.exit49_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.dma_fence_put.exit49_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit49

if.then.i44:                                      ; preds = %to_dma_fence_chain.exit37.if.then.i44_crit_edge, %while.body.if.then.i44_crit_edge
  %call.i.i.i.i.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i42 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i42)
  %cmp.i.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i42, 1
  br i1 %cmp.i.i.i.i.i43, label %if.then.i.i48, label %if.end5.i.i.i.i.i46

if.end5.i.i.i.i.i46:                              ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i42)
  %.not.i.i.i.i.i45 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i42, 0
  br i1 %.not.i.i.i.i.i45, label %if.end5.i.i.i.i.i46.dma_fence_put.exit49_crit_edge, label %if.then10.i.i.i.i.i47, !prof !42

if.end5.i.i.i.i.i46.dma_fence_put.exit49_crit_edge: ; preds = %if.end5.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit49

if.then10.i.i.i.i.i47:                            ; preds = %if.end5.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %dma_fence_put.exit49

if.then.i.i48:                                    ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount) #8
  br label %dma_fence_put.exit49

dma_fence_put.exit49:                             ; preds = %if.then.i.i48, %if.then10.i.i.i.i.i47, %if.end5.i.i.i.i.i46.dma_fence_put.exit49_crit_edge, %cleanup.dma_fence_put.exit49_crit_edge, %to_dma_fence_chain.exit.dma_fence_put.exit49_crit_edge
  %fence22 = getelementptr inbounds %struct.dma_fence_chain, ptr %retval.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %fence22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fence22, align 8
  %tobool.not.i50 = icmp eq ptr %17, null
  br i1 %tobool.not.i50, label %dma_fence_put.exit49.dma_fence_put.exit60_crit_edge, label %if.then.i55

dma_fence_put.exit49.dma_fence_put.exit60_crit_edge: ; preds = %dma_fence_put.exit49
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit60

if.then.i55:                                      ; preds = %dma_fence_put.exit49
  %refcount.i51 = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 6
  %call.i.i.i.i.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i51, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i51, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i51, ptr %refcount.i51, i32 1, ptr elementtype(i32) %refcount.i51) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i53 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i53)
  %cmp.i.i.i.i.i54 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i53, 1
  br i1 %cmp.i.i.i.i.i54, label %if.then.i.i59, label %if.end5.i.i.i.i.i57

if.end5.i.i.i.i.i57:                              ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i53)
  %.not.i.i.i.i.i56 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i53, 0
  br i1 %.not.i.i.i.i.i56, label %if.end5.i.i.i.i.i57.dma_fence_put.exit60_crit_edge, label %if.then10.i.i.i.i.i58, !prof !42

if.end5.i.i.i.i.i57.dma_fence_put.exit60_crit_edge: ; preds = %if.end5.i.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit60

if.then10.i.i.i.i.i58:                            ; preds = %if.end5.i.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i51, i32 noundef 3) #8
  br label %dma_fence_put.exit60

if.then.i.i59:                                    ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i51) #8
  br label %dma_fence_put.exit60

dma_fence_put.exit60:                             ; preds = %if.then.i.i59, %if.then10.i.i.i.i.i58, %if.end5.i.i.i.i.i57.dma_fence_put.exit60_crit_edge, %dma_fence_put.exit49.dma_fence_put.exit60_crit_edge
  tail call void @dma_fence_free(ptr noundef %fence) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_fence_chain_init(ptr noundef %chain, ptr noundef %prev, ptr noundef %fence, i64 noundef %seqno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %prev, null
  br i1 %tobool.not.i, label %entry.to_dma_fence_chain.exit_crit_edge, label %lor.lhs.false.i

entry.to_dma_fence_chain.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %to_dma_fence_chain.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %prev, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp ne ptr %1, @dma_fence_chain_ops
  br label %to_dma_fence_chain.exit

to_dma_fence_chain.exit:                          ; preds = %lor.lhs.false.i, %entry.to_dma_fence_chain.exit_crit_edge
  %retval.0.i = phi i1 [ true, %entry.to_dma_fence_chain.exit_crit_edge ], [ %cmp.not.i, %lor.lhs.false.i ]
  %lock = getelementptr inbounds %struct.dma_fence_chain, ptr %chain, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @dma_fence_chain_init.__key, i16 noundef signext 3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %prev26 = getelementptr inbounds %struct.dma_fence_chain, ptr %chain, i32 0, i32 1
  %2 = ptrtoint ptr %prev26 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %prev, ptr %prev26, align 8
  %fence37 = getelementptr inbounds %struct.dma_fence_chain, ptr %chain, i32 0, i32 3
  %3 = ptrtoint ptr %fence37 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fence, ptr %fence37, align 8
  %prev_seqno = getelementptr inbounds %struct.dma_fence_chain, ptr %chain, i32 0, i32 2
  %4 = ptrtoint ptr %prev_seqno to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %prev_seqno, align 8
  br i1 %retval.0.i, label %if.else45.thread, label %land.lhs.true38

if.else45.thread:                                 ; preds = %to_dma_fence_chain.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4673 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #8
  br label %if.end52

land.lhs.true38:                                  ; preds = %to_dma_fence_chain.exit
  %seqno39 = getelementptr inbounds %struct.dma_fence, ptr %prev, i32 0, i32 4
  %5 = ptrtoint ptr %seqno39 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %seqno39, align 8
  %ops = getelementptr inbounds %struct.dma_fence, ptr %prev, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i71 = icmp eq i8 %10, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %seqno)
  %cmp.i = icmp ult i64 %6, %seqno
  %conv.i = trunc i64 %seqno to i32
  %conv2.i = trunc i64 %6 to i32
  %sub.i = sub i32 %conv.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp sgt i32 %sub.i, 0
  %retval.0.i72 = select i1 %tobool.not.i71, i1 %cmp3.i, i1 %cmp.i
  br i1 %retval.0.i72, label %if.then41, label %if.then48

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  %context42 = getelementptr inbounds %struct.dma_fence, ptr %prev, i32 0, i32 3
  %11 = ptrtoint ptr %context42 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %context42, align 8
  %13 = ptrtoint ptr %prev_seqno to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %6, ptr %prev_seqno, align 8
  br label %if.end52

if.then48:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #8
  %14 = ptrtoint ptr %seqno39 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %seqno39, align 8
  %16 = tail call i64 @llvm.umax.i64(i64 %15, i64 %seqno)
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.then41, %if.else45.thread
  %context.0 = phi i64 [ %12, %if.then41 ], [ %call46, %if.then48 ], [ %call4673, %if.else45.thread ]
  %seqno.addr.0 = phi i64 [ %seqno, %if.then41 ], [ %16, %if.then48 ], [ %seqno, %if.else45.thread ]
  tail call void @dma_fence_init(ptr noundef %chain, ptr noundef nonnull @dma_fence_chain_ops, ptr noundef %lock, i64 noundef %context.0, i64 noundef %seqno.addr.0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_fence_chain_cb(ptr noundef %f, ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cb, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %cb, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %cb, i32 8
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dma_fence_chain_irq_work, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %cb, i32 12
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %call = tail call zeroext i1 @irq_work_queue(ptr noundef %cb) #8
  %tobool.not.i = icmp eq ptr %f, null
  br i1 %tobool.not.i, label %entry.dma_fence_put.exit_crit_edge, label %if.then.i

entry.dma_fence_put.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %entry.dma_fence_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_fence_chain_irq_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  %call = tail call zeroext i1 @dma_fence_chain_enable_signaling(ptr noundef %add.ptr)
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @dma_fence_signal(ptr noundef %add.ptr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.dma_fence_put.exit_crit_edge, label %if.then.i

if.end.dma_fence_put.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr i8, ptr %work, i32 -32
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @dma_fence_release(ptr noundef %refcount.i) #8
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end.dma_fence_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab_dma_fence_chain_walk, !1, !"__ksymtab_dma_fence_chain_walk", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/dma-fence-chain.c", i32 77, i32 1}
!2 = !{ptr @__ksymtab_dma_fence_chain_find_seqno, !3, !"__ksymtab_dma_fence_chain_find_seqno", i1 false, i1 false}
!3 = !{!"../drivers/dma-buf/dma-fence-chain.c", i32 110, i32 1}
!4 = !{ptr @dma_fence_chain_ops, !5, !"dma_fence_chain_ops", i1 false, i1 false}
!5 = !{!"../drivers/dma-buf/dma-fence-chain.c", i32 211, i32 28}
!6 = !{ptr @__ksymtab_dma_fence_chain_ops, !7, !"__ksymtab_dma_fence_chain_ops", i1 false, i1 false}
!7 = !{!"../drivers/dma-buf/dma-fence-chain.c", i32 219, i32 1}
!8 = !{ptr @dma_fence_chain_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/dma-buf/dma-fence-chain.c", i32 239, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_dma_fence_chain_init, !12, !"__ksymtab_dma_fence_chain_init", i1 false, i1 false}
!12 = !{!"../drivers/dma-buf/dma-fence-chain.c", i32 258, i32 1}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/dma-fence.h", i32 329, i32 11}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma-buf/dma-fence-chain.c", i32 114, i32 16}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma-buf/dma-fence-chain.c", i32 119, i32 16}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../drivers/dma-buf/dma-fence-chain.c", i32 188, i32 17}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148637904}
!41 = !{i64 2148552344, i64 2148552376, i64 2148552405, i64 2148552439, i64 2148552470, i64 2148552493}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2149284579}
!44 = !{i64 2153004891}
!45 = !{i64 1057841, i64 1057862, i64 1057885, i64 1057904, i64 1057923}
!46 = !{i64 2153005305}
!47 = !{i64 2149434346}
!48 = !{i64 1033862, i64 1033886, i64 1033907, i64 1033924, i64 1033941}
!49 = !{i64 2149434612}
!50 = !{i64 2148549879, i64 2148549911, i64 2148549940, i64 2148549974, i64 2148550005, i64 2148550028}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2153021054}
!53 = !{i8 0, i8 2}
