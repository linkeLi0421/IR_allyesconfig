; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/dfs_pri_detector.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/dfs_pri_detector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pri_detector = type { ptr, ptr, ptr, ptr, i64, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.radar_detector_specs = type { i8, i8, i8, i16, i16, i8, i8, i8, i8, i8 }
%struct.pulse_event = type { i64, i16, i8, i8, i8 }
%struct.pri_sequence = type { %struct.list_head, i32, i32, i32, i32, i64, i64, i64 }
%struct.pulse_elem = type { %struct.list_head, i64 }

@global_dfs_pool_stats = dso_local global { %struct.ath_dfs_pool_stats, [36 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pool_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@singleton_pool_references = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pulse_pool = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pulse_pool, ptr @pulse_pool }, [24 x i8] zeroinitializer }, align 32
@pseq_pool = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pseq_pool, ptr @pseq_pool }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pool_lock\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"global_dfs_pool_stats\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 24, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"pool_lock\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"singleton_pool_references\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 81, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"pulse_pool\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 82, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"pseq_pool\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 83, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [47 x i8] c"../drivers/net/wireless/ath/dfs_pri_detector.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 84, i32 8 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @global_dfs_pool_stats, ptr @pool_lock, ptr @singleton_pool_references, ptr @pulse_pool, ptr @pseq_pool, ptr @.str], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_dfs_pool_stats to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pool_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @singleton_pool_references to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pulse_pool to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pseq_pool to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pri_detector_init(ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 56) #7
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pri_detector_exit, ptr %call7.i.i, align 8
  %add_pulse = getelementptr inbounds %struct.pri_detector, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %add_pulse to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pri_detector_add_pulse, ptr %add_pulse, align 4
  %reset = getelementptr inbounds %struct.pri_detector, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pri_detector_reset, ptr %reset, align 8
  %sequences = getelementptr inbounds %struct.pri_detector, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %sequences to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %sequences, ptr %sequences, align 8
  %prev.i = getelementptr inbounds %struct.pri_detector, ptr %call7.i.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sequences, ptr %prev.i, align 4
  %pulses = getelementptr inbounds %struct.pri_detector, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %pulses to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %pulses, ptr %pulses, align 8
  %prev.i21 = getelementptr inbounds %struct.pri_detector, ptr %call7.i.i, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pulses, ptr %prev.i21, align 4
  %pri_max = getelementptr inbounds %struct.radar_detector_specs, ptr %rs, i32 0, i32 4
  %8 = ptrtoint ptr %pri_max to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pri_max, align 2
  %conv = zext i16 %9 to i32
  %ppb = getelementptr inbounds %struct.radar_detector_specs, ptr %rs, i32 0, i32 6
  %10 = ptrtoint ptr %ppb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ppb, align 1
  %conv1 = zext i8 %11 to i32
  %mul = mul nuw nsw i32 %conv1, %conv
  %num_pri = getelementptr inbounds %struct.radar_detector_specs, ptr %rs, i32 0, i32 5
  %12 = ptrtoint ptr %num_pri to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_pri, align 2
  %conv2 = zext i8 %13 to i32
  %mul3 = mul nuw i32 %mul, %conv2
  %window_size = getelementptr inbounds %struct.pri_detector, ptr %call7.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %window_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul3, ptr %window_size, align 8
  %mul6 = shl nuw nsw i32 %conv1, 1
  %max_count = getelementptr inbounds %struct.pri_detector, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %max_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul6, ptr %max_count, align 4
  %rs7 = getelementptr inbounds %struct.pri_detector, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %rs7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rs, ptr %rs7, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @pool_lock) #4
  %17 = load i32, ptr @singleton_pool_references, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr @singleton_pool_references, align 4
  %18 = load i32, ptr @global_dfs_pool_stats, align 4
  %inc1.i = add i32 %18, 1
  store i32 %inc1.i, ptr @global_dfs_pool_stats, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @pool_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pri_detector_exit(ptr noundef %de) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pri_detector_reset(ptr noundef %de, i64 noundef 0)
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @pool_lock) #4
  %0 = load i32, ptr @singleton_pool_references, align 4
  %dec.i = add i32 %0, -1
  store i32 %dec.i, ptr @singleton_pool_references, align 4
  %1 = load i32, ptr @global_dfs_pool_stats, align 4
  %dec1.i = add i32 %1, -1
  store i32 %dec1.i, ptr @global_dfs_pool_stats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pool_deregister_ref.exit_crit_edge

entry.pool_deregister_ref.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %pool_deregister_ref.exit

if.then.i:                                        ; preds = %entry
  %2 = load ptr, ptr @pulse_pool, align 4
  %cmp6.not50.i = icmp eq ptr %2, @pulse_pool
  br i1 %cmp6.not50.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %p.051.i = phi ptr [ %p0.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %2, %if.then.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %p.051.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %p0.0.i = load ptr, ptr %p.051.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.051.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.051.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %p.051.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p.051.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %p.051.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %p.051.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.051.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 1), align 4
  %dec8.i = add i32 %12, -1
  store i32 %dec8.i, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 1), align 4
  tail call void @kfree(ptr noundef %p.051.i) #4
  %cmp6.not.i = icmp eq ptr %p0.0.i, @pulse_pool
  br i1 %cmp6.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %13 = load ptr, ptr @pseq_pool, align 4
  %cmp24.not53.i = icmp eq ptr %13, @pseq_pool
  br i1 %cmp24.not53.i, label %for.end.i.pool_deregister_ref.exit_crit_edge, label %for.end.i.for.body26.i_crit_edge

for.end.i.for.body26.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body26.i

for.end.i.pool_deregister_ref.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pool_deregister_ref.exit

for.body26.i:                                     ; preds = %list_del.exit49.i.for.body26.i_crit_edge, %for.end.i.for.body26.i_crit_edge
  %ps.054.i = phi ptr [ %ps0.0.i, %list_del.exit49.i.for.body26.i_crit_edge ], [ %13, %for.end.i.for.body26.i_crit_edge ]
  %14 = ptrtoint ptr %ps.054.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %ps0.0.i = load ptr, ptr %ps.054.i, align 8
  %call.i.i44.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ps.054.i) #4
  br i1 %call.i.i44.i, label %if.end.i.i47.i, label %for.body26.i.list_del.exit49.i_crit_edge

for.body26.i.list_del.exit49.i_crit_edge:         ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit49.i

if.end.i.i47.i:                                   ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i45.i = getelementptr inbounds %struct.list_head, ptr %ps.054.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i45.i, align 4
  %17 = ptrtoint ptr %ps.054.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ps.054.i, align 4
  %prev1.i.i.i46.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i46.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit49.i

list_del.exit49.i:                                ; preds = %if.end.i.i47.i, %for.body26.i.list_del.exit49.i_crit_edge
  %21 = ptrtoint ptr %ps.054.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %ps.054.i, align 4
  %prev.i48.i = getelementptr inbounds %struct.list_head, ptr %ps.054.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i48.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i48.i, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 4), align 4
  %dec28.i = add i32 %23, -1
  store i32 %dec28.i, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 4), align 4
  tail call void @kfree(ptr noundef %ps.054.i) #4
  %cmp24.not.i = icmp eq ptr %ps0.0.i, @pseq_pool
  br i1 %cmp24.not.i, label %list_del.exit49.i.pool_deregister_ref.exit_crit_edge, label %list_del.exit49.i.for.body26.i_crit_edge

