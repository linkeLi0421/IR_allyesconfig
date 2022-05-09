; ModuleID = '/llk/IR_all_yes/net/core/gen_estimator.c_pt.bc'
source_filename = "../net/core/gen_estimator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+gen_new_estimator\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_new_estimator\09\09\09\09"
module asm "\09.long\09__crc_gen_new_estimator\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_new_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_new_estimator\22\09\09\09\09\09"
module asm "__kstrtabns_gen_new_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_kill_estimator\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_kill_estimator\09\09\09\09"
module asm "\09.long\09__crc_gen_kill_estimator\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_kill_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_kill_estimator\22\09\09\09\09\09"
module asm "__kstrtabns_gen_kill_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_replace_estimator\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_replace_estimator\09\09\09\09"
module asm "\09.long\09__crc_gen_replace_estimator\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_replace_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_replace_estimator\22\09\09\09\09\09"
module asm "__kstrtabns_gen_replace_estimator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_estimator_active\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_estimator_active\09\09\09\09"
module asm "\09.long\09__crc_gen_estimator_active\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_estimator_active:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_estimator_active\22\09\09\09\09\09"
module asm "__kstrtabns_gen_estimator_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gen_estimator_read\22, \22a\22\09"
module asm "\09.weak\09__crc_gen_estimator_read\09\09\09\09"
module asm "\09.long\09__crc_gen_estimator_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gen_estimator_read:\09\09\09\09\09"
module asm "\09.asciz \09\22gen_estimator_read\22\09\09\09\09\09"
module asm "__kstrtabns_gen_estimator_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.net_rate_estimator = type { ptr, ptr, i8, ptr, i8, i8, %struct.seqcount, i64, i64, i64, i64, i32, %struct.timer_list, %struct.callback_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gnet_stats_rate_est64 = type { i64, i64 }

@gen_new_estimator.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&est->seq\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@gen_new_estimator.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&est->timer)\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_gen_new_estimator = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_new_estimator = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_new_estimator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_new_estimator to i32), ptr @__kstrtab_gen_new_estimator, ptr @__kstrtabns_gen_new_estimator }, section "___ksymtab+gen_new_estimator", align 4
@__kstrtab_gen_kill_estimator = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_kill_estimator = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_kill_estimator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_kill_estimator to i32), ptr @__kstrtab_gen_kill_estimator, ptr @__kstrtabns_gen_kill_estimator }, section "___ksymtab+gen_kill_estimator", align 4
@__kstrtab_gen_replace_estimator = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_replace_estimator = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_replace_estimator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_replace_estimator to i32), ptr @__kstrtab_gen_replace_estimator, ptr @__kstrtabns_gen_replace_estimator }, section "___ksymtab+gen_replace_estimator", align 4
@__kstrtab_gen_estimator_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_estimator_active = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_estimator_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_estimator_active to i32), ptr @__kstrtab_gen_estimator_active, ptr @__kstrtabns_gen_estimator_active }, section "___ksymtab+gen_estimator_active", align 4
@gen_estimator_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/core/gen_estimator.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_gen_estimator_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_gen_estimator_read = external dso_local constant [0 x i8], align 1
@__ksymtab_gen_estimator_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gen_estimator_read to i32), ptr @__kstrtab_gen_estimator_read, ptr @__kstrtabns_gen_estimator_read }, section "___ksymtab+gen_estimator_read", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 159, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 186, i32 2 }
@___asan_gen_.25 = private constant [28 x i8] c"../net/core/gen_estimator.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 263, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 271, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 695, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 723, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_gen_estimator_active, ptr @__ksymtab_gen_estimator_read, ptr @__ksymtab_gen_kill_estimator, ptr @__ksymtab_gen_new_estimator, ptr @__ksymtab_gen_replace_estimator, ptr @gen_new_estimator.__key, ptr @.str, ptr @gen_new_estimator.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_new_estimator.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_new_estimator.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_new_estimator(ptr noundef %bstats, ptr noundef %cpu_bstats, ptr noundef %rate_est, ptr noundef %lock, i1 noundef zeroext %running, ptr nocapture noundef readonly %opt) #0 align 64 {
entry:
  %b = alloca %struct.gnet_stats_basic_sync, align 16
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %running to i8
  %add.ptr.i = getelementptr i8, ptr %opt, i32 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %b) #9
  %0 = call ptr @memset(ptr %b, i32 255, i32 48)
  %1 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %opt, align 2
  %3 = and i16 %2, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp = icmp eq i16 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 1
  %6 = add i8 %5, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %6)
  %7 = icmp ult i8 %6, -6
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %ewma_log = getelementptr i8, ptr %opt, i32 5
  %8 = ptrtoint ptr %ewma_log to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ewma_log, align 1
  %10 = add i8 %9, -31
  call void @__sanitizer_cov_trace_const_cmp1(i8 -30, i8 %10)
  %11 = icmp ult i8 %10, -30
  br i1 %11, label %if.end9.cleanup_crit_edge, label %if.end19

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 152) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end19.cleanup_crit_edge, label %do.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end19
  %seq = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 6
  %dep_map.i = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str, ptr noundef nonnull @gen_new_estimator.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %seq, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i, align 1
  %conv24 = sext i8 %15 to i32
  %add = add nsw i32 %conv24, 2
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bstats, ptr %call7.i.i, align 8
  %stats_lock = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %stats_lock to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %lock, ptr %stats_lock, align 4
  %running27 = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %running27 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %running27, align 8
  %19 = ptrtoint ptr %ewma_log to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ewma_log, align 1
  %ewma_log30 = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %ewma_log30 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ewma_log30, align 8
  %conv31 = trunc i32 %add to i8
  %intvl_log32 = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %intvl_log32 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv31, ptr %intvl_log32, align 1
  %cpu_bstats33 = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %cpu_bstats33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cpu_bstats, ptr %cpu_bstats33, align 4
  %tobool34.not = icmp eq ptr %lock, null
  br i1 %tobool34.not, label %if.end39.critedge, label %if.then35

