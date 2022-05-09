; ModuleID = '/llk/IR_all_yes/block/blk-stat.c_pt.bc'
source_filename = "../block/blk-stat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+blk_stat_disable_accounting\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_stat_disable_accounting\09\09\09\09"
module asm "\09.long\09__crc_blk_stat_disable_accounting\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_stat_disable_accounting:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_stat_disable_accounting\22\09\09\09\09\09"
module asm "__kstrtabns_blk_stat_disable_accounting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_stat_enable_accounting\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_stat_enable_accounting\09\09\09\09"
module asm "\09.long\09__crc_blk_stat_enable_accounting\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_stat_enable_accounting:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_stat_enable_accounting\22\09\09\09\09\09"
module asm "__kstrtabns_blk_stat_enable_accounting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, ptr, ptr, i32, ptr, ptr, ptr, %struct.callback_head }
%struct.blk_queue_stats = type { %struct.list_head, %struct.spinlock, i32 }

@blk_stat_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"block/blk-stat.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@blk_stat_alloc_callback.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&cb->timer)\00", [19 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_blk_stat_disable_accounting = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_stat_disable_accounting = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_stat_disable_accounting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_stat_disable_accounting to i32), ptr @__kstrtab_blk_stat_disable_accounting, ptr @__kstrtabns_blk_stat_disable_accounting }, section "___ksymtab_gpl+blk_stat_disable_accounting", align 4
@__kstrtab_blk_stat_enable_accounting = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_stat_enable_accounting = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_stat_enable_accounting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_stat_enable_accounting to i32), ptr @__kstrtab_blk_stat_enable_accounting, ptr @__kstrtabns_blk_stat_enable_accounting }, section "___ksymtab_gpl+blk_stat_enable_accounting", align 4
@blk_alloc_queue_stats.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&stats->lock\00", [19 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 65, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 131, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private constant [20 x i8] c"../block/blk-stat.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 218, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 723, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_blk_stat_disable_accounting, ptr @__ksymtab_blk_stat_enable_accounting, ptr @.str, ptr @.str.1, ptr @blk_stat_alloc_callback.__key, ptr @.str.2, ptr @blk_alloc_queue_stats.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_stat_alloc_callback.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_alloc_queue_stats.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @blk_rq_stat_init(ptr nocapture noundef writeonly %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %min = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 1
  %0 = ptrtoint ptr %min to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %min, align 8
  %1 = ptrtoint ptr %stat to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %stat, align 8
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 3
  %2 = ptrtoint ptr %nr_samples to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nr_samples, align 8
  %max = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 2
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %max, align 8
  %batch = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 4
  %4 = ptrtoint ptr %batch to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %batch, align 8
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_rq_stat_sum(ptr nocapture noundef %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, ptr %src, i32 0, i32 3
  %0 = ptrtoint ptr %nr_samples to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_samples, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %min = getelementptr inbounds %struct.blk_rq_stat, ptr %dst, i32 0, i32 1
  %2 = ptrtoint ptr %min to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %min, align 8
  %min1 = getelementptr inbounds %struct.blk_rq_stat, ptr %src, i32 0, i32 1
  %4 = ptrtoint ptr %min1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %min1, align 8
  %6 = tail call i64 @llvm.umin.i64(i64 %3, i64 %5)
  %7 = ptrtoint ptr %min to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %min, align 8
  %max = getelementptr inbounds %struct.blk_rq_stat, ptr %dst, i32 0, i32 2
  %8 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max, align 8
  %max3 = getelementptr inbounds %struct.blk_rq_stat, ptr %src, i32 0, i32 2
  %10 = ptrtoint ptr %max3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %max3, align 8
  %12 = tail call i64 @llvm.umax.i64(i64 %9, i64 %11)
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %max, align 8
  %batch = getelementptr inbounds %struct.blk_rq_stat, ptr %src, i32 0, i32 4
  %14 = ptrtoint ptr %batch to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %batch, align 8
  %16 = ptrtoint ptr %dst to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dst, align 8
  %nr_samples11 = getelementptr inbounds %struct.blk_rq_stat, ptr %dst, i32 0, i32 3
  %18 = ptrtoint ptr %nr_samples11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_samples11, align 8
  %conv = zext i32 %19 to i64
  %mul = mul i64 %17, %conv
  %add = add i64 %mul, %15
  %20 = ptrtoint ptr %nr_samples to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_samples, align 8
  %add14 = add i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp164.i.i = icmp ult i64 %add, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !31

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i = trunc i64 %add to i32
  %div172.i.i = udiv i32 %conv169.i.i, %add14
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add14, i64 %add) #15, !srcloc !32
  %asmresult1.i.i.i = extractvalue { i64, i64 } %22, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %dividend.addr.0.i.i, ptr %dst, align 8
  %24 = ptrtoint ptr %nr_samples to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_samples, align 8
  %add18 = add i32 %25, %19
  %26 = ptrtoint ptr %nr_samples11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add18, ptr %nr_samples11, align 8
  br label %return

return:                                           ; preds = %div_u64.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @blk_rq_stat_add(ptr nocapture noundef %stat, i64 noundef %value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %min = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 1
  %0 = ptrtoint ptr %min to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %min, align 8
  %2 = tail call i64 @llvm.umin.i64(i64 %1, i64 %value)
  %3 = ptrtoint ptr %min to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %min, align 8
  %max = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 2
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %max, align 8
  %6 = tail call i64 @llvm.umax.i64(i64 %5, i64 %value)
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %max, align 8
  %batch = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 4
  %8 = ptrtoint ptr %batch to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %batch, align 8
  %add = add i64 %9, %value
  store i64 %add, ptr %batch, align 8
  %nr_samples = getelementptr inbounds %struct.blk_rq_stat, ptr %stat, i32 0, i32 3
  %10 = ptrtoint ptr %nr_samples to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_samples, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %nr_samples, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_stat_add(ptr noundef %rq, i64 noundef %now) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %io_start_time_ns = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 16
  %2 = ptrtoint ptr %io_start_time_ns to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %io_start_time_ns, align 8
  %4 = tail call i64 @llvm.usub.sat.i64(i64 %now, i64 %3)
  tail call void @blk_throtl_stat_add(ptr noundef %rq, i64 noundef %4) #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !21) #12
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !33
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %9 = tail call i32 @llvm.read_register.i32(metadata !21) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %13 = tail call i32 @llvm.read_register.i32(metadata !21) #12
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu3, align 4
  %call5 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b57 = load i1, ptr @blk_stat_add.__warned, align 1
  br i1 %.b57, label %land.lhs.true8.do.end11_crit_edge, label %if.then

land.lhs.true8.do.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @blk_stat_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @.str.1) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then, %land.lhs.true8.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %stats = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %cb.070 = load volatile ptr, ptr %18, align 4
  %cmp19.not71 = icmp eq ptr %cb.070, %18
  br i1 %cmp19.not71, label %do.end11.do.body42_crit_edge, label %for.body.lr.ph

do.end11.do.body42_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

for.body.lr.ph:                                   ; preds = %do.end11
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cb.072 = phi ptr [ %cb.070, %for.body.lr.ph ], [ %cb.0, %for.inc.for.body_crit_edge ]
  %pprev.i.i.i = getelementptr inbounds %struct.blk_stat_callback, ptr %cb.072, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i.not, label %for.body.for.inc_crit_edge, label %if.end22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %bucket_fn = getelementptr inbounds %struct.blk_stat_callback, ptr %cb.072, i32 0, i32 3
  %22 = ptrtoint ptr %bucket_fn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bucket_fn, align 4
  %call23 = tail call i32 %23(ptr noundef %rq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.for.inc_crit_edge, label %do.body27

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %cpu_stat = getelementptr inbounds %struct.blk_stat_callback, ptr %cb.072, i32 0, i32 2
  %24 = ptrtoint ptr %cpu_stat to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cpu_stat, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, %26
  %29 = inttoptr i32 %add to ptr
  %min.i = getelementptr %struct.blk_rq_stat, ptr %29, i32 %call23, i32 1
  %30 = ptrtoint ptr %min.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %min.i, align 8
  %32 = tail call i64 @llvm.umin.i64(i64 %31, i64 %4) #12
  %33 = ptrtoint ptr %min.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %min.i, align 8
  %max.i = getelementptr %struct.blk_rq_stat, ptr %29, i32 %call23, i32 2
  %34 = ptrtoint ptr %max.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %max.i, align 8
  %36 = tail call i64 @llvm.umax.i64(i64 %35, i64 %4) #12
  %37 = ptrtoint ptr %max.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %max.i, align 8
  %batch.i = getelementptr %struct.blk_rq_stat, ptr %29, i32 %call23, i32 4
  %38 = ptrtoint ptr %batch.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %batch.i, align 8
  %add.i60 = add i64 %39, %4
  store i64 %add.i60, ptr %batch.i, align 8
  %nr_samples.i = getelementptr %struct.blk_rq_stat, ptr %29, i32 %call23, i32 3
  %40 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_samples.i, align 8
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %nr_samples.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.body27, %if.end22.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %42 = ptrtoint ptr %cb.072 to i32
  call void @__asan_load4_noabort(i32 %42)
  %cb.0 = load volatile ptr, ptr %cb.072, align 4
  %43 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stats, align 8
  %cmp19.not = icmp eq ptr %cb.0, %44
  br i1 %cmp19.not, label %for.inc.do.body42_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.body42_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

do.body42:                                        ; preds = %for.inc.do.body42_crit_edge, %do.end11.do.body42_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  %45 = tail call i32 @llvm.read_register.i32(metadata !21) #12
  %and.i.i.i58 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i58 to ptr
  %preempt_count.i.i59 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i59, align 4
  %sub.i = add i32 %48, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i59, align 4
  %call.i61 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i61, label %do.body42.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i64

do.body42.rcu_read_unlock.exit_crit_edge:         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i64:                                ; preds = %do.body42
  %call1.i62 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i66

land.lhs.true.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i66:                               ; preds = %land.lhs.true.i64
  %.b4.i65 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65, label %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, label %if.then.i67

land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i67:                                      ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i67, %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, %do.body42.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %49 = tail call i32 @llvm.read_register.i32(metadata !21) #12
  %and.i.i.i.i.i68 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i69, align 4
  %sub.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i69, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_throtl_stat_add(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @blk_stat_alloc_callback(ptr noundef %timer_fn, ptr noundef %bucket_fn, i32 noundef %buckets, ptr noundef %data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 88) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %buckets, i32 40) #12
  %2 = extractvalue { i32, i1 } %1, 1
  %3 = extractvalue { i32, i1 } %1, 0
  br i1 %2, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !37

kmalloc_array.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %stat32 = getelementptr inbounds %struct.blk_stat_callback, ptr %call7.i, i32 0, i32 5
  %4 = ptrtoint ptr %stat32 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %stat32, align 4
  br label %if.then4

if.end7.i:                                        ; preds = %if.end
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #17
  %stat = getelementptr inbounds %struct.blk_stat_callback, ptr %call7.i, i32 0, i32 5
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i, ptr %stat, align 4
  %tobool3.not = icmp eq ptr %call8.i, null
  br i1 %tobool3.not, label %if.end7.i.if.then4_crit_edge, label %if.end5

if.end7.i.if.then4_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %if.end7.i.if.then4_crit_edge, %kmalloc_array.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i
  %call6 = tail call noalias ptr @__alloc_percpu(i32 noundef %3, i32 noundef 8) #17
  %cpu_stat = getelementptr inbounds %struct.blk_stat_callback, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %cpu_stat to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %cpu_stat, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stat, align 4
  tail call void @kfree(ptr noundef %8) #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %timer_fn12 = getelementptr inbounds %struct.blk_stat_callback, ptr %call7.i, i32 0, i32 6
  %9 = ptrtoint ptr %timer_fn12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %timer_fn, ptr %timer_fn12, align 8
  %bucket_fn13 = getelementptr inbounds %struct.blk_stat_callback, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %bucket_fn13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bucket_fn, ptr %bucket_fn13, align 4
  %data14 = getelementptr inbounds %struct.blk_stat_callback, ptr %call7.i, i32 0, i32 7
  %11 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %data14, align 4
  %buckets15 = getelementptr inbounds %struct.blk_stat_callback, ptr %call7.i, i32 0, i32 4
  %12 = ptrtoint ptr %buckets15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %buckets, ptr %buckets15, align 8
  %timer = getelementptr inbounds %struct.blk_stat_callback, ptr %call7.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @blk_stat_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @blk_stat_alloc_callback.__key) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end11 ], [ null, %if.then9 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_stat_timer_fn(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %buckets = getelementptr i8, ptr %t, i32 56
  %0 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buckets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp44.not = icmp eq i32 %1, 0
  br i1 %cmp44.not, label %entry.for.cond1.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %stat = getelementptr i8, ptr %t, i32 60
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %call48 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call48, i32 %2)
  %cmp249 = icmp ult i32 %call48, %2
  br i1 %cmp249, label %for.body3.lr.ph, label %for.cond1.preheader.for.end19_crit_edge

for.cond1.preheader.for.end19_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end19

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %cpu_stat5 = getelementptr i8, ptr %t, i32 48
  %stat12 = getelementptr i8, ptr %t, i32 60
  br label %for.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bucket.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stat, align 4
  %arrayidx = getelementptr %struct.blk_rq_stat, ptr %4, i32 %bucket.045
  %min.i = getelementptr %struct.blk_rq_stat, ptr %4, i32 %bucket.045, i32 1
  %5 = ptrtoint ptr %min.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %min.i, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %arrayidx, align 8
  %nr_samples.i = getelementptr %struct.blk_rq_stat, ptr %4, i32 %bucket.045, i32 3
  %7 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %nr_samples.i, align 8
  %max.i = getelementptr %struct.blk_rq_stat, ptr %4, i32 %bucket.045, i32 2
  %8 = ptrtoint ptr %max.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %max.i, align 8
  %batch.i = getelementptr %struct.blk_rq_stat, ptr %4, i32 %bucket.045, i32 4
  %9 = ptrtoint ptr %batch.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %batch.i, align 8
  %inc = add nuw i32 %bucket.045, 1
  %10 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buckets, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond1.loopexit:                               ; preds = %blk_rq_stat_sum.exit.for.cond1.loopexit_crit_edge, %for.body3.for.cond1.loopexit_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call50, ptr noundef nonnull @__cpu_online_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call, %12
  br i1 %cmp2, label %for.cond1.loopexit.for.body3_crit_edge, label %for.cond1.loopexit.for.end19_crit_edge

for.cond1.loopexit.for.end19_crit_edge:           ; preds = %for.cond1.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end19

for.cond1.loopexit.for.body3_crit_edge:           ; preds = %for.cond1.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.loopexit.for.body3_crit_edge, %for.body3.lr.ph
  %call50 = phi i32 [ %call48, %for.body3.lr.ph ], [ %call, %for.cond1.loopexit.for.body3_crit_edge ]
  %13 = ptrtoint ptr %cpu_stat5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpu_stat5, align 4
  %15 = ptrtoint ptr %14 to i32
  %arrayidx7 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call50
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7, align 4
  %add = add i32 %17, %15
  %18 = inttoptr i32 %add to ptr
  %19 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buckets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1046.not = icmp eq i32 %20, 0
  br i1 %cmp1046.not, label %for.body3.for.cond1.loopexit_crit_edge, label %for.body3.for.body11_crit_edge

for.body3.for.body11_crit_edge:                   ; preds = %for.body3
  br label %for.body11

for.body3.for.cond1.loopexit_crit_edge:           ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.loopexit

for.body11:                                       ; preds = %blk_rq_stat_sum.exit.for.body11_crit_edge, %for.body3.for.body11_crit_edge
  %bucket.147 = phi i32 [ %inc17, %blk_rq_stat_sum.exit.for.body11_crit_edge ], [ 0, %for.body3.for.body11_crit_edge ]
  %21 = ptrtoint ptr %stat12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stat12, align 4
  %arrayidx13 = getelementptr %struct.blk_rq_stat, ptr %22, i32 %bucket.147
  %arrayidx14 = getelementptr %struct.blk_rq_stat, ptr %18, i32 %bucket.147
  %nr_samples.i36 = getelementptr %struct.blk_rq_stat, ptr %18, i32 %bucket.147, i32 3
  %23 = ptrtoint ptr %nr_samples.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_samples.i36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %for.body11.blk_rq_stat_sum.exit_crit_edge, label %if.end.i

for.body11.blk_rq_stat_sum.exit_crit_edge:        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %blk_rq_stat_sum.exit

if.end.i:                                         ; preds = %for.body11
  %min.i37 = getelementptr %struct.blk_rq_stat, ptr %22, i32 %bucket.147, i32 1
  %25 = ptrtoint ptr %min.i37 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %min.i37, align 8
  %min1.i = getelementptr %struct.blk_rq_stat, ptr %18, i32 %bucket.147, i32 1
  %27 = ptrtoint ptr %min1.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %min1.i, align 8
  %29 = tail call i64 @llvm.umin.i64(i64 %26, i64 %28) #12
  %30 = ptrtoint ptr %min.i37 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %min.i37, align 8
  %max.i38 = getelementptr %struct.blk_rq_stat, ptr %22, i32 %bucket.147, i32 2
  %31 = ptrtoint ptr %max.i38 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %max.i38, align 8
  %max3.i = getelementptr %struct.blk_rq_stat, ptr %18, i32 %bucket.147, i32 2
  %33 = ptrtoint ptr %max3.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %max3.i, align 8
  %35 = tail call i64 @llvm.umax.i64(i64 %32, i64 %34) #12
  %36 = ptrtoint ptr %max.i38 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %max.i38, align 8
  %batch.i39 = getelementptr %struct.blk_rq_stat, ptr %18, i32 %bucket.147, i32 4
  %37 = ptrtoint ptr %batch.i39 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %batch.i39, align 8
  %39 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx13, align 8
  %nr_samples11.i = getelementptr %struct.blk_rq_stat, ptr %22, i32 %bucket.147, i32 3
  %41 = ptrtoint ptr %nr_samples11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_samples11.i, align 8
  %conv.i = zext i32 %42 to i64
  %mul.i = mul i64 %40, %conv.i
  %add.i = add i64 %mul.i, %38
  %43 = ptrtoint ptr %nr_samples.i36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_samples.i36, align 8
  %add14.i = add i32 %44, %42
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp164.i.i.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !31

if.then168.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv169.i.i.i = trunc i64 %add.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add14.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add14.i, i64 %add.i) #15, !srcloc !32
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %45, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %46 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %dividend.addr.0.i.i.i, ptr %arrayidx13, align 8
  %47 = ptrtoint ptr %nr_samples.i36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_samples.i36, align 8
  %add18.i = add i32 %48, %42
  %49 = ptrtoint ptr %nr_samples11.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add18.i, ptr %nr_samples11.i, align 8
  br label %blk_rq_stat_sum.exit