list_del.exit49.i.for.body26.i_crit_edge:         ; preds = %list_del.exit49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body26.i

list_del.exit49.i.pool_deregister_ref.exit_crit_edge: ; preds = %list_del.exit49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pool_deregister_ref.exit

pool_deregister_ref.exit:                         ; preds = %list_del.exit49.i.pool_deregister_ref.exit_crit_edge, %for.end.i.pool_deregister_ref.exit_crit_edge, %entry.pool_deregister_ref.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @pool_lock) #4
  tail call void @kfree(ptr noundef %de) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pri_detector_add_pulse(ptr noundef %de, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %event, align 8
  %rs2 = getelementptr inbounds %struct.pri_detector, ptr %de, i32 0, i32 3
  %2 = ptrtoint ptr %rs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rs2, align 4
  %width_min = getelementptr inbounds %struct.radar_detector_specs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %width_min to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %width_min, align 1
  %width = getelementptr inbounds %struct.pulse_event, ptr %event, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp = icmp ugt i8 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %width_max = getelementptr inbounds %struct.radar_detector_specs, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %width_max to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width_max, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %7)
  %cmp8 = icmp ult i8 %9, %7
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %last_ts = getelementptr inbounds %struct.pri_detector, ptr %de, i32 0, i32 4
  %10 = ptrtoint ptr %last_ts to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %last_ts, align 8
  %sub = sub i64 %1, %11
  %max_pri_tolerance = getelementptr inbounds %struct.radar_detector_specs, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %max_pri_tolerance to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_pri_tolerance, align 1
  %conv10 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv10)
  %cmp11 = icmp ult i64 %sub, %conv10
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %chirp = getelementptr inbounds %struct.radar_detector_specs, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %chirp to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %chirp, align 2, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end14.if.end25_crit_edge, label %land.lhs.true

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end14
  %chirp19 = getelementptr inbounds %struct.pulse_event, ptr %event, i32 0, i32 4
  %16 = ptrtoint ptr %chirp19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chirp19, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp22.not = icmp eq i8 %17, 1
  br i1 %cmp22.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end14.if.end25_crit_edge
  %18 = ptrtoint ptr %last_ts to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %1, ptr %last_ts, align 8
  %sequences.i = getelementptr inbounds %struct.pri_detector, ptr %de, i32 0, i32 5
  %19 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sequences.i, align 8
  %cmp.not55.i = icmp eq ptr %20, %sequences.i
  br i1 %cmp.not55.i, label %if.end25.pseq_handler_add_to_existing_seqs.exit_crit_edge, label %if.end25.for.body.i_crit_edge

if.end25.for.body.i_crit_edge:                    ; preds = %if.end25
  br label %for.body.i

if.end25.pseq_handler_add_to_existing_seqs.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %pseq_handler_add_to_existing_seqs.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end25.for.body.i_crit_edge
  %max_count.058.i = phi i32 [ %max_count.2.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end25.for.body.i_crit_edge ]
  %ps.056.i = phi ptr [ %ps2.060.i, %cleanup.i.for.body.i_crit_edge ], [ %20, %if.end25.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %ps.056.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %ps2.060.i = load ptr, ptr %ps.056.i, align 8
  %deadline_ts.i = getelementptr inbounds %struct.pri_sequence, ptr %ps.056.i, i32 0, i32 7
  %22 = ptrtoint ptr %deadline_ts.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %deadline_ts.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %1)
  %cmp7.i = icmp ult i64 %23, %1
  br i1 %cmp7.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ps.056.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ps.056.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %ps.056.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ps.056.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %30 = ptrtoint ptr %ps.056.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %ps.056.i, ptr %ps.056.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %ps.056.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ps.056.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @pool_lock) #4
  %32 = load ptr, ptr @pseq_pool, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ps.056.i, ptr noundef nonnull @pseq_pool, ptr noundef %32) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %list_del_init.exit.i.pool_put_pseq_elem.exit.i_crit_edge

list_del_init.exit.i.pool_put_pseq_elem.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pool_put_pseq_elem.exit.i

if.end.i.i.i.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i48.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ps.056.i, ptr %prev1.i.i.i48.i, align 4
  %34 = ptrtoint ptr %ps.056.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %ps.056.i, align 4
  %35 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pseq_pool, ptr %prev.i3.i.i, align 4
  store volatile ptr %ps.056.i, ptr @pseq_pool, align 4
  br label %pool_put_pseq_elem.exit.i

pool_put_pseq_elem.exit.i:                        ; preds = %if.end.i.i.i.i, %list_del_init.exit.i.pool_put_pseq_elem.exit.i_crit_edge
  %36 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 6), align 4
  %dec.i.i = add i32 %36, -1
  store i32 %dec.i.i, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 6), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @pool_lock) #4
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %last_ts.i = getelementptr inbounds %struct.pri_sequence, ptr %ps.056.i, i32 0, i32 6
  %37 = ptrtoint ptr %last_ts.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %last_ts.i, align 8
  %sub.i = sub i64 %1, %38
  %conv.i = trunc i64 %sub.i to i32
  %pri.i = getelementptr inbounds %struct.pri_sequence, ptr %ps.056.i, i32 0, i32 1
  %39 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pri.i, align 8
  %41 = ptrtoint ptr %rs2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rs2, align 4
  %max_pri_tolerance.i = getelementptr inbounds %struct.radar_detector_specs, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %max_pri_tolerance.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %max_pri_tolerance.i, align 1
  %conv9.i = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 0
  br i1 %cmp.i.i, label %if.end.i.if.else.i_crit_edge, label %if.end.i.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i)
  %cmp1.i.i = icmp ugt i32 %40, %conv.i
  %sub.i.i = sub i32 %40, %conv.i
  %sub2.i.i = sub i32 %conv.i, %40
  %cond.i.i = select i1 %cmp1.i.i, i32 %sub.i.i, i32 %sub2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv9.i)
  %cmp3.not.i.i = icmp ugt i32 %cond.i.i, %conv9.i
  br i1 %cmp3.not.i.i, label %if.end5.i.i, label %if.end.i.i.if.then12.i_crit_edge

if.end.i.i.if.then12.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %conv.i.frozen = freeze i32 %conv.i
  %.frozen = freeze i32 %40
  %div.i.i = udiv i32 %conv.i.frozen, %.frozen
  %45 = mul i32 %div.i.i, %.frozen
  %rem.i.i.decomposed = sub i32 %conv.i.frozen, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i.decomposed, i32 %conv9.i)
  %cmp6.i.i = icmp ugt i32 %rem.i.i.decomposed, %conv9.i
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end5.i.i.pde_get_multiple.exit.i_crit_edge

