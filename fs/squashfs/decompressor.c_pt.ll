; ModuleID = '/llk/IR_all_yes/fs/squashfs/decompressor.c_pt.bc'
source_filename = "../fs/squashfs/decompressor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.squashfs_decompressor = type { ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }

@decompressor = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @squashfs_zlib_comp_ops, ptr @squashfs_lz4_comp_ops, ptr @squashfs_lzo_comp_ops, ptr @squashfs_xz_comp_ops, ptr @squashfs_lzma_unsupported_comp_ops, ptr @squashfs_zstd_comp_ops, ptr @squashfs_unknown_comp_ops], [36 x i8] zeroinitializer }, align 32
@squashfs_zlib_comp_ops = external dso_local constant %struct.squashfs_decompressor, align 4
@squashfs_lz4_comp_ops = external dso_local constant %struct.squashfs_decompressor, align 4
@squashfs_lzo_comp_ops = external dso_local constant %struct.squashfs_decompressor, align 4
@squashfs_xz_comp_ops = external dso_local constant %struct.squashfs_decompressor, align 4
@squashfs_lzma_unsupported_comp_ops = internal constant { %struct.squashfs_decompressor, [36 x i8] } { %struct.squashfs_decompressor { ptr null, ptr null, ptr null, ptr null, i32 2, ptr @.str, i32 0 }, [36 x i8] zeroinitializer }, align 32
@squashfs_zstd_comp_ops = external dso_local constant %struct.squashfs_decompressor, align 4
@squashfs_unknown_comp_ops = internal constant { %struct.squashfs_decompressor, [36 x i8] } { %struct.squashfs_decompressor { ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lzma\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.2 = private unnamed_addr constant [13 x i8] c"decompressor\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 65, i32 44 }
@___asan_gen_.5 = private unnamed_addr constant [35 x i8] c"squashfs_lzma_unsupported_comp_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 27, i32 43 }
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"squashfs_unknown_comp_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 61, i32 43 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 28, i32 44 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [30 x i8] c"../fs/squashfs/decompressor.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 62, i32 29 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @decompressor, ptr @squashfs_lzma_unsupported_comp_ops, ptr @squashfs_unknown_comp_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decompressor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_lzma_unsupported_comp_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_unknown_comp_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_lookup_decompressor(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.cond_crit_edge ]
  %arrayidx = getelementptr [7 x ptr], ptr @decompressor, i32 0, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %id1 = getelementptr inbounds %struct.squashfs_decompressor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %id)
  %cmp = icmp eq i32 %3, %id
  %or.cond = or i1 %tobool.not, %cmp
  %inc = add i32 %i.0, 1
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_decompressor_setup(ptr noundef %sb, i16 noundef zeroext %flags) local_unnamed_addr #2 align 64 {
entry:
  %buffer.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i) #5
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %buffer.i, align 4
  %3 = and i16 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %entry.if.end16.i_crit_edge, label %if.then.i

entry.if.end16.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 4096) #8
  %5 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %buffer.i, align 4
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.then.i.get_comp_opts.exit_crit_edge, label %if.end.i

if.then.i.get_comp_opts.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_comp_opts.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 16) #8
  %cmp.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i.i, label %if.end.i.get_comp_opts.exit_crit_edge, label %if.end9.i

if.end.i.get_comp_opts.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_comp_opts.exit

if.end9.i:                                        ; preds = %if.end.i
  %length1.i.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %length1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %length1.i.i, align 8
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buffer.i, ptr %call7.i.i.i, align 8
  %pages3.i.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pages3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %pages3.i.i, align 4
  %next_page.i.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %next_page.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %next_page.i.i, align 4
  %call10.i = call i32 @squashfs_read_data(ptr noundef %sb, i64 noundef 96, i32 noundef 0, ptr noundef null, ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.end9.i.if.end16.i_crit_edge

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = inttoptr i32 %call10.i to ptr
  br label %get_comp_opts.exit

if.end16.i:                                       ; preds = %if.end9.i.if.end16.i_crit_edge, %entry.if.end16.i_crit_edge
  %actor.0.i = phi ptr [ %call7.i.i.i, %if.end9.i.if.end16.i_crit_edge ], [ null, %entry.if.end16.i_crit_edge ]
  %length.0.i = phi i32 [ %call10.i, %if.end9.i.if.end16.i_crit_edge ], [ 0, %entry.if.end16.i_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %comp_opts.i.i = getelementptr inbounds %struct.squashfs_decompressor, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %comp_opts.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %comp_opts.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end16.i.get_comp_opts.exit_crit_edge, label %cond.true.i.i

if.end16.i.get_comp_opts.exit_crit_edge:          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_comp_opts.exit

cond.true.i.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer.i, align 4
  %call.i.i = call ptr %15(ptr noundef %1, ptr noundef %17, i32 noundef %length.0.i) #5
  br label %get_comp_opts.exit

get_comp_opts.exit:                               ; preds = %cond.true.i.i, %if.end16.i.get_comp_opts.exit_crit_edge, %if.then13.i, %if.end.i.get_comp_opts.exit_crit_edge, %if.then.i.get_comp_opts.exit_crit_edge
  %comp_opts.0.i = phi ptr [ %11, %if.then13.i ], [ inttoptr (i32 -12 to ptr), %if.then.i.get_comp_opts.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.get_comp_opts.exit_crit_edge ], [ %call.i.i, %cond.true.i.i ], [ null, %if.end16.i.get_comp_opts.exit_crit_edge ]
  %actor.1.i = phi ptr [ %call7.i.i.i, %if.then13.i ], [ null, %if.then.i.get_comp_opts.exit_crit_edge ], [ null, %if.end.i.get_comp_opts.exit_crit_edge ], [ %actor.0.i, %cond.true.i.i ], [ %actor.0.i, %if.end16.i.get_comp_opts.exit_crit_edge ]
  call void @kfree(ptr noundef %actor.1.i) #5
  %18 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer.i, align 4
  call void @kfree(ptr noundef %19) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i) #5
  %cmp.i13 = icmp ugt ptr %comp_opts.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i13, label %get_comp_opts.exit.cleanup_crit_edge, label %if.end

get_comp_opts.exit.cleanup_crit_edge:             ; preds = %get_comp_opts.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %get_comp_opts.exit
  %call2 = call ptr @squashfs_decompressor_create(ptr noundef %1, ptr noundef %comp_opts.0.i) #5
  %cmp.i14 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i14, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef %comp_opts.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %get_comp_opts.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %comp_opts.0.i, %get_comp_opts.exit.cleanup_crit_edge ], [ %call2, %if.then4 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_decompressor_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @decompressor, !1, !"decompressor", i1 false, i1 false}
!1 = !{!"../fs/squashfs/decompressor.c", i32 65, i32 44}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/squashfs/decompressor.c", i32 28, i32 44}
!4 = !{ptr @squashfs_lzma_unsupported_comp_ops, !5, !"squashfs_lzma_unsupported_comp_ops", i1 false, i1 false}
!5 = !{!"../fs/squashfs/decompressor.c", i32 27, i32 43}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/squashfs/decompressor.c", i32 62, i32 29}
!8 = !{ptr @squashfs_unknown_comp_ops, !9, !"squashfs_unknown_comp_ops", i1 false, i1 false}
!9 = !{!"../fs/squashfs/decompressor.c", i32 61, i32 43}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