blk_rq_stat_sum.exit:                             ; preds = %div_u64.exit.i, %for.body11.blk_rq_stat_sum.exit_crit_edge
  %min.i40 = getelementptr %struct.blk_rq_stat, ptr %18, i32 %bucket.147, i32 1
  %50 = ptrtoint ptr %min.i40 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 -1, ptr %min.i40, align 8
  %51 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %arrayidx14, align 8
  %52 = ptrtoint ptr %nr_samples.i36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %nr_samples.i36, align 8
  %max.i42 = getelementptr %struct.blk_rq_stat, ptr %18, i32 %bucket.147, i32 2
  %53 = ptrtoint ptr %max.i42 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %max.i42, align 8
  %batch.i43 = getelementptr %struct.blk_rq_stat, ptr %18, i32 %bucket.147, i32 4
  %54 = ptrtoint ptr %batch.i43 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %batch.i43, align 8
  %inc17 = add nuw i32 %bucket.147, 1
  %55 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buckets, align 4
  %cmp10 = icmp ult i32 %inc17, %56
  br i1 %cmp10, label %blk_rq_stat_sum.exit.for.body11_crit_edge, label %blk_rq_stat_sum.exit.for.cond1.loopexit_crit_edge

blk_rq_stat_sum.exit.for.cond1.loopexit_crit_edge: ; preds = %blk_rq_stat_sum.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.loopexit