if.end5.i.i.pde_get_multiple.exit.i_crit_edge:    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pde_get_multiple.exit.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  %sub8.i.i = sub i32 %40, %rem.i.i.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i.i, i32 %conv9.i)
  %cmp9.not.i.i = icmp ugt i32 %sub8.i.i, %conv9.i
  %inc.i.i = add i32 %div.i.i, 1
  br i1 %cmp9.not.i.i, label %if.then7.i.i.if.else.i_crit_edge, label %if.then7.i.i.pde_get_multiple.exit.i_crit_edge

if.then7.i.i.pde_get_multiple.exit.i_crit_edge:   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pde_get_multiple.exit.i

if.then7.i.i.if.else.i_crit_edge:                 ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

pde_get_multiple.exit.i:                          ; preds = %if.then7.i.i.pde_get_multiple.exit.i_crit_edge, %if.end5.i.i.pde_get_multiple.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %div.i.i, %if.end5.i.i.pde_get_multiple.exit.i_crit_edge ], [ %inc.i.i, %if.then7.i.i.pde_get_multiple.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp10.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp10.not.i, label %pde_get_multiple.exit.i.if.else.i_crit_edge, label %pde_get_multiple.exit.i.if.then12.i_crit_edge

pde_get_multiple.exit.i.if.then12.i_crit_edge:    ; preds = %pde_get_multiple.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i

pde_get_multiple.exit.i.if.else.i_crit_edge:      ; preds = %pde_get_multiple.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then12.i:                                      ; preds = %pde_get_multiple.exit.i.if.then12.i_crit_edge, %if.end.i.i.if.then12.i_crit_edge
  %46 = ptrtoint ptr %last_ts.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %1, ptr %last_ts.i, align 8
  %count.i = getelementptr inbounds %struct.pri_sequence, ptr %ps.056.i, i32 0, i32 3
  %47 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count.i, align 8
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %count.i, align 8
  %49 = tail call i32 @llvm.umax.i32(i32 %max_count.058.i, i32 %inc.i) #4
  br label %cleanup.i

if.else.i:                                        ; preds = %pde_get_multiple.exit.i.if.else.i_crit_edge, %if.then7.i.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %count_falses.i = getelementptr inbounds %struct.pri_sequence, ptr %ps.056.i, i32 0, i32 4
  %50 = ptrtoint ptr %count_falses.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count_falses.i, align 4
  %inc20.i = add i32 %51, 1
  store i32 %inc20.i, ptr %count_falses.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then12.i, %pool_put_pseq_elem.exit.i
  %max_count.2.i = phi i32 [ %max_count.058.i, %pool_put_pseq_elem.exit.i ], [ %max_count.058.i, %if.else.i ], [ %49, %if.then12.i ]
  %cmp.not.i = icmp eq ptr %ps2.060.i, %sequences.i
  br i1 %cmp.not.i, label %cleanup.i.pseq_handler_add_to_existing_seqs.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

cleanup.i.pseq_handler_add_to_existing_seqs.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pseq_handler_add_to_existing_seqs.exit

pseq_handler_add_to_existing_seqs.exit:           ; preds = %cleanup.i.pseq_handler_add_to_existing_seqs.exit_crit_edge, %if.end25.pseq_handler_add_to_existing_seqs.exit_crit_edge
  %max_count.0.lcssa.i = phi i32 [ 0, %if.end25.pseq_handler_add_to_existing_seqs.exit_crit_edge ], [ %max_count.2.i, %cleanup.i.pseq_handler_add_to_existing_seqs.exit_crit_edge ]
  %pulses.i = getelementptr inbounds %struct.pri_detector, ptr %de, i32 0, i32 6
  %52 = ptrtoint ptr %pulses.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %p.0198.i = load ptr, ptr %pulses.i, align 8
  %cmp.not199.i = icmp eq ptr %p.0198.i, %pulses.i
  br i1 %cmp.not199.i, label %pseq_handler_add_to_existing_seqs.exit.if.end29_crit_edge, label %pseq_handler_add_to_existing_seqs.exit.for.body.i64_crit_edge

pseq_handler_add_to_existing_seqs.exit.for.body.i64_crit_edge: ; preds = %pseq_handler_add_to_existing_seqs.exit
  br label %for.body.i64

pseq_handler_add_to_existing_seqs.exit.if.end29_crit_edge: ; preds = %pseq_handler_add_to_existing_seqs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

for.body.i64:                                     ; preds = %for.inc113.i.for.body.i64_crit_edge, %pseq_handler_add_to_existing_seqs.exit.for.body.i64_crit_edge
  %p.0200.i = phi ptr [ %p.0.i, %for.inc113.i.for.body.i64_crit_edge ], [ %p.0198.i, %pseq_handler_add_to_existing_seqs.exit.for.body.i64_crit_edge ]
  %ts2.i = getelementptr inbounds %struct.pulse_elem, ptr %p.0200.i, i32 0, i32 1
  %53 = ptrtoint ptr %ts2.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ts2.i, align 8
  %sub.i62 = sub i64 %1, %54
  %conv.i63 = trunc i64 %sub.i62 to i32
  %55 = ptrtoint ptr %rs2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rs2, align 4
  %pri_min.i = getelementptr inbounds %struct.radar_detector_specs, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %pri_min.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %pri_min.i, align 2
  %conv3.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i63, i32 %conv3.i)
  %cmp4.i = icmp ult i32 %conv.i63, %conv3.i
  br i1 %cmp4.i, label %for.body.i64.for.inc113.i_crit_edge, label %if.end.i65

for.body.i64.for.inc113.i_crit_edge:              ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc113.i

if.end.i65:                                       ; preds = %for.body.i64
  %pri_max.i = getelementptr inbounds %struct.radar_detector_specs, ptr %56, i32 0, i32 4
  %59 = ptrtoint ptr %pri_max.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %pri_max.i, align 2
  %conv7.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i63, i32 %conv7.i)
  %cmp8.i = icmp ugt i32 %conv.i63, %conv7.i
  br i1 %cmp8.i, label %if.end.i65.if.end29_crit_edge, label %if.end11.i

if.end.i65.if.end29_crit_edge:                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end11.i:                                       ; preds = %if.end.i65
  %61 = add nsw i32 %conv7.i, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv3.i)
  %cmp20.i = icmp eq i32 %61, %conv3.i
  %add.i = add nuw nsw i32 %conv3.i, 16
  %cond.off0.i = select i1 %cmp20.i, i32 %add.i, i32 %conv.i63
  %ppb.i = getelementptr inbounds %struct.radar_detector_specs, ptr %56, i32 0, i32 6
  %62 = ptrtoint ptr %ppb.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ppb.i, align 1
  %conv32.i = zext i8 %63 to i32
  %sub33.i = add nsw i32 %conv32.i, -1
  %mul.i = mul i32 %sub33.i, %cond.off0.i
  %max_pri_tolerance.i66 = getelementptr inbounds %struct.radar_detector_specs, ptr %56, i32 0, i32 8
  %64 = ptrtoint ptr %max_pri_tolerance.i66 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %max_pri_tolerance.i66, align 1
  %conv35.i = zext i8 %65 to i32
  %mul36.i = shl nuw nsw i32 %conv35.i, 1
  %add37.i = add i32 %mul.i, %mul36.i
  %conv39.i = zext i32 %add37.i to i64
  %sub40.i = sub i64 %1, %conv39.i
  %66 = ptrtoint ptr %p.0200.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %p2.0183.i = load ptr, ptr %p.0200.i, align 8
  %cmp49.not184.i = icmp eq ptr %p2.0183.i, %pulses.i
  br i1 %cmp49.not184.i, label %if.end11.i.for.end.i_crit_edge, label %for.body52.lr.ph.i

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body52.lr.ph.i:                               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.off0.i)
  %cmp.i.i67 = icmp eq i32 %cond.off0.i, 0
  br label %for.body52.i

