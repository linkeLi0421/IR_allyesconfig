; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_mru_cache.c_pt.bc'
source_filename = "../fs/xfs/xfs_mru_cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xfs_mru_cache = type { %struct.xarray, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, ptr, %struct.delayed_work, i32, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_mru_cache_elem = type { %struct.list_head, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xfs_mru_cache\00", [18 x i8] zeroinitializer }, align 32
@xfs_mru_reap_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@xfs_mru_cache_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mru->lock\00", [21 x i8] zeroinitializer }, align 32
@xfs_mru_cache_create.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&mru->work)->work)\00", [57 x i8] zeroinitializer }, align 32
@xfs_mru_cache_create.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&mru->work)->timer\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mru && mru->lists\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/xfs/xfs_mru_cache.c\00", [41 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 296, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"xfs_mru_reap_wq\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 106, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 357, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 358, i32 2 }
@___asan_gen_.40 = private constant [26 x i8] c"../fs/xfs/xfs_mru_cache.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 426, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 378, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 36, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @xfs_mru_reap_wq, ptr @xfs_mru_cache_create.__key, ptr @.str.1, ptr @xfs_mru_cache_create.__key.2, ptr @.str.3, ptr @xfs_mru_cache_create.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xa_init_flags.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_mru_reap_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_mru_cache_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_mru_cache_create.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_mru_cache_create.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_mru_cache_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 1) #8
  store ptr %call, ptr @xfs_mru_reap_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_mru_cache_uninit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_mru_reap_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_mru_cache_create(ptr noundef writeonly %mrup, ptr noundef %data, i32 noundef %lifetime_ms, i32 noundef %grp_count, ptr noundef %free_func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mrup, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %mrup to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mrup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %grp_count)
  %tobool2.not = icmp eq i32 %grp_count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lifetime_ms)
  %tobool4.not = icmp eq i32 %lifetime_ms, 0
  %or.cond = or i1 %tobool4.not, %tobool2.not
  %tobool6.not = icmp eq ptr %free_func, null
  %or.cond100 = or i1 %or.cond, %tobool6.not
  br i1 %or.cond100, label %if.then.cleanup_crit_edge, label %if.else.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %lifetime_ms) #8
  %div = udiv i32 %call2.i, %grp_count
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %grp_count)
  %tobool9.not = icmp ult i32 %call2.i, %grp_count
  br i1 %tobool9.not, label %if.else.i.cleanup_crit_edge, label %if.end11

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.else.i
  %call.i = tail call ptr @kmem_alloc(i32 noundef 236, i32 noundef 16) #8
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %add = add i32 %grp_count, 1
  %grp_count16 = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %grp_count16 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %grp_count16, align 4
  %mul = shl i32 %add, 3
  %call.i102 = tail call ptr @kmem_alloc(i32 noundef %mul, i32 noundef 16) #8
  %lists = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %lists to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i102, ptr %lists, align 4
  %tobool20.not = icmp eq ptr %call.i102, null
  br i1 %tobool20.not, label %if.then61, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end15
  %3 = ptrtoint ptr %grp_count16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %grp_count16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp110.not = icmp eq i32 %4, 0
  br i1 %cmp110.not, label %for.cond.preheader.exit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.exit_crit_edge:                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %grp.0111 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lists, align 4
  %add.ptr = getelementptr %struct.list_head, ptr %6, i32 %grp.0111
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i = getelementptr %struct.list_head, ptr %6, i32 %grp.0111, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %prev.i, align 4
  %inc = add nuw i32 %grp.0111, 1
  %9 = ptrtoint ptr %grp_count16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %grp_count16, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.exit_crit_edge

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