blk_rq_stat_sum.exit.for.body11_crit_edge:        ; preds = %blk_rq_stat_sum.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

for.end19:                                        ; preds = %for.cond1.loopexit.for.end19_crit_edge, %for.cond1.preheader.for.end19_crit_edge
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  %timer_fn = getelementptr i8, ptr %t, i32 64
  %57 = ptrtoint ptr %timer_fn to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %timer_fn, align 4
  tail call void %58(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_stat_add_callback(ptr noundef %q, ptr noundef %cb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call32 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call32, i32 %0)
  %cmp33 = icmp ult i32 %call32, %0
  br i1 %cmp33, label %for.body.lr.ph, label %entry.do.body9_crit_edge

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

for.body.lr.ph:                                   ; preds = %entry
  %cpu_stat1 = getelementptr inbounds %struct.blk_stat_callback, ptr %cb, i32 0, i32 2
  %buckets = getelementptr inbounds %struct.blk_stat_callback, ptr %cb, i32 0, i32 4
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body5.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call34, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.cond.loopexit.for.body_crit_edge, label %for.cond.loopexit.do.body9_crit_edge

for.cond.loopexit.do.body9_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %call34 = phi i32 [ %call32, %for.body.lr.ph ], [ %call, %for.cond.loopexit.for.body_crit_edge ]
  %2 = ptrtoint ptr %cpu_stat1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_stat1, align 4
  %4 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call34
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buckets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp430.not = icmp eq i32 %9, 0
  br i1 %cmp430.not, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %bucket.031 = phi i32 [ %inc, %for.body5.for.body5_crit_edge ], [ 0, %for.body.for.body5_crit_edge ]
  %arrayidx6 = getelementptr %struct.blk_rq_stat, ptr %7, i32 %bucket.031
  %min.i = getelementptr %struct.blk_rq_stat, ptr %7, i32 %bucket.031, i32 1
  %10 = ptrtoint ptr %min.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %min.i, align 8
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %arrayidx6, align 8
  %nr_samples.i = getelementptr %struct.blk_rq_stat, ptr %7, i32 %bucket.031, i32 3
  %12 = ptrtoint ptr %nr_samples.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nr_samples.i, align 8
  %max.i = getelementptr %struct.blk_rq_stat, ptr %7, i32 %bucket.031, i32 2
  %13 = ptrtoint ptr %max.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %max.i, align 8
  %batch.i = getelementptr %struct.blk_rq_stat, ptr %7, i32 %bucket.031, i32 4
  %14 = ptrtoint ptr %batch.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %batch.i, align 8
  %inc = add nuw i32 %bucket.031, 1
  %15 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buckets, align 4
  %cmp4 = icmp ult i32 %inc, %16
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.cond.loopexit_crit_edge

for.body5.for.cond.loopexit_crit_edge:            ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5

do.body9:                                         ; preds = %for.cond.loopexit.do.body9_crit_edge, %entry.do.body9_crit_edge
  %stats = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 3
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats, align 8
  %lock = getelementptr inbounds %struct.blk_queue_stats, ptr %18, i32 0, i32 1
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %19 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stats, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cb, ptr noundef %22, ptr noundef %20) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.body9.list_add_tail_rcu.exit_crit_edge