for.body52.i:                                     ; preds = %cleanup.i86.for.body52.i_crit_edge, %for.body52.lr.ph.i
  %p2.0192.i = phi ptr [ %p2.0183.i, %for.body52.lr.ph.i ], [ %p2.0.i, %cleanup.i86.for.body52.i_crit_edge ]
  %ps.sroa.10.1190.i = phi i32 [ 2, %for.body52.lr.ph.i ], [ %ps.sroa.10.3.i, %cleanup.i86.for.body52.i_crit_edge ]
  %ps.sroa.14.1188.i = phi i32 [ 0, %for.body52.lr.ph.i ], [ %ps.sroa.14.3.i, %cleanup.i86.for.body52.i_crit_edge ]
  %tmp_false_count.0186.i = phi i32 [ 0, %for.body52.lr.ph.i ], [ %tmp_false_count.2.i, %cleanup.i86.for.body52.i_crit_edge ]
  %ps.sroa.17.1185.i = phi i64 [ %54, %for.body52.lr.ph.i ], [ %ps.sroa.17.3.i, %cleanup.i86.for.body52.i_crit_edge ]
  %ts53.i = getelementptr inbounds %struct.pulse_elem, ptr %p2.0192.i, i32 0, i32 1
  %67 = ptrtoint ptr %ts53.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %ts53.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %sub40.i)
  %cmp54.i = icmp ult i64 %68, %sub40.i
  br i1 %cmp54.i, label %for.body52.i.for.end.i_crit_edge, label %if.end57.i

for.body52.i.for.end.i_crit_edge:                 ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

if.end57.i:                                       ; preds = %for.body52.i
  %sub60.i = sub i64 %1, %68
  %conv61.i = trunc i64 %sub60.i to i32
  br i1 %cmp.i.i67, label %if.end57.i.if.else.i85_crit_edge, label %if.end.i.i73

if.end57.i.if.else.i85_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i85

if.end.i.i73:                                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.off0.i, i32 %conv61.i)
  %cmp1.i.i68 = icmp ugt i32 %cond.off0.i, %conv61.i
  %sub.i.i69 = sub i32 %cond.off0.i, %conv61.i
  %sub2.i.i70 = sub i32 %conv61.i, %cond.off0.i
  %cond.i.i71 = select i1 %cmp1.i.i68, i32 %sub.i.i69, i32 %sub2.i.i70
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i71, i32 %conv35.i)
  %cmp3.not.i.i72 = icmp ugt i32 %cond.i.i71, %conv35.i
  br i1 %cmp3.not.i.i72, label %if.end5.i.i77, label %if.end.i.i73.if.then68.i_crit_edge

if.end.i.i73.if.then68.i_crit_edge:               ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then68.i

if.end5.i.i77:                                    ; preds = %if.end.i.i73
  %conv61.i.frozen = freeze i32 %conv61.i
  %cond.off0.i.frozen = freeze i32 %cond.off0.i
  %div.i.i74 = udiv i32 %conv61.i.frozen, %cond.off0.i.frozen
  %69 = mul i32 %div.i.i74, %cond.off0.i.frozen
  %rem.i.i75.decomposed = sub i32 %conv61.i.frozen, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i75.decomposed, i32 %conv35.i)
  %cmp6.i.i76 = icmp ugt i32 %rem.i.i75.decomposed, %conv35.i
  br i1 %cmp6.i.i76, label %if.then7.i.i81, label %if.end5.i.i77.pde_get_multiple.exit.i83_crit_edge

if.end5.i.i77.pde_get_multiple.exit.i83_crit_edge: ; preds = %if.end5.i.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %pde_get_multiple.exit.i83

if.then7.i.i81:                                   ; preds = %if.end5.i.i77
  %sub8.i.i78 = sub i32 %cond.off0.i, %rem.i.i75.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i.i78, i32 %conv35.i)
  %cmp9.not.i.i79 = icmp ugt i32 %sub8.i.i78, %conv35.i
  %inc.i.i80 = add i32 %div.i.i74, 1
  br i1 %cmp9.not.i.i79, label %if.then7.i.i81.if.else.i85_crit_edge, label %if.then7.i.i81.pde_get_multiple.exit.i83_crit_edge

if.then7.i.i81.pde_get_multiple.exit.i83_crit_edge: ; preds = %if.then7.i.i81
  call void @__sanitizer_cov_trace_pc() #6
  br label %pde_get_multiple.exit.i83

if.then7.i.i81.if.else.i85_crit_edge:             ; preds = %if.then7.i.i81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i85

pde_get_multiple.exit.i83:                        ; preds = %if.then7.i.i81.pde_get_multiple.exit.i83_crit_edge, %if.end5.i.i77.pde_get_multiple.exit.i83_crit_edge
  %retval.0.i.i82 = phi i32 [ %div.i.i74, %if.end5.i.i77.pde_get_multiple.exit.i83_crit_edge ], [ %inc.i.i80, %if.then7.i.i81.pde_get_multiple.exit.i83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i82)
  %cmp66.not.i = icmp eq i32 %retval.0.i.i82, 0
  br i1 %cmp66.not.i, label %pde_get_multiple.exit.i83.if.else.i85_crit_edge, label %pde_get_multiple.exit.i83.if.then68.i_crit_edge

pde_get_multiple.exit.i83.if.then68.i_crit_edge:  ; preds = %pde_get_multiple.exit.i83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then68.i

pde_get_multiple.exit.i83.if.else.i85_crit_edge:  ; preds = %pde_get_multiple.exit.i83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i85

if.then68.i:                                      ; preds = %pde_get_multiple.exit.i83.if.then68.i_crit_edge, %if.end.i.i73.if.then68.i_crit_edge
  %inc.i84 = add i32 %ps.sroa.10.1190.i, 1
  %add73.i = add i32 %tmp_false_count.0186.i, %ps.sroa.14.1188.i
  br label %cleanup.i86

if.else.i85:                                      ; preds = %pde_get_multiple.exit.i83.if.else.i85_crit_edge, %if.then7.i.i81.if.else.i85_crit_edge, %if.end57.i.if.else.i85_crit_edge
  %inc74.i = add i32 %tmp_false_count.0186.i, 1
  br label %cleanup.i86