if.then35:                                        ; preds = %do.body
  tail call fastcc void @local_bh_disable()
  call void @gnet_stats_basic_sync_init(ptr noundef nonnull %b) #9
  %24 = ptrtoint ptr %stats_lock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stats_lock, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then35.if.end.i_crit_edge, label %if.then.i

if.then35.if.end.i_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef nonnull %25) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then35.if.end.i_crit_edge
  %26 = ptrtoint ptr %cpu_bstats33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpu_bstats33, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i, align 8
  %30 = ptrtoint ptr %running27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %running27, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool2.i = icmp ne i8 %31, 0
  call void @gnet_stats_add_basic(ptr noundef nonnull %b, ptr noundef %27, ptr noundef %29, i1 noundef zeroext %tobool2.i) #9
  %32 = ptrtoint ptr %stats_lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stats_lock, align 4
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %if.end.i.est_fetch_counters.exit_crit_edge, label %if.then5.i

if.end.i.est_fetch_counters.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %est_fetch_counters.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull %33) #9
  br label %est_fetch_counters.exit

est_fetch_counters.exit:                          ; preds = %if.then5.i, %if.end.i.est_fetch_counters.exit_crit_edge
  call fastcc void @local_bh_enable()
  %34 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %b, align 16
  %last_bytes.c157 = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %last_bytes.c157 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %last_bytes.c157, align 8
  %packets.c158 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %b, i32 0, i32 1
  %37 = ptrtoint ptr %packets.c158 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %packets.c158, align 8
  %last_packets.c160 = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 7
  %39 = ptrtoint ptr %last_packets.c160 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %last_packets.c160, align 8
  call void @_raw_spin_lock_bh(ptr noundef nonnull %lock) #9
  br label %do.end47

if.end39.critedge:                                ; preds = %do.body
  call void @gnet_stats_basic_sync_init(ptr noundef nonnull %b) #9
  %40 = ptrtoint ptr %stats_lock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stats_lock, align 4
  %tobool.not.i162 = icmp eq ptr %41, null
  br i1 %tobool.not.i162, label %if.end39.critedge.if.end.i168_crit_edge, label %if.then.i163

if.end39.critedge.if.end.i168_crit_edge:          ; preds = %if.end39.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i168

if.then.i163:                                     ; preds = %if.end39.critedge
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef nonnull %41) #9
  br label %if.end.i168