exit:                                             ; preds = %for.body.exit_crit_edge, %for.cond.preheader.exit_crit_edge
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
  %xa_flags.i = getelementptr inbounds %struct.xarray, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2592, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %xa_head.i, align 4
  %reap_list = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %reap_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %reap_list, ptr %reap_list, align 4
  %prev.i103 = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reap_list, ptr %prev.i103, align 4
  %lock = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @xfs_mru_cache_create.__key, i16 noundef signext 3) #8
  %work = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %15 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @xfs_mru_cache_create.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry36 = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %16 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i104 = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 9, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i104 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry36, ptr %prev.i104, align 4
  %func = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @_xfs_mru_cache_reap, ptr %func, align 4
  %timer = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @xfs_mru_cache_create.__key.4) #8
  %grp_time47 = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %grp_time47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %grp_time47, align 4
  %free_func48 = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %free_func48 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %free_func, ptr %free_func48, align 4
  %data49 = getelementptr inbounds %struct.xfs_mru_cache, ptr %call.i, i32 0, i32 11
  %21 = ptrtoint ptr %data49 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %data, ptr %data49, align 4
  %22 = ptrtoint ptr %mrup to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %mrup, align 4
  br label %cleanup

if.then61:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kvfree(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %exit, %if.end11.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %exit ], [ -12, %if.then61 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_xfs_mru_cache_reap(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -128
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %cleanup.critedge, label %land.rhs, !prof !32

land.rhs:                                         ; preds = %entry
  %lists = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lists, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false, label %land.rhs.if.end_crit_edge, !prof !32

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %land.rhs
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 272) #8
  %2 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %lists, align 4
  %tobool6.not = icmp eq ptr %.pr, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.rhs.if.end_crit_edge
  %lock = getelementptr i8, ptr %work, i32 -64
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %call = tail call fastcc i32 @_xfs_mru_cache_migrate(ptr noundef nonnull %add.ptr, i32 noundef %3)
  tail call fastcc void @_xfs_mru_cache_clear_reap_list(ptr noundef nonnull %add.ptr)
  %queued = getelementptr i8, ptr %work, i32 100
  %4 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %6 = tail call i32 @llvm.usub.sat.i32(i32 %call, i32 %5)
  %7 = load ptr, ptr @xfs_mru_reap_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work, i32 noundef %6) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 272) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.end14, %lor.lhs.false.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_mru_cache_destroy(ptr noundef %mru) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mru, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %lists = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 1
  %0 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lists, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end.i

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false
  %lock.i = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %queued.i = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 10
  %2 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queued.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  br i1 %tobool2.not.i, label %if.end.i.xfs_mru_cache_flush.exit_crit_edge, label %if.then3.i

if.end.i.xfs_mru_cache_flush.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfs_mru_cache_flush.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  %work.i = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 9
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i) #8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  br label %xfs_mru_cache_flush.exit

xfs_mru_cache_flush.exit:                         ; preds = %if.then3.i, %if.end.i.xfs_mru_cache_flush.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %grp_count.i = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 4
  %5 = ptrtoint ptr %grp_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %grp_count.i, align 4
  %grp_time.i = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 5
  %7 = ptrtoint ptr %grp_time.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %grp_time.i, align 4
  %mul.i = mul i32 %8, %6
  %add.i = add i32 %mul.i, %4
  %call7.i = tail call fastcc i32 @_xfs_mru_cache_migrate(ptr noundef nonnull %mru, i32 noundef %add.i) #8
  tail call fastcc void @_xfs_mru_cache_clear_reap_list(ptr noundef nonnull %mru) #8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  %9 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lists, align 4
  tail call void @kvfree(ptr noundef %10) #8
  tail call void @kvfree(ptr noundef nonnull %mru) #8
  br label %return