cleanup.i86:                                      ; preds = %if.else.i85, %if.then68.i
  %ps.sroa.17.3.i = phi i64 [ %68, %if.then68.i ], [ %ps.sroa.17.1185.i, %if.else.i85 ]
  %tmp_false_count.2.i = phi i32 [ 0, %if.then68.i ], [ %inc74.i, %if.else.i85 ]
  %ps.sroa.14.3.i = phi i32 [ %add73.i, %if.then68.i ], [ %ps.sroa.14.1188.i, %if.else.i85 ]
  %ps.sroa.10.3.i = phi i32 [ %inc.i84, %if.then68.i ], [ %ps.sroa.10.1190.i, %if.else.i85 ]
  %70 = ptrtoint ptr %p2.0192.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %p2.0.i = load ptr, ptr %p2.0192.i, align 8
  %cmp49.not.i = icmp eq ptr %p2.0.i, %pulses.i
  br i1 %cmp49.not.i, label %cleanup.i86.for.end.i_crit_edge, label %cleanup.i86.for.body52.i_crit_edge

cleanup.i86.for.body52.i_crit_edge:               ; preds = %cleanup.i86
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body52.i

cleanup.i86.for.end.i_crit_edge:                  ; preds = %cleanup.i86
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i86.for.end.i_crit_edge, %for.body52.i.for.end.i_crit_edge, %if.end11.i.for.end.i_crit_edge
  %ps.sroa.17.1.lcssa.i = phi i64 [ %54, %if.end11.i.for.end.i_crit_edge ], [ %ps.sroa.17.3.i, %cleanup.i86.for.end.i_crit_edge ], [ %ps.sroa.17.1185.i, %for.body52.i.for.end.i_crit_edge ]
  %ps.sroa.14.1.lcssa.i = phi i32 [ 0, %if.end11.i.for.end.i_crit_edge ], [ %ps.sroa.14.3.i, %cleanup.i86.for.end.i_crit_edge ], [ %ps.sroa.14.1188.i, %for.body52.i.for.end.i_crit_edge ]
  %ps.sroa.10.1.lcssa.i = phi i32 [ 2, %if.end11.i.for.end.i_crit_edge ], [ %ps.sroa.10.3.i, %cleanup.i86.for.end.i_crit_edge ], [ %ps.sroa.10.1190.i, %for.body52.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ps.sroa.10.1.lcssa.i, i32 %max_count.0.lcssa.i)
  %cmp82.not.i = icmp ugt i32 %ps.sroa.10.1.lcssa.i, %max_count.0.lcssa.i
  br i1 %cmp82.not.i, label %if.end85.i, label %for.end.i.for.inc113.i_crit_edge

for.end.i.for.inc113.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc113.i

if.end85.i:                                       ; preds = %for.end.i
  %add89.i = add i64 %ps.sroa.17.1.lcssa.i, %conv39.i
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @pool_lock) #4
  %71 = load volatile ptr, ptr @pseq_pool, align 4
  %cmp.i.not.i.i = icmp eq ptr %71, @pseq_pool
  br i1 %cmp.i.not.i.i, label %pool_get_pseq_elem.exit.thread.i, label %if.then.i.i

pool_get_pseq_elem.exit.thread.i:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @pool_lock) #4
  br label %if.then93.i

if.then.i.i:                                      ; preds = %if.end85.i
  %call.i.i.i.i87 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %71) #4
  br i1 %call.i.i.i.i87, label %if.end.i.i.i.i88, label %if.then.i.i.pool_get_pseq_elem.exit.i_crit_edge

if.then.i.i.pool_get_pseq_elem.exit.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pool_get_pseq_elem.exit.i

if.end.i.i.i.i88:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i.i.i, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %pool_get_pseq_elem.exit.i

pool_get_pseq_elem.exit.i:                        ; preds = %if.end.i.i.i.i88, %if.then.i.i.pool_get_pseq_elem.exit.i_crit_edge
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 256 to ptr), ptr %71, align 4
  %prev.i.i.i89 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i89, align 4
  %80 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 6), align 4
  %inc.i165.i = add i32 %80, 1
  store i32 %inc.i165.i, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 6), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @pool_lock) #4
  %cmp91.i = icmp eq ptr %71, null
  br i1 %cmp91.i, label %pool_get_pseq_elem.exit.i.if.then93.i_crit_edge, label %pool_get_pseq_elem.exit.i.if.end102.i_crit_edge

pool_get_pseq_elem.exit.i.if.end102.i_crit_edge:  ; preds = %pool_get_pseq_elem.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102.i

pool_get_pseq_elem.exit.i.if.then93.i_crit_edge:  ; preds = %pool_get_pseq_elem.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then93.i

if.then93.i:                                      ; preds = %pool_get_pseq_elem.exit.i.if.then93.i_crit_edge, %pool_get_pseq_elem.exit.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 2592, i32 noundef 48) #7
  %cmp95.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp95.i, label %if.then28, label %if.end99.i

if.end99.i:                                       ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #6
  %82 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 4), align 4
  %inc100.i = add i32 %82, 1
  store i32 %inc100.i, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 4), align 4
  %83 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 6), align 4
  %inc101.i = add i32 %83, 1
  store i32 %inc101.i, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 6), align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.end99.i, %pool_get_pseq_elem.exit.i.if.end102.i_crit_edge
  %new_ps.0.i = phi ptr [ %call7.i.i, %if.end99.i ], [ %71, %pool_get_pseq_elem.exit.i.if.end102.i_crit_edge ]
  %ps.sroa.4.0.new_ps.0.130.sroa_idx.i = getelementptr inbounds i8, ptr %new_ps.0.i, i32 8
  %84 = ptrtoint ptr %ps.sroa.4.0.new_ps.0.130.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %cond.off0.i, ptr %ps.sroa.4.0.new_ps.0.130.sroa_idx.i, align 8
  %ps.sroa.7.0.new_ps.0.130.sroa_idx.i = getelementptr inbounds i8, ptr %new_ps.0.i, i32 12
  %85 = ptrtoint ptr %ps.sroa.7.0.new_ps.0.130.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add37.i, ptr %ps.sroa.7.0.new_ps.0.130.sroa_idx.i, align 4
  %ps.sroa.10.0.new_ps.0.130.sroa_idx.i = getelementptr inbounds i8, ptr %new_ps.0.i, i32 16
  %86 = ptrtoint ptr %ps.sroa.10.0.new_ps.0.130.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %ps.sroa.10.1.lcssa.i, ptr %ps.sroa.10.0.new_ps.0.130.sroa_idx.i, align 8
  %ps.sroa.14.0.new_ps.0.130.sroa_idx.i = getelementptr inbounds i8, ptr %new_ps.0.i, i32 20
  %87 = ptrtoint ptr %ps.sroa.14.0.new_ps.0.130.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %ps.sroa.14.1.lcssa.i, ptr %ps.sroa.14.0.new_ps.0.130.sroa_idx.i, align 4
  %ps.sroa.17.0.new_ps.0.130.sroa_idx.i = getelementptr inbounds i8, ptr %new_ps.0.i, i32 24
  %88 = ptrtoint ptr %ps.sroa.17.0.new_ps.0.130.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %ps.sroa.17.1.lcssa.i, ptr %ps.sroa.17.0.new_ps.0.130.sroa_idx.i, align 8
  %ps.sroa.20.0.new_ps.0.130.sroa_idx.i = getelementptr inbounds i8, ptr %new_ps.0.i, i32 32
  %89 = ptrtoint ptr %ps.sroa.20.0.new_ps.0.130.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %1, ptr %ps.sroa.20.0.new_ps.0.130.sroa_idx.i, align 8
  %ps.sroa.22.0.new_ps.0.130.sroa_idx.i = getelementptr inbounds i8, ptr %new_ps.0.i, i32 40
  %90 = ptrtoint ptr %ps.sroa.22.0.new_ps.0.130.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %add89.i, ptr %ps.sroa.22.0.new_ps.0.130.sroa_idx.i, align 8
  %91 = ptrtoint ptr %new_ps.0.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %new_ps.0.i, ptr %new_ps.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %new_ps.0.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %new_ps.0.i, ptr %prev.i.i, align 4
  %93 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sequences.i, align 4
  %call.i.i.i90 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %new_ps.0.i, ptr noundef %sequences.i, ptr noundef %94) #4
  br i1 %call.i.i.i90, label %if.end.i.i.i91, label %if.end102.i.for.inc113.i_crit_edge