if.end.i168:                                      ; preds = %if.then.i163, %if.end39.critedge.if.end.i168_crit_edge
  %42 = ptrtoint ptr %cpu_bstats33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cpu_bstats33, align 4
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %46 = ptrtoint ptr %running27 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %running27, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool2.i166 = icmp ne i8 %47, 0
  call void @gnet_stats_add_basic(ptr noundef nonnull %b, ptr noundef %43, ptr noundef %45, i1 noundef zeroext %tobool2.i166) #9
  %48 = ptrtoint ptr %stats_lock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %stats_lock, align 4
  %tobool4.not.i167 = icmp eq ptr %49, null
  br i1 %tobool4.not.i167, label %if.end.i168.est_fetch_counters.exit170_crit_edge, label %if.then5.i169

if.end.i168.est_fetch_counters.exit170_crit_edge: ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  br label %est_fetch_counters.exit170

if.then5.i169:                                    ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull %49) #9
  br label %est_fetch_counters.exit170

est_fetch_counters.exit170:                       ; preds = %if.then5.i169, %if.end.i168.est_fetch_counters.exit170_crit_edge
  %50 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %b, align 16
  %last_bytes.c = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %last_bytes.c to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %last_bytes.c, align 8
  %packets.c = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %b, i32 0, i32 1
  %53 = ptrtoint ptr %packets.c to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %packets.c, align 8
  %last_packets.c = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %last_packets.c to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %last_packets.c, align 8
  br label %do.end47

do.end47:                                         ; preds = %est_fetch_counters.exit170, %est_fetch_counters.exit
  %56 = ptrtoint ptr %rate_est to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rate_est, align 4
  %tobool48.not = icmp eq ptr %57, null
  br i1 %tobool48.not, label %do.end47.if.end53_crit_edge, label %if.then49

do.end47.if.end53_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then49:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  %timer = getelementptr inbounds %struct.net_rate_estimator, ptr %57, i32 0, i32 12
  %call50 = call i32 @del_timer_sync(ptr noundef %timer) #9
  %avbps = getelementptr inbounds %struct.net_rate_estimator, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %avbps to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %avbps, align 8
  %avbps51 = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 10
  %60 = ptrtoint ptr %avbps51 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %avbps51, align 8
  %avpps = getelementptr inbounds %struct.net_rate_estimator, ptr %57, i32 0, i32 9
  %61 = ptrtoint ptr %avpps to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %avpps, align 8
  %avpps52 = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 9
  %63 = ptrtoint ptr %avpps52 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %avpps52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %do.end47.if.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %shl = shl i32 25, %add
  %add54 = add i32 %64, %shl
  %next_jiffies = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 11
  %65 = ptrtoint ptr %next_jiffies to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add54, ptr %next_jiffies, align 8
  %timer56 = getelementptr inbounds %struct.net_rate_estimator, ptr %call7.i.i, i32 0, i32 12
  call void @init_timer_key(ptr noundef %timer56, ptr noundef nonnull @est_timer, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @gen_new_estimator.__key.1) #9
  %66 = ptrtoint ptr %next_jiffies to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %next_jiffies, align 8
  %call61 = call i32 @mod_timer(ptr noundef %timer56, i32 noundef %67) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  %68 = ptrtoint ptr %rate_est to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i, ptr %rate_est, align 4
  br i1 %tobool34.not, label %if.end53.if.end101_crit_edge, label %if.then100

if.end53.if.end101_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then100:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef nonnull %lock) #9
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end53.if.end101_crit_edge
  br i1 %tobool48.not, label %if.end101.cleanup_crit_edge, label %do.end109

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end109:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %rcu = getelementptr inbounds %struct.net_rate_estimator, ptr %57, i32 0, i32 13
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 140 to ptr)) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end109, %if.end101.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -105, %if.end19.cleanup_crit_edge ], [ 0, %do.end109 ], [ 0, %if.end101.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %b) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @est_timer(ptr noundef %t) #0 align 64 {
entry:
  %b = alloca %struct.gnet_stats_basic_sync, align 16
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -92
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %b) #9
  %0 = call ptr @memset(ptr %b, i32 255, i32 48)
  call void @gnet_stats_basic_sync_init(ptr noundef nonnull %b) #9
  %stats_lock.i = getelementptr i8, ptr %t, i32 -88
  %1 = ptrtoint ptr %stats_lock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stats_lock.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef nonnull %2) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %cpu_bstats.i = getelementptr i8, ptr %t, i32 -80
  %3 = ptrtoint ptr %cpu_bstats.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpu_bstats.i, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %running.i = getelementptr i8, ptr %t, i32 -84
  %7 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %running.i, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.i = icmp ne i8 %8, 0
  call void @gnet_stats_add_basic(ptr noundef nonnull %b, ptr noundef %4, ptr noundef %6, i1 noundef zeroext %tobool2.i) #9
  %9 = ptrtoint ptr %stats_lock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stats_lock.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %if.end.i.est_fetch_counters.exit_crit_edge, label %if.then5.i