return:                                           ; preds = %xfs_mru_cache_flush.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_mru_cache_insert(ptr noundef %mru, i32 noundef %key, ptr noundef %elem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mru, null
  br i1 %tobool.not, label %cleanup.critedge, label %land.rhs, !prof !32

land.rhs:                                         ; preds = %entry
  %lists = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 1
  %0 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lists, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false, label %land.rhs.if.end_crit_edge, !prof !32

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %land.rhs
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 426) #8
  %2 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %lists, align 4
  %tobool6.not = icmp eq ptr %.pr, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.rhs.if.end_crit_edge
  %call = tail call i32 @radix_tree_preload(i32 noundef 3136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %3 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %elem, ptr %elem, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %elem, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %elem, ptr %prev.i, align 4
  %key10 = getelementptr inbounds %struct.xfs_mru_cache_elem, ptr %elem, i32 0, i32 1
  %5 = ptrtoint ptr %key10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %key, ptr %key10, align 4
  %lock = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %call11 = tail call i32 @radix_tree_insert(ptr noundef nonnull %mru, i32 noundef %key, ptr noundef %elem) #8
  %6 = tail call i32 @llvm.read_register.i32(metadata !22) #8
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, ptrtoint (ptr @radix_tree_preloads to i32)
  %12 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %12) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !33
  %13 = tail call i32 @llvm.read_register.i32(metadata !22) #8
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_xfs_mru_cache_list_insert(ptr noundef nonnull %mru, ptr noundef %elem)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9.if.end14_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 426) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.end14, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end14 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_xfs_mru_cache_list_insert(ptr noundef %mru, ptr noundef %elem) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call = tail call fastcc i32 @_xfs_mru_cache_migrate(ptr noundef %mru, i32 noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %time_zero = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 7
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %time_zero to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %time_zero, align 4
  %queued = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 10
  %2 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %queued, align 4
  %5 = load ptr, ptr @xfs_mru_reap_wq, align 4
  %work = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 9
  %grp_count = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 4
  %6 = ptrtoint ptr %grp_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grp_count, align 4
  %grp_time = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 5
  %8 = ptrtoint ptr %grp_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %grp_time, align 4
  %mul = mul i32 %9, %7
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work, i32 noundef %mul) #8
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %time_zero to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %time_zero, align 4
  %sub = sub i32 %0, %11
  %grp_time6 = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 5
  %12 = ptrtoint ptr %grp_time6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %grp_time6, align 4
  %div = udiv i32 %sub, %13
  %lru_grp = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 6
  %14 = ptrtoint ptr %lru_grp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lru_grp, align 4
  %add = add i32 %15, %div
  %grp_count7 = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 4
  %16 = ptrtoint ptr %grp_count7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %grp_count7, align 4
  %rem = urem i32 %add, %17
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2, %if.then.if.end8_crit_edge
  %grp.0 = phi i32 [ %rem, %if.else ], [ 0, %if.then.if.end8_crit_edge ], [ 0, %if.then2 ]
  %lists = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 1
  %18 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lists, align 4
  %add.ptr = getelementptr %struct.list_head, ptr %19, i32 %grp.0
  %prev.i = getelementptr %struct.list_head, ptr %19, i32 %grp.0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %elem, ptr noundef %21, ptr noundef %add.ptr) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add_tail.exit_crit_edge

if.end8.list_add_tail.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %elem, ptr %prev.i, align 4
  %23 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %elem, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %elem, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %elem, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end8.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_mru_cache_remove(ptr noundef %mru, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mru, null
  br i1 %tobool.not, label %cleanup.critedge, label %land.rhs, !prof !32

land.rhs:                                         ; preds = %entry
  %lists = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 1
  %0 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lists, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false, label %land.rhs.if.end_crit_edge, !prof !32

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %land.rhs
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 459) #8
  %2 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %lists, align 4
  %tobool6.not = icmp eq ptr %.pr, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.rhs.if.end_crit_edge
  %lock = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %call = tail call ptr @radix_tree_delete(ptr noundef nonnull %mru, i32 noundef %key) #8
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del.exit_crit_edge