if.end102.i.for.inc113.i_crit_edge:               ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc113.i

if.end.i.i.i91:                                   ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %new_ps.0.i, ptr %prev1.i.i.i, align 4
  %96 = ptrtoint ptr %new_ps.0.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %94, ptr %new_ps.0.i, align 4
  %97 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %sequences.i, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %sequences.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %new_ps.0.i, ptr %sequences.i, align 4
  br label %for.inc113.i

for.inc113.i:                                     ; preds = %if.end.i.i.i91, %if.end102.i.for.inc113.i_crit_edge, %for.end.i.for.inc113.i_crit_edge, %for.body.i64.for.inc113.i_crit_edge
  %99 = ptrtoint ptr %p.0200.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %p.0.i = load ptr, ptr %p.0200.i, align 8
  %cmp.not.i92 = icmp eq ptr %p.0.i, %pulses.i
  br i1 %cmp.not.i92, label %for.inc113.i.if.end29_crit_edge, label %for.inc113.i.for.body.i64_crit_edge

for.inc113.i.for.body.i64_crit_edge:              ; preds = %for.inc113.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i64

for.inc113.i.if.end29_crit_edge:                  ; preds = %for.inc113.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then28:                                        ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #6
  %100 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 5), align 4
  %inc98.i = add i32 %100, 1
  store i32 %inc98.i, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 5), align 4
  tail call void @pri_detector_reset(ptr noundef %de, i64 noundef %1)
  br label %cleanup

if.end29:                                         ; preds = %for.inc113.i.if.end29_crit_edge, %if.end.i65.if.end29_crit_edge, %pseq_handler_add_to_existing_seqs.exit.if.end29_crit_edge
  %101 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %sequences.i, align 4
  %cmp.i.not.i = icmp eq ptr %102, %sequences.i
  br i1 %cmp.i.not.i, label %if.end29.if.then33_crit_edge, label %for.body.lr.ph.i96

if.end29.if.then33_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

for.body.lr.ph.i96:                               ; preds = %if.end29
  %103 = ptrtoint ptr %rs2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rs2, align 4
  %ppb_thresh.i = getelementptr inbounds %struct.radar_detector_specs, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %ppb_thresh.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ppb_thresh.i, align 2
  %conv.i95 = zext i8 %106 to i32
  %num_pri.i = getelementptr inbounds %struct.radar_detector_specs, ptr %104, i32 0, i32 5
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.inc.i.for.body.i98_crit_edge, %for.body.lr.ph.i96
  %ps.028.i = phi ptr [ %102, %for.body.lr.ph.i96 ], [ %ps.0.i, %for.inc.i.for.body.i98_crit_edge ]
  %count.i97 = getelementptr inbounds %struct.pri_sequence, ptr %ps.028.i, i32 0, i32 3
  %107 = ptrtoint ptr %count.i97 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %count.i97, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %conv.i95)
  %cmp3.not.i = icmp ult i32 %108, %conv.i95
  br i1 %cmp3.not.i, label %for.body.i98.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i98.for.inc.i_crit_edge:                 ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i98
  %109 = ptrtoint ptr %num_pri.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_pri.i, align 2
  %conv7.i99 = zext i8 %110 to i32
  %mul.i100 = mul i32 %108, %conv7.i99
  %count_falses.i101 = getelementptr inbounds %struct.pri_sequence, ptr %ps.028.i, i32 0, i32 4
  %111 = ptrtoint ptr %count_falses.i101 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %count_falses.i101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i100, i32 %112)
  %cmp8.not.i = icmp ult i32 %mul.i100, %112
  br i1 %cmp8.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %pseq_handler_check_detection.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i98.for.inc.i_crit_edge
  %113 = ptrtoint ptr %ps.028.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %ps.0.i = load ptr, ptr %ps.028.i, align 8
  %cmp.not.i102 = icmp eq ptr %ps.0.i, %sequences.i
  br i1 %cmp.not.i102, label %for.inc.i.if.then33_crit_edge, label %for.inc.i.for.body.i98_crit_edge

for.inc.i.for.body.i98_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i98

for.inc.i.if.then33_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

pseq_handler_check_detection.exit:                ; preds = %land.lhs.true.i
  %cmp31 = icmp eq ptr %ps.028.i, null
  br i1 %cmp31, label %pseq_handler_check_detection.exit.if.then33_crit_edge, label %pseq_handler_check_detection.exit.cleanup_crit_edge

pseq_handler_check_detection.exit.cleanup_crit_edge: ; preds = %pseq_handler_check_detection.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pseq_handler_check_detection.exit.if.then33_crit_edge: ; preds = %pseq_handler_check_detection.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

if.then33:                                        ; preds = %pseq_handler_check_detection.exit.if.then33_crit_edge, %for.inc.i.if.then33_crit_edge, %if.end29.if.then33_crit_edge
  tail call fastcc void @pulse_queue_enqueue(ptr noundef %de, i64 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %pseq_handler_check_detection.exit.cleanup_crit_edge, %if.then28, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then28 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %if.then33 ], [ %ps.028.i, %pseq_handler_check_detection.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pri_detector_reset(ptr noundef %pde, i64 noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sequences = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 5
  %0 = ptrtoint ptr %sequences to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sequences, align 8
  %cmp.not61 = icmp eq ptr %1, %sequences
  br i1 %cmp.not61, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %pool_put_pseq_elem.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ps.062 = phi ptr [ %ps0.0, %pool_put_pseq_elem.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ps.062 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ps0.0 = load ptr, ptr %ps.062, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ps.062) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ps.062, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %ps.062 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps.062, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %ps.062 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %ps.062, ptr %ps.062, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %ps.062, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ps.062, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @pool_lock) #4
  %11 = load ptr, ptr @pseq_pool, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ps.062, ptr noundef nonnull @pseq_pool, ptr noundef %11) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del_init.exit.pool_put_pseq_elem.exit_crit_edge

list_del_init.exit.pool_put_pseq_elem.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %pool_put_pseq_elem.exit