if.end.i.est_fetch_counters.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %est_fetch_counters.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull %10) #9
  br label %est_fetch_counters.exit

est_fetch_counters.exit:                          ; preds = %if.then5.i, %if.end.i.est_fetch_counters.exit_crit_edge
  %11 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %b, align 16
  %packets = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %b, i32 0, i32 1
  %13 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %packets, align 8
  %last_bytes = getelementptr i8, ptr %t, i32 -28
  %15 = ptrtoint ptr %last_bytes to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %last_bytes, align 8
  %intvl_log = getelementptr i8, ptr %t, i32 -75
  %17 = ptrtoint ptr %intvl_log to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %intvl_log, align 1
  %ewma_log = getelementptr i8, ptr %t, i32 -76
  %19 = ptrtoint ptr %ewma_log to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ewma_log, align 8
  %avbps = getelementptr i8, ptr %t, i32 -12
  %21 = ptrtoint ptr %avbps to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %avbps, align 8
  %last_packets = getelementptr i8, ptr %t, i32 -36
  %23 = ptrtoint ptr %last_packets to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %last_packets, align 8
  %avpps = getelementptr i8, ptr %t, i32 -20
  %25 = ptrtoint ptr %avpps to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %avpps, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %27 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i92 = icmp eq i32 %27, 0
  br i1 %tobool.not.i92, label %est_fetch_counters.exit.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

est_fetch_counters.exit.__seqprop_assert.exit_crit_edge: ; preds = %est_fetch_counters.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %est_fetch_counters.exit
  %28 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %31, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %32 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %37, ptrtoint (ptr @lockdep_recursion to i32)
  %38 = inttoptr i32 %add.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %41 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i7.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool20.not.i = icmp eq i32 %40, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %45 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i = icmp eq i32 %48, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %49 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i9.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %52, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  %53 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %56, ptrtoint (ptr @hardirqs_enabled to i32)
  %57 = inttoptr i32 %add47.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %60 = call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i12.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %63, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool54.not.i = icmp eq i32 %59, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i93, !prof !48

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i93:                                      ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i93, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %est_fetch_counters.exit.__seqprop_assert.exit_crit_edge
  %seq = getelementptr i8, ptr %t, i32 -72
  %sub10 = sub i64 %14, %24
  %conv = zext i8 %18 to i32
  %sub2 = sub nsw i32 10, %conv
  %sh_prom = zext i32 %sub2 to i64
  %shl15 = shl i64 %sub10, %sh_prom
  %sh_prom4 = zext i8 %20 to i64
  %shr19 = lshr i64 %shl15, %sh_prom4
  %shr23 = lshr i64 %26, %sh_prom4
  %sub24 = sub i64 %shr19, %shr23
  %sub = sub i64 %12, %16
  %shl = shl i64 %sub, %sh_prom
  %shr = lshr i64 %shl, %sh_prom4
  %shr8 = lshr i64 %22, %sh_prom4
  %sub9 = sub i64 %shr, %shr8
  %64 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %seq, align 4
  %inc.i.i.i = add i32 %65, 1
  store i32 %inc.i.i.i, ptr %seq, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  %dep_map.i.i = getelementptr i8, ptr %t, i32 -68
  %66 = call ptr @llvm.returnaddress(i32 0) #9
  %67 = ptrtoint ptr %66 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %67) #9
  %68 = ptrtoint ptr %avbps to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %avbps, align 8
  %add = add i64 %sub9, %69
  store i64 %add, ptr %avbps, align 8
  %70 = ptrtoint ptr %avpps to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %avpps, align 8
  %add34 = add i64 %sub24, %71
  store i64 %add34, ptr %avpps, align 8
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %67) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %72 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %seq, align 4
  %inc.i.i = add i32 %73, 1
  store i32 %inc.i.i, ptr %seq, align 4
  %74 = ptrtoint ptr %last_bytes to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %12, ptr %last_bytes, align 8
  %75 = ptrtoint ptr %last_packets to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %14, ptr %last_packets, align 8
  %76 = ptrtoint ptr %intvl_log to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %intvl_log, align 1
  %conv50 = zext i8 %77 to i32
  %shl51 = shl i32 25, %conv50
  %next_jiffies = getelementptr i8, ptr %t, i32 -4
  %78 = ptrtoint ptr %next_jiffies to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %next_jiffies, align 8
  %add52 = add i32 %shl51, %79
  store i32 %add52, ptr %next_jiffies, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %sub54 = sub i32 %80, %add52
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub54)
  %cmp = icmp sgt i32 %sub54, -1
  br i1 %cmp, label %if.then57, label %__seqprop_assert.exit.if.end60_crit_edge, !prof !51

