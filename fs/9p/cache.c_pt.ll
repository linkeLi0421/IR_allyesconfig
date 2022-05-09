; ModuleID = '/llk/IR_all_yes/fs/9p/cache.c_pt.bc'
source_filename = "../fs/9p/cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v9fs_session_info = type { i8, i8, i16, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i32 }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"9p,%s,%s\00", [23 x i8] zeroinitializer }, align 32
@__func__.v9fs_cache_session_get_cookie = private unnamed_addr constant [30 x i8] c"v9fs_cache_session_get_cookie\00", align 1
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"session %p get volume %p (%s)\0A\00", [33 x i8] zeroinitializer }, align 32
@v9fs_cache_session_get_cookie._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.v9fs_cache_session_get_cookie, ptr @.str.3, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Cache volume key already in use (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/9p/cache.c\00", [18 x i8] zeroinitializer }, align 32
@v9fs_cache_session_get_cookie._entry_ptr = internal global ptr @v9fs_cache_session_get_cookie._entry, section ".printk_index", align 4
@__func__.v9fs_cache_inode_get_cookie = private unnamed_addr constant [28 x i8] c"v9fs_cache_inode_get_cookie\00", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"inode %p get cookie %p\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 25, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 35, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 42, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [17 x i8] c"../fs/9p/cache.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 74, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @v9fs_cache_session_get_cookie._entry, ptr @v9fs_cache_session_get_cookie._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_cache_session_get_cookie._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_cache_session_get_cookie(ptr noundef %v9ses, ptr noundef %dev_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cachetag = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 5
  %0 = ptrtoint ptr %cachetag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cachetag, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %aname = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 8
  %2 = ptrtoint ptr %aname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aname, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %dev_name, ptr noundef %cond) #6
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.cond_crit_edge

cond.end.for.cond_crit_edge:                      ; preds = %cond.end
  br label %for.cond

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.inc, %cond.end.for.cond_crit_edge
  %p.0 = phi ptr [ %incdec.ptr, %for.inc ], [ %call, %cond.end.for.cond_crit_edge ]
  %4 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p.0, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 47, label %if.then4
  ]

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then4:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %p.0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 59, ptr %p.0, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.cond.for.inc_crit_edge
  %incdec.ptr = getelementptr i8, ptr %p.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call.i = tail call ptr @__fscache_acquire_volume(ptr noundef nonnull %call, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 2048, ptr noundef nonnull @__func__.v9fs_cache_session_get_cookie, ptr noundef nonnull @.str.1, ptr noundef %v9ses, ptr noundef %call.i, ptr noundef nonnull %call) #6
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then8:                                         ; preds = %for.end
  %cmp10.not = icmp eq ptr %call.i, inttoptr (i32 -16 to ptr)
  br i1 %cmp10.not, label %do.end, label %if.then12

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call) #6
  %8 = ptrtoint ptr %call.i to i32
  br label %cleanup

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %call) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end, %for.end.if.end16_crit_edge
  %vcookie.0 = phi ptr [ null, %do.end ], [ %call.i, %for.end.if.end16_crit_edge ]
  %fscache = getelementptr inbounds %struct.v9fs_session_info, ptr %v9ses, i32 0, i32 6
  %9 = ptrtoint ptr %fscache to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vcookie.0, ptr %fscache, align 4
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then12, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then12 ], [ 0, %if.end16 ], [ -12, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_cache_inode_get_cookie(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %version = alloca i32, align 4
  %path = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #6
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end25, label %do.end, !prof !22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 61, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %version26 = getelementptr i8, ptr %inode, i32 -116
  %5 = ptrtoint ptr %version26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version26, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %version, align 4
  %path28 = getelementptr i8, ptr %inode, i32 -112
  %9 = ptrtoint ptr %path28 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %path28, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %12 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %path, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %fscache.i = getelementptr inbounds %struct.v9fs_session_info, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %fscache.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fscache.i, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end25
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !23
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  %20 = tail call ptr @llvm.returnaddress(i32 0) #6
  %21 = ptrtoint ptr %20 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %21) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %21) #6
  tail call void @trace_hardirqs_on() #6
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call ptr @llvm.returnaddress(i32 0) #6
  %23 = ptrtoint ptr %22 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %23) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %23) #6
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !24
  %and.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !25

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #6, !srcloc !26
  %25 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !28
  %27 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %28, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %26, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %28, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  %29 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  %31 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %32, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %tobool.not.i47 = icmp eq ptr %18, null
  br i1 %tobool.not.i47, label %i_size_read.exit.fscache_acquire_cookie.exit_crit_edge, label %if.end.i

i_size_read.exit.fscache_acquire_cookie.exit_crit_edge: ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fscache_acquire_cookie.exit

if.end.i:                                         ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call ptr @__fscache_acquire_cookie(ptr noundef nonnull %18, i8 noundef zeroext 0, ptr noundef nonnull %path, i32 noundef 8, ptr noundef nonnull %version, i32 noundef 4, i64 noundef %30) #6
  br label %fscache_acquire_cookie.exit

fscache_acquire_cookie.exit:                      ; preds = %if.end.i, %i_size_read.exit.fscache_acquire_cookie.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ null, %i_size_read.exit.fscache_acquire_cookie.exit_crit_edge ]
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i, ptr %add.ptr.i, align 8
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 2048, ptr noundef nonnull @__func__.v9fs_cache_inode_get_cookie, ptr noundef nonnull @.str.4, ptr noundef %inode, ptr noundef %retval.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fscache_acquire_cookie.exit, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fscache_acquire_volume(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fscache_acquire_cookie(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/9p/cache.c", i32 25, i32 31}
!2 = !{ptr @__func__.v9fs_cache_session_get_cookie, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/9p/cache.c", i32 35, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/9p/cache.c", i32 42, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @v9fs_cache_session_get_cookie._entry, !6, !"_entry", i1 false, i1 false}
!9 = !{ptr @v9fs_cache_session_get_cookie._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__func__.v9fs_cache_inode_get_cookie, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/9p/cache.c", i32 74, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 607483, i64 607544}
!24 = !{i64 610215}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 610500}
!27 = !{i64 2152904056}
!28 = !{i64 2152903898}
!29 = !{i64 2152904226}
!30 = !{i64 2149809184}