if.end.i.i.i:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i49 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ps.062, ptr %prev1.i.i.i49, align 4
  %13 = ptrtoint ptr %ps.062 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %ps.062, align 4
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @pseq_pool, ptr %prev.i3.i, align 4
  store volatile ptr %ps.062, ptr @pseq_pool, align 4
  br label %pool_put_pseq_elem.exit

pool_put_pseq_elem.exit:                          ; preds = %if.end.i.i.i, %list_del_init.exit.pool_put_pseq_elem.exit_crit_edge
  %15 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 6), align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 6), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @pool_lock) #4
  %cmp.not = icmp eq ptr %ps0.0, %sequences
  br i1 %cmp.not, label %pool_put_pseq_elem.exit.for.end_crit_edge, label %pool_put_pseq_elem.exit.for.body_crit_edge

pool_put_pseq_elem.exit.for.body_crit_edge:       ; preds = %pool_put_pseq_elem.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

pool_put_pseq_elem.exit.for.end_crit_edge:        ; preds = %pool_put_pseq_elem.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %pool_put_pseq_elem.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %pulses = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 6
  %16 = ptrtoint ptr %pulses to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pulses, align 8
  %cmp25.not63 = icmp eq ptr %17, %pulses
  br i1 %cmp25.not63, label %for.end.for.end35_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.for.end35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end35

for.body27:                                       ; preds = %pool_put_pulse_elem.exit.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %p.064 = phi ptr [ %p0.0, %pool_put_pulse_elem.exit.for.body27_crit_edge ], [ %17, %for.end.for.body27_crit_edge ]
  %18 = ptrtoint ptr %p.064 to i32
  call void @__asan_load4_noabort(i32 %18)
  %p0.0 = load ptr, ptr %p.064, align 8
  %call.i.i50 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.064) #4
  br i1 %call.i.i50, label %if.end.i.i53, label %for.body27.list_del_init.exit55_crit_edge

for.body27.list_del_init.exit55_crit_edge:        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit55

if.end.i.i53:                                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i51 = getelementptr inbounds %struct.list_head, ptr %p.064, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i51, align 4
  %21 = ptrtoint ptr %p.064 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p.064, align 4
  %prev1.i.i.i52 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i52, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit55

list_del_init.exit55:                             ; preds = %if.end.i.i53, %for.body27.list_del_init.exit55_crit_edge
  %25 = ptrtoint ptr %p.064 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %p.064, ptr %p.064, align 4
  %prev.i3.i54 = getelementptr inbounds %struct.list_head, ptr %p.064, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i54 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %p.064, ptr %prev.i3.i54, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @pool_lock) #4
  %27 = load ptr, ptr @pulse_pool, align 4
  %call.i.i.i56 = tail call zeroext i1 @__list_add_valid(ptr noundef %p.064, ptr noundef nonnull @pulse_pool, ptr noundef %27) #4
  br i1 %call.i.i.i56, label %if.end.i.i.i59, label %list_del_init.exit55.pool_put_pulse_elem.exit_crit_edge

list_del_init.exit55.pool_put_pulse_elem.exit_crit_edge: ; preds = %list_del_init.exit55
  call void @__sanitizer_cov_trace_pc() #6
  br label %pool_put_pulse_elem.exit

if.end.i.i.i59:                                   ; preds = %list_del_init.exit55
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %p.064, ptr %prev1.i.i.i57, align 4
  %29 = ptrtoint ptr %p.064 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %p.064, align 4
  %30 = ptrtoint ptr %prev.i3.i54 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pulse_pool, ptr %prev.i3.i54, align 4
  store volatile ptr %p.064, ptr @pulse_pool, align 4
  br label %pool_put_pulse_elem.exit

pool_put_pulse_elem.exit:                         ; preds = %if.end.i.i.i59, %list_del_init.exit55.pool_put_pulse_elem.exit_crit_edge
  %31 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 3), align 4
  %dec.i60 = add i32 %31, -1
  store i32 %dec.i60, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 3), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @pool_lock) #4
  %cmp25.not = icmp eq ptr %p0.0, %pulses
  br i1 %cmp25.not, label %pool_put_pulse_elem.exit.for.end35_crit_edge, label %pool_put_pulse_elem.exit.for.body27_crit_edge

pool_put_pulse_elem.exit.for.body27_crit_edge:    ; preds = %pool_put_pulse_elem.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body27

pool_put_pulse_elem.exit.for.end35_crit_edge:     ; preds = %pool_put_pulse_elem.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end35

for.end35:                                        ; preds = %pool_put_pulse_elem.exit.for.end35_crit_edge, %for.end.for.end35_crit_edge
  %count = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 7
  %32 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %count, align 8
  %last_ts = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 4
  %33 = ptrtoint ptr %last_ts to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %ts, ptr %last_ts, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pulse_queue_enqueue(ptr noundef %pde, i64 noundef %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @pool_lock) #4
  %0 = load volatile ptr, ptr @pulse_pool, align 4
  %cmp.i.not.i = icmp eq ptr %0, @pulse_pool
  br i1 %cmp.i.not.i, label %pool_get_pulse_elem.exit.thread, label %if.then.i

pool_get_pulse_elem.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @pool_lock) #4
  br label %if.then

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.pool_get_pulse_elem.exit_crit_edge

if.then.i.pool_get_pulse_elem.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pool_get_pulse_elem.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %pool_get_pulse_elem.exit

pool_get_pulse_elem.exit:                         ; preds = %if.end.i.i.i, %if.then.i.pool_get_pulse_elem.exit_crit_edge
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %9 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 3), align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 3), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @pool_lock) #4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %pool_get_pulse_elem.exit.if.then_crit_edge, label %pool_get_pulse_elem.exit.if.end6_crit_edge

pool_get_pulse_elem.exit.if.end6_crit_edge:       ; preds = %pool_get_pulse_elem.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

pool_get_pulse_elem.exit.if.then_crit_edge:       ; preds = %pool_get_pulse_elem.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %pool_get_pulse_elem.exit.if.then_crit_edge, %pool_get_pulse_elem.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 16) #7
  %cmp2 = icmp eq ptr %call7.i, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %11 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 2), align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 2), align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %12 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 1), align 4
  %inc4 = add i32 %12, 1
  store i32 %inc4, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 1), align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 3), align 4
  %inc5 = add i32 %13, 1
  store i32 %inc5, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 3), align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %pool_get_pulse_elem.exit.if.end6_crit_edge
  %p.0 = phi ptr [ %call7.i, %if.end ], [ %0, %pool_get_pulse_elem.exit.if.end6_crit_edge ]
  %14 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %p.0, ptr %p.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %p.0, ptr %prev.i, align 4
  %ts7 = getelementptr inbounds %struct.pulse_elem, ptr %p.0, i32 0, i32 1
  %16 = ptrtoint ptr %ts7 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %ts, ptr %ts7, align 8
  %pulses = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 6
  %17 = ptrtoint ptr %pulses to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pulses, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %p.0, ptr noundef %pulses, ptr noundef %18) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_add.exit_crit_edge