__seqprop_assert.exit.if.end60_crit_edge:         ; preds = %__seqprop_assert.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then57:                                        ; preds = %__seqprop_assert.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %add58 = add i32 %81, 1
  %82 = ptrtoint ptr %next_jiffies to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add58, ptr %next_jiffies, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %__seqprop_assert.exit.if.end60_crit_edge
  %83 = ptrtoint ptr %next_jiffies to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %next_jiffies, align 8
  %call62 = call i32 @mod_timer(ptr noundef %t, i32 noundef %84) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %b) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gen_kill_estimator(ptr noundef %rate_est) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rate_est, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %rate_est, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %rate_est) #9, !srcloc !53
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = inttoptr i32 %asmresult.i to ptr
  %timer = getelementptr inbounds %struct.net_rate_estimator, ptr %1, i32 0, i32 12
  %call15 = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  %rcu = getelementptr inbounds %struct.net_rate_estimator, ptr %1, i32 0, i32 13
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 140 to ptr)) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gen_replace_estimator(ptr noundef %bstats, ptr noundef %cpu_bstats, ptr noundef %rate_est, ptr noundef %lock, i1 noundef zeroext %running, ptr nocapture noundef readonly %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gen_new_estimator(ptr noundef %bstats, ptr noundef %cpu_bstats, ptr noundef %rate_est, ptr noundef %lock, i1 noundef zeroext %running, ptr noundef %opt)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gen_estimator_active(ptr noundef %rate_est) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rate_est to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rate_est, align 4
  %tobool = icmp ne ptr %1, null
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gen_estimator_read(ptr noundef %rate_est, ptr nocapture noundef writeonly %sample) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %rate_est to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rate_est, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @gen_estimator_read.__warned, align 1
  br i1 %.b50, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @gen_estimator_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 263, ptr noundef nonnull @.str.4) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.then10, label %do.body12.preheader

do.body12.preheader:                              ; preds = %do.end7
  %seq13 = getelementptr inbounds %struct.net_rate_estimator, ptr %5, i32 0, i32 6
  %dep_map.c48.i = getelementptr inbounds %struct.net_rate_estimator, ptr %5, i32 0, i32 6, i32 1
  %avbps = getelementptr inbounds %struct.net_rate_estimator, ptr %5, i32 0, i32 10
  %avpps = getelementptr inbounds %struct.net_rate_estimator, ptr %5, i32 0, i32 9
  %pps = getelementptr inbounds %struct.gnet_stats_rate_est64, ptr %sample, i32 0, i32 1
  br label %do.body12

if.then10:                                        ; preds = %do.end7
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i51, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i54

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i54:                                ; preds = %if.then10
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  br label %cleanup

do.body12:                                        ; preds = %while.end.do.body12_crit_edge, %do.body12.preheader
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !57
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i60 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i60, label %if.then.i61, label %do.body24.critedge.i