do.body9.list_add_tail_rcu.exit_crit_edge:        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %cb, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %cb, i32 0, i32 1
  %24 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !38
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %cb, ptr %22, align 4
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cb, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %do.body9.list_add_tail_rcu.exit_crit_edge
  tail call void @blk_queue_flag_set(i32 noundef 20, ptr noundef %q) #12
  %27 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stats, align 8
  %lock20 = getelementptr inbounds %struct.blk_queue_stats, ptr %28, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock20, i32 noundef %call13) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_stat_remove_callback(ptr noundef %q, ptr noundef %cb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 8
  %lock = getelementptr inbounds %struct.blk_queue_stats, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cb) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cb, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stats, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  %cmp.i.not = icmp eq ptr %12, %10
  br i1 %cmp.i.not, label %land.lhs.true, label %list_del_rcu.exit.if.end_crit_edge

list_del_rcu.exit.if.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %list_del_rcu.exit
  %accounting = getelementptr inbounds %struct.blk_queue_stats, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %accounting to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %accounting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @blk_queue_flag_clear(i32 noundef 20, ptr noundef %q) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %list_del_rcu.exit.if.end_crit_edge
  %15 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stats, align 8
  %lock10 = getelementptr inbounds %struct.blk_queue_stats, ptr %16, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock10, i32 noundef %call2) #12
  %timer = getelementptr inbounds %struct.blk_stat_callback, ptr %cb, i32 0, i32 1
  %call11 = tail call i32 @del_timer_sync(ptr noundef %timer) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_stat_free_callback(ptr noundef %cb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cb, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.blk_stat_callback, ptr %cb, i32 0, i32 8
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @blk_stat_free_callback_rcu) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blk_stat_free_callback_rcu(ptr noundef %head) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -80
  %cpu_stat = getelementptr i8, ptr %head, i32 -24
  %0 = ptrtoint ptr %cpu_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_stat, align 4
  tail call void @free_percpu(ptr noundef %1) #12
  %stat = getelementptr i8, ptr %head, i32 -12
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stat, align 4
  tail call void @kfree(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_stat_disable_accounting(ptr noundef %q) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 8
  %lock = getelementptr inbounds %struct.blk_queue_stats, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats, align 8
  %accounting = getelementptr inbounds %struct.blk_queue_stats, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %accounting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %accounting, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %accounting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @blk_queue_flag_clear(i32 noundef 20, ptr noundef %q) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats, align 8
  %lock7 = getelementptr inbounds %struct.blk_queue_stats, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock7, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_stat_enable_accounting(ptr noundef %q) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 3
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 8
  %lock = getelementptr inbounds %struct.blk_queue_stats, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats, align 8
  %accounting = getelementptr inbounds %struct.blk_queue_stats, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %accounting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %accounting, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %accounting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @blk_queue_flag_set(i32 noundef 20, ptr noundef %q) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats, align 8
  %lock7 = getelementptr inbounds %struct.blk_queue_stats, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock7, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @blk_alloc_queue_stats() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 56) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.blk_queue_stats, ptr %call7.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @blk_alloc_queue_stats.__key, i16 noundef signext 3) #12
  %accounting = getelementptr inbounds %struct.blk_queue_stats, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %accounting to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %accounting, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_free_queue_stats(ptr noundef %stats) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stats, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %stats, align 4
  %cmp.i.not = icmp eq ptr %1, %stats
  br i1 %cmp.i.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !31

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  tail call void @kfree(ptr noundef nonnull %stats) #12
  br label %return