if.end6.list_add.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %p.0, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %p.0, align 4
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pulses, ptr %prev.i, align 4
  %22 = ptrtoint ptr %pulses to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %p.0, ptr %pulses, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end6.list_add.exit_crit_edge
  %count = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 7
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count, align 8
  %inc9 = add i32 %24, 1
  store i32 %inc9, ptr %count, align 8
  %last_ts = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 4
  %25 = ptrtoint ptr %last_ts to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %ts, ptr %last_ts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc9)
  %cmp.i = icmp ult i32 %inc9, 2
  br i1 %cmp.i, label %list_add.exit.pulse_queue_check_window.exit_crit_edge, label %if.end.i

list_add.exit.pulse_queue_check_window.exit_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %pulse_queue_check_window.exit

if.end.i:                                         ; preds = %list_add.exit
  %window_size.i = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 9
  %26 = ptrtoint ptr %window_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %window_size.i, align 8
  %conv.i = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %ts)
  %cmp1.not.i = icmp ult i64 %conv.i, %ts
  br i1 %cmp1.not.i, label %if.end4.i, label %if.end.i.pulse_queue_check_window.exit_crit_edge

if.end.i.pulse_queue_check_window.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pulse_queue_check_window.exit

if.end4.i:                                        ; preds = %if.end.i
  %sub.i = sub i64 %ts, %conv.i
  %prev.i.i1 = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %pulses to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %pulses, align 4
  %cmp.i.not.i24.i = icmp eq ptr %29, %pulses
  br i1 %cmp.i.not.i24.i, label %if.end4.i.pulse_queue_check_window.exit_crit_edge, label %if.end4.i.pulse_queue_get_tail.exit.i_crit_edge

if.end4.i.pulse_queue_get_tail.exit.i_crit_edge:  ; preds = %if.end4.i
  br label %pulse_queue_get_tail.exit.i

if.end4.i.pulse_queue_check_window.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pulse_queue_check_window.exit

pulse_queue_get_tail.exit.i:                      ; preds = %if.end13.i.pulse_queue_get_tail.exit.i_crit_edge, %if.end4.i.pulse_queue_get_tail.exit.i_crit_edge
  %30 = ptrtoint ptr %prev.i.i1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i1, align 4
  %cmp8.not.i = icmp eq ptr %31, null
  br i1 %cmp8.not.i, label %pulse_queue_get_tail.exit.i.pulse_queue_check_window.exit_crit_edge, label %while.body.i

pulse_queue_get_tail.exit.i.pulse_queue_check_window.exit_crit_edge: ; preds = %pulse_queue_get_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pulse_queue_check_window.exit

while.body.i:                                     ; preds = %pulse_queue_get_tail.exit.i
  %ts.i = getelementptr inbounds %struct.pulse_elem, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %sub.i)
  %cmp10.not.i = icmp ult i64 %33, %sub.i
  br i1 %cmp10.not.i, label %if.end13.i, label %while.body.i.pulse_queue_check_window.exit_crit_edge

while.body.i.pulse_queue_check_window.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pulse_queue_check_window.exit

if.end13.i:                                       ; preds = %while.body.i
  tail call fastcc void @pulse_queue_dequeue(ptr noundef %pde) #4
  %34 = ptrtoint ptr %pulses to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %pulses, align 4
  %cmp.i.not.i.i = icmp eq ptr %35, %pulses
  br i1 %cmp.i.not.i.i, label %if.end13.i.pulse_queue_check_window.exit_crit_edge, label %if.end13.i.pulse_queue_get_tail.exit.i_crit_edge

if.end13.i.pulse_queue_get_tail.exit.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pulse_queue_get_tail.exit.i

if.end13.i.pulse_queue_check_window.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pulse_queue_check_window.exit

pulse_queue_check_window.exit:                    ; preds = %if.end13.i.pulse_queue_check_window.exit_crit_edge, %while.body.i.pulse_queue_check_window.exit_crit_edge, %pulse_queue_get_tail.exit.i.pulse_queue_check_window.exit_crit_edge, %if.end4.i.pulse_queue_check_window.exit_crit_edge, %if.end.i.pulse_queue_check_window.exit_crit_edge, %list_add.exit.pulse_queue_check_window.exit_crit_edge
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count, align 8
  %max_count = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 8
  %38 = ptrtoint ptr %max_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp11.not = icmp ult i32 %37, %39
  br i1 %cmp11.not, label %pulse_queue_check_window.exit.cleanup_crit_edge, label %if.then12

pulse_queue_check_window.exit.cleanup_crit_edge:  ; preds = %pulse_queue_check_window.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %pulse_queue_check_window.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @pulse_queue_dequeue(ptr noundef %pde)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %pulse_queue_check_window.exit.cleanup_crit_edge, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pulse_queue_dequeue(ptr noundef %pde) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pulses.i = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 6
  %0 = ptrtoint ptr %pulses.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pulses.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %pulses.i
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %pulse_queue_get_tail.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

pulse_queue_get_tail.exit:                        ; preds = %entry
  %prev.i = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %pulse_queue_get_tail.exit.if.end_crit_edge, label %if.then

pulse_queue_get_tail.exit.if.end_crit_edge:       ; preds = %pulse_queue_get_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %pulse_queue_get_tail.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %3) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  %count = getelementptr inbounds %struct.pri_detector, ptr %pde, i32 0, i32 7
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %count, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @pool_lock) #4
  %14 = load ptr, ptr @pulse_pool, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef nonnull @pulse_pool, ptr noundef %14) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del_init.exit.pool_put_pulse_elem.exit_crit_edge

list_del_init.exit.pool_put_pulse_elem.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %pool_put_pulse_elem.exit

if.end.i.i.i:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i1 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %prev1.i.i.i1, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %3, align 4
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pulse_pool, ptr %prev.i3.i, align 4
  store volatile ptr %3, ptr @pulse_pool, align 4
  br label %pool_put_pulse_elem.exit

pool_put_pulse_elem.exit:                         ; preds = %if.end.i.i.i, %list_del_init.exit.pool_put_pulse_elem.exit_crit_edge
  %18 = load i32, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 3), align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr getelementptr inbounds (%struct.ath_dfs_pool_stats, ptr @global_dfs_pool_stats, i32 0, i32 3), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @pool_lock) #4
  br label %if.end

if.end:                                           ; preds = %pool_put_pulse_elem.exit, %pulse_queue_get_tail.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @global_dfs_pool_stats, !1, !"global_dfs_pool_stats", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/dfs_pri_detector.c", i32 24, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/dfs_pri_detector.c", i32 84, i32 8}
!4 = !{ptr @pool_lock, !3, !"pool_lock", i1 false, i1 false}
!5 = !{ptr @singleton_pool_references, !6, !"singleton_pool_references", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/dfs_pri_detector.c", i32 81, i32 12}
!7 = !{ptr @pulse_pool, !8, !"pulse_pool", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/dfs_pri_detector.c", i32 82, i32 8}
!9 = !{ptr @pseq_pool, !10, !"pseq_pool", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/dfs_pri_detector.c", i32 83, i32 8}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i8 0, i8 2}