if.then.i61:                                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %7 = tail call ptr @llvm.returnaddress(i32 0) #9
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %8) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %8) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call ptr @llvm.returnaddress(i32 0) #9
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %10) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i61
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !58
  %and.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !51

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #9, !srcloc !59
  %12 = ptrtoint ptr %seq13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %seq13, align 4
  %and73 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool18.not74 = icmp eq i32 %and73, 0
  br i1 %tobool18.not74, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end23_crit_edge

seqcount_lockdep_reader_access.exit.do.end23_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end23

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end23:                                         ; preds = %do.end23.do.end23_crit_edge, %seqcount_lockdep_reader_access.exit.do.end23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !61
  %14 = ptrtoint ptr %seq13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %seq13, align 4
  %and = and i32 %15, 1
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.end23.while.end_crit_edge, label %do.end23.do.end23_crit_edge

do.end23.do.end23_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end23.while.end_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end23.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %13, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %15, %do.end23.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  %16 = ptrtoint ptr %avbps to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %avbps, align 8
  %shr = lshr i64 %17, 8
  %18 = ptrtoint ptr %sample to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %shr, ptr %sample, align 8
  %19 = ptrtoint ptr %avpps to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %avpps, align 8
  %shr36 = lshr i64 %20, 8
  %21 = ptrtoint ptr %pps to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shr36, ptr %pps, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  %22 = ptrtoint ptr %seq13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %seq13, align 4
  %cmp.i.i.not = icmp eq i32 %23, %.lcssa
  br i1 %cmp.i.i.not, label %do.end42, label %while.end.do.body12_crit_edge

while.end.do.body12_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

do.end42:                                         ; preds = %while.end
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i62, label %do.end42.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true.i65

do.end42.rcu_read_unlock.exit72_crit_edge:        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit72

land.lhs.true.i65:                                ; preds = %do.end42
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit72

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit72

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_unlock.exit72

rcu_read_unlock.exit72:                           ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, %do.end42.rcu_read_unlock.exit72_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit72, %rcu_read_unlock.exit
  %24 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i69 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i71 = add i32 %27, -1
  store volatile i32 %sub.i.i.i71, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %28 = xor i1 %tobool9.not, true
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_add_basic(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !22, !24, !25, !27, !28, !29, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @gen_new_estimator.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/core/gen_estimator.c", i32 159, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../net/core/gen_estimator.c", i32 178, i32 8}
!5 = !{ptr @gen_new_estimator.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../net/core/gen_estimator.c", i32 186, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__ksymtab_gen_new_estimator, !9, !"__ksymtab_gen_new_estimator", i1 false, i1 false}
!9 = !{!"../net/core/gen_estimator.c", i32 196, i32 1}
!10 = !{ptr @__ksymtab_gen_kill_estimator, !11, !"__ksymtab_gen_kill_estimator", i1 false, i1 false}
!11 = !{!"../net/core/gen_estimator.c", i32 215, i32 1}
!12 = !{ptr @__ksymtab_gen_replace_estimator, !13, !"__ksymtab_gen_replace_estimator", i1 false, i1 false}
!13 = !{!"../net/core/gen_estimator.c", i32 242, i32 1}
!14 = !{ptr @__ksymtab_gen_estimator_active, !15, !"__ksymtab_gen_estimator_active", i1 false, i1 false}
!15 = !{!"../net/core/gen_estimator.c", i32 254, i32 1}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/core/gen_estimator.c", i32 263, i32 8}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__ksymtab_gen_estimator_read, !21, !"__ksymtab_gen_estimator_read", i1 false, i1 false}
!21 = !{!"../net/core/gen_estimator.c", i32 278, i32 1}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
!43 = !{i64 2156837170}
!44 = !{i64 2150085879}
!45 = !{i64 2150090813}
!46 = !{i64 2150112531}
!47 = !{i64 2150117425}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2150193952}
!50 = !{i64 2150194277}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2156844185}
!53 = !{i64 955597, i64 955614, i64 955638, i64 955664, i64 955682}
!54 = !{i64 2156844538}
!55 = !{i64 2149266096}
!56 = !{i64 2149266362}
!57 = !{i64 843087, i64 843148}
!58 = !{i64 845819}
!59 = !{i64 846104}
!60 = !{i64 2156861894}
!61 = !{i64 2156861736}
!62 = !{i64 2156862064}
!63 = !{i64 2150193627}