if.then8.list_del.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then8.list_del.exit_crit_edge
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %list_del.exit, %if.end.if.end9_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 459) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.end9, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end9 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %cleanup.critedge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_mru_cache_delete(ptr noundef %mru, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_mru_cache_remove(ptr noundef %mru, i32 noundef %key)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %free_func = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 8
  %0 = ptrtoint ptr %free_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_func, align 4
  %data = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void %1(ptr noundef %3, ptr noundef nonnull %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_mru_cache_lookup(ptr noundef %mru, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mru, null
  br i1 %tobool.not, label %cleanup.critedge, label %land.rhs, !prof !32

land.rhs:                                         ; preds = %entry
  %lists = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 1
  %0 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lists, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false, label %land.rhs.if.end_crit_edge, !prof !32

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false:                                    ; preds = %land.rhs
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 515) #8
  %2 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %lists, align 4
  %tobool6.not = icmp eq ptr %.pr, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.rhs.if.end_crit_edge
  %lock = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %call = tail call ptr @radix_tree_lookup(ptr noundef nonnull %mru, i32 noundef %key) #8
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del.exit_crit_edge

if.then8.list_del.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then8.list_del.exit_crit_edge
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @_xfs_mru_cache_list_insert(ptr noundef nonnull %mru, ptr noundef nonnull %call)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 515) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.else, %list_del.exit, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.else ], [ %call, %list_del.exit ], [ null, %cleanup.critedge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_mru_cache_done(ptr noundef %mru) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_xfs_mru_cache_migrate(ptr nocapture noundef %mru, i32 noundef %now) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %time_zero = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 7
  %0 = ptrtoint ptr %time_zero to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %time_zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %grp_count = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 4
  %grp_time = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 5
  %lists = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 1
  %lru_grp = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 6
  %prev = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 2, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end4.while.cond_crit_edge, %while.cond.preheader
  %migrated.0 = phi i32 [ %inc, %if.end4.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %2 = ptrtoint ptr %time_zero to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %time_zero, align 4
  %4 = ptrtoint ptr %grp_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grp_count, align 4
  %6 = ptrtoint ptr %grp_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grp_time, align 4
  %mul = mul i32 %7, %5
  %sub = sub i32 %now, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp.not = icmp ugt i32 %3, %sub
  br i1 %cmp.not, label %for.cond.preheader, label %while.body

for.cond.preheader:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1876.not = icmp eq i32 %5, 0
  br i1 %cmp1876.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lists, align 4
  %10 = ptrtoint ptr %lru_grp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lru_grp, align 4
  br label %for.body

while.body:                                       ; preds = %while.cond
  %12 = ptrtoint ptr %lists to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lists, align 4
  %14 = ptrtoint ptr %lru_grp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lru_grp, align 4
  %add.ptr = getelementptr %struct.list_head, ptr %13, i32 %15
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not = icmp eq ptr %17, %add.ptr
  br i1 %cmp.i.not, label %while.body.if.end4_crit_edge, label %if.then3

while.body.if.end4_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %while.body
  %18 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev, align 4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not.i = icmp eq ptr %21, %add.ptr
  br i1 %cmp.i.not.i, label %if.then3.if.end4_crit_edge, label %if.then.i

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev2.i.i = getelementptr %struct.list_head, ptr %13, i32 %15, i32 1
  %24 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %19, ptr %prev3.i.i, align 4
  store ptr %21, ptr %19, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %25, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev6.i.i, align 4
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  store ptr %add.ptr, ptr %prev2.i.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then3.if.end4_crit_edge, %while.body.if.end4_crit_edge
  %30 = ptrtoint ptr %lru_grp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lru_grp, align 4
  %add = add i32 %31, 1
  %32 = ptrtoint ptr %grp_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %grp_count, align 4
  %rem = urem i32 %add, %33
  store i32 %rem, ptr %lru_grp, align 4
  %34 = ptrtoint ptr %grp_time to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %grp_time, align 4
  %36 = ptrtoint ptr %time_zero to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %time_zero, align 4
  %add10 = add i32 %37, %35
  store i32 %add10, ptr %time_zero, align 4
  %inc = add i32 %migrated.0, 1
  %cmp12 = icmp eq i32 %inc, %33
  br i1 %cmp12, label %if.then13, label %if.end4.while.cond_crit_edge

if.end4.while.cond_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then13:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %lru_grp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %lru_grp, align 4
  %39 = ptrtoint ptr %time_zero to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %time_zero, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %grp.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %for.inc.for.body_crit_edge ]
  %add21 = add i32 %11, %grp.077
  %rem23 = urem i32 %add21, %5
  %add.ptr24 = getelementptr %struct.list_head, ptr %9, i32 %rem23
  %40 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %add.ptr24, align 4
  %cmp.i68.not = icmp eq ptr %41, %add.ptr24
  br i1 %cmp.i68.not, label %for.inc, label %if.then27

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add30 = add i32 %grp.077, %5
  %mul32 = mul i32 %add30, %7
  %add33 = add i32 %mul32, %3
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc35 = add nuw i32 %grp.077, 1
  %exitcond.not = icmp eq i32 %inc35, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %42 = ptrtoint ptr %lru_grp to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %lru_grp, align 4
  %43 = ptrtoint ptr %time_zero to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %time_zero, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then27, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %add33, %if.then27 ], [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_xfs_mru_cache_clear_reap_list(ptr noundef %mru) unnamed_addr #3 align 64 {
entry:
  %tmp = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp, i32 0, i32 1
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %tmp, ptr %tmp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp, ptr %0, align 4
  %reap_list = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 2
  %3 = ptrtoint ptr %reap_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reap_list, align 4
  %cmp.not59 = icmp eq ptr %4, %reap_list
  br i1 %cmp.not59, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_move.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %elem.060 = phi ptr [ %next.0, %list_move.exit.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %elem.060 to i32
  call void @__asan_load4_noabort(i32 %5)
  %next.0 = load ptr, ptr %elem.060, align 4
  %key = getelementptr inbounds %struct.xfs_mru_cache_elem, ptr %elem.060, i32 0, i32 1
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 4
  %call = call ptr @radix_tree_delete(ptr noundef %mru, i32 noundef %7) #8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %elem.060) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %elem.060, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %elem.060 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %elem.060, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tmp, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %elem.060, ptr noundef nonnull %tmp, ptr noundef %15) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %elem.060, ptr %prev1.i.i2.i, align 4
  %17 = ptrtoint ptr %elem.060 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %elem.060, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %elem.060, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tmp, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %elem.060, ptr %tmp, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %cmp.not = icmp eq ptr %next.0, %reap_list
  br i1 %cmp.not, label %list_move.exit.for.end_crit_edge, label %list_move.exit.for.body_crit_edge

list_move.exit.for.body_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_move.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %lock = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 3
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tmp, align 4
  %cmp26.not62 = icmp eq ptr %21, %tmp
  br i1 %cmp26.not62, label %for.end.for.end36_crit_edge, label %for.body28.lr.ph

for.end.for.end36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36

for.body28.lr.ph:                                 ; preds = %for.end
  %free_func = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 8
  %data = getelementptr inbounds %struct.xfs_mru_cache, ptr %mru, i32 0, i32 11
  br label %for.body28

for.body28:                                       ; preds = %list_del_init.exit.for.body28_crit_edge, %for.body28.lr.ph
  %elem.163 = phi ptr [ %21, %for.body28.lr.ph ], [ %next.1, %list_del_init.exit.for.body28_crit_edge ]
  %22 = ptrtoint ptr %elem.163 to i32
  call void @__asan_load4_noabort(i32 %22)
  %next.1 = load ptr, ptr %elem.163, align 4
  %call.i.i54 = call zeroext i1 @__list_del_entry_valid(ptr noundef %elem.163) #8
  br i1 %call.i.i54, label %if.end.i.i57, label %for.body28.list_del_init.exit_crit_edge

for.body28.list_del_init.exit_crit_edge:          ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i57:                                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i55 = getelementptr inbounds %struct.list_head, ptr %elem.163, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i55, align 4
  %25 = ptrtoint ptr %elem.163 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %elem.163, align 4
  %prev1.i.i.i56 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i56, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i57, %for.body28.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %elem.163 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %elem.163, ptr %elem.163, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %elem.163, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %elem.163, ptr %prev.i3.i, align 4
  %31 = ptrtoint ptr %free_func to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %free_func, align 4
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  call void %32(ptr noundef %34, ptr noundef %elem.163) #8
  %cmp26.not = icmp eq ptr %next.1, %tmp
  br i1 %cmp26.not, label %list_del_init.exit.for.end36_crit_edge, label %list_del_init.exit.for.body28_crit_edge

list_del_init.exit.for.body28_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

list_del_init.exit.for.end36_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36

for.end36:                                        ; preds = %list_del_init.exit.for.end36_crit_edge, %for.end.for.end36_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !22) #8
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !34

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #8
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree noinline norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !13, !15, !17, !18, !20, !21}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_mru_cache.c", i32 296, i32 36}
!2 = !{ptr @xfs_mru_cache_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_mru_cache.c", i32 357, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @xfs_mru_cache_create.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_mru_cache.c", i32 358, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @xfs_mru_cache_create.__key.4, !6, !"__key", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_mru_cache.c", i32 426, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @xfs_mru_reap_wq, !14, !"xfs_mru_reap_wq", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_mru_cache.c", i32 106, i32 33}
!15 = !{ptr @xa_init_flags.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 2152642434}
!34 = !{!"branch_weights", i32 2000, i32 1}