return:                                           ; preds = %if.end17, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_stats_alloc_enable(ptr noundef %q) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 640) #16
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %poll_stat1 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 28
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %poll_stat1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !39
  %1 = ptrtoint ptr %call7.i.i.i to i32
  tail call void @llvm.prefetch.p0(ptr %poll_stat1, i32 1, i32 3, i32 1) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %poll_stat1, i32 0, i32 %1) #12, !srcloc !40
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %cmp.not = icmp eq i32 %asmresult1.i, 0
  br i1 %cmp.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end18:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %poll_cb = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 27
  %3 = ptrtoint ptr %poll_cb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %poll_cb, align 8
  tail call void @blk_stat_add_callback(ptr noundef %q, ptr noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then17 ], [ false, %if.end18 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !16, !17, !18, !20}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../block/blk-stat.c", i32 65, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @blk_stat_alloc_callback.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../block/blk-stat.c", i32 131, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_blk_stat_disable_accounting, !8, !"__ksymtab_blk_stat_disable_accounting", i1 false, i1 false}
!8 = !{!"../block/blk-stat.c", i32 196, i32 1}
!9 = !{ptr @__ksymtab_blk_stat_enable_accounting, !10, !"__ksymtab_blk_stat_enable_accounting", i1 false, i1 false}
!10 = !{!"../block/blk-stat.c", i32 207, i32 1}
!11 = !{ptr @blk_alloc_queue_stats.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../block/blk-stat.c", i32 218, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2148603842, i64 2148604122, i64 2148604456, i64 2148604790}
!33 = !{i64 2149167392}
!34 = !{i64 2154481670}
!35 = !{i64 2154519099}
!36 = !{i64 2149167658}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2149192784}
!39 = !{i64 2154531106}
!40 = !{i64 722800, i64 722821, i64 722844, i64 722863, i64 722882}
!41 = !{i64 2154531525}
