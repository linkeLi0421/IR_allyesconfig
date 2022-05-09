; ModuleID = '/llk/IR_all_yes/fs/ntfs3/run.c_pt.bc'
source_filename = "../fs/ntfs3/run.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.runs_tree = type { ptr, i32, i32 }
%struct.ntfs_run = type { i32, i32, i32 }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.77, %struct.anon.81, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, ptr, %struct.ratelimit_state }
%struct.anon.77 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.81 = type { %struct.wnd_bitmap, i32 }
%struct.anon.82 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.83 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.84 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.85 = type { %struct.ntfs_index, ptr }
%struct.anon.86 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ntfs3/run.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [200 x i8], [56 x i8] } { [200 x i8] c"\013This driver is compiled without CONFIG_NTFS3_64BIT_CLUSTER (like windows driver).\0AVolume contains 64 bits run: vcn %llx, lcn %llx, len %llx.\0AActivate CONFIG_NTFS3_64BIT_CLUSTER to process this case\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.2 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.3 = internal global [10 x i64] [i64 8, i64 4, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.4 = internal global [10 x i64] [i64 8, i64 4, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [10 x i64] [i64 8, i64 4, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 387, i32 4 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [18 x i8] c"../fs/ntfs3/run.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 947, i32 4 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @run_lookup(ptr nocapture noundef readonly %run, i32 noundef %vcn, ptr nocapture noundef writeonly %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %1, -1
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %run, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %vcn)
  %cmp = icmp ugt i32 %5, %vcn
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.ntfs_run, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %vcn)
  %cmp6 = icmp ugt i32 %add, %vcn
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %add.ptr = getelementptr %struct.ntfs_run, ptr %3, i32 %sub
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %len10 = getelementptr %struct.ntfs_run, ptr %3, i32 %sub, i32 1
  %10 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len10, align 4
  %add11 = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %vcn)
  %cmp12.not = icmp ugt i32 %add11, %vcn
  br i1 %cmp12.not, label %if.end15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vcn)
  %cmp17.not = icmp ugt i32 %9, %vcn
  br i1 %cmp17.not, label %if.end15.do.body_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end15.do.body_crit_edge
  %min_idx.0 = phi i32 [ %min_idx.1, %do.cond.do.body_crit_edge ], [ 0, %if.end15.do.body_crit_edge ]
  %max_idx.0 = phi i32 [ %max_idx.1, %do.cond.do.body_crit_edge ], [ %sub, %if.end15.do.body_crit_edge ]
  %sub20 = sub i32 %max_idx.0, %min_idx.0
  %shr = lshr i32 %sub20, 1
  %add21 = add i32 %shr, %min_idx.0
  %add.ptr23 = getelementptr %struct.ntfs_run, ptr %3, i32 %add21
  %12 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %vcn)
  %cmp25 = icmp ugt i32 %13, %vcn
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %do.body
  %sub27 = add i32 %add21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21)
  %tobool28.not = icmp eq i32 %add21, 0
  br i1 %tobool28.not, label %if.then26.do.end_crit_edge, label %if.then26.do.cond_crit_edge

if.then26.do.cond_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.then26.do.end_crit_edge:                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.else:                                          ; preds = %do.body
  %len32 = getelementptr %struct.ntfs_run, ptr %3, i32 %add21, i32 1
  %14 = ptrtoint ptr %len32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len32, align 4
  %add33 = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %vcn)
  %cmp34.not = icmp ugt i32 %add33, %vcn
  br i1 %cmp34.not, label %if.else.cleanup_crit_edge, label %if.then35

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add36 = add i32 %add21, 1
  br label %do.cond

do.cond:                                          ; preds = %if.then35, %if.then26.do.cond_crit_edge
  %min_idx.1 = phi i32 [ %min_idx.0, %if.then26.do.cond_crit_edge ], [ %add36, %if.then35 ]
  %max_idx.1 = phi i32 [ %sub27, %if.then26.do.cond_crit_edge ], [ %max_idx.0, %if.then35 ]
  %cmp40.not = icmp ugt i32 %min_idx.1, %max_idx.1
  br i1 %cmp40.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.then26.do.end_crit_edge
  %max_idx.2 = phi i32 [ %max_idx.1, %do.cond.do.end_crit_edge ], [ -1, %if.then26.do.end_crit_edge ]
  %add41 = add i32 %max_idx.2, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %add41.sink = phi i32 [ %add41, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %1, %if.end8.cleanup_crit_edge ], [ %sub, %if.end15.cleanup_crit_edge ], [ %add21, %if.else.cleanup_crit_edge ]
  %retval.0 = phi i1 [ false, %do.end ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.end4.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ true, %if.end15.cleanup_crit_edge ], [ true, %if.else.cleanup_crit_edge ]
  %16 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add41.sink, ptr %index, align 4
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @run_is_mapped_full(ptr nocapture noundef readonly %run, i32 noundef %svcn, i32 noundef %evcn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %sub.i = add i32 %1, -1
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %run, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %svcn)
  %cmp.i = icmp ugt i32 %5, %svcn
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.ntfs_run, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %svcn)
  %cmp6.i = icmp ugt i32 %add.i, %svcn
  br i1 %cmp6.i, label %if.end4.i.if.end_crit_edge, label %if.end8.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end8.i:                                        ; preds = %if.end4.i
  %add.ptr.i = getelementptr %struct.ntfs_run, ptr %3, i32 %sub.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %len10.i = getelementptr %struct.ntfs_run, ptr %3, i32 %sub.i, i32 1
  %10 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len10.i, align 4
  %add11.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %svcn)
  %cmp12.not.i = icmp ugt i32 %add11.i, %svcn
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %svcn)
  %cmp17.not.i = icmp ugt i32 %9, %svcn
  br i1 %cmp17.not.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.if.end_crit_edge

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end15.i.do.body.i_crit_edge
  %min_idx.0.i = phi i32 [ %min_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %if.end15.i.do.body.i_crit_edge ]
  %max_idx.0.i = phi i32 [ %max_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ %sub.i, %if.end15.i.do.body.i_crit_edge ]
  %sub20.i = sub i32 %max_idx.0.i, %min_idx.0.i
  %shr.i = lshr i32 %sub20.i, 1
  %add21.i = add i32 %shr.i, %min_idx.0.i
  %add.ptr23.i = getelementptr %struct.ntfs_run, ptr %3, i32 %add21.i
  %12 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %svcn)
  %cmp25.i = icmp ugt i32 %13, %svcn
  br i1 %cmp25.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %do.body.i
  %sub27.i = add i32 %add21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21.i)
  %tobool28.not.i = icmp eq i32 %add21.i, 0
  br i1 %tobool28.not.i, label %if.then26.i.cleanup_crit_edge, label %if.then26.i.do.cond.i_crit_edge

if.then26.i.do.cond.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.then26.i.cleanup_crit_edge:                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i:                                        ; preds = %do.body.i
  %len32.i = getelementptr %struct.ntfs_run, ptr %3, i32 %add21.i, i32 1
  %14 = ptrtoint ptr %len32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len32.i, align 4
  %add33.i = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %svcn)
  %cmp34.not.i = icmp ugt i32 %add33.i, %svcn
  br i1 %cmp34.not.i, label %if.else.i.if.end_crit_edge, label %if.then35.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add36.i = add i32 %add21.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then35.i, %if.then26.i.do.cond.i_crit_edge
  %min_idx.1.i = phi i32 [ %min_idx.0.i, %if.then26.i.do.cond.i_crit_edge ], [ %add36.i, %if.then35.i ]
  %max_idx.1.i = phi i32 [ %sub27.i, %if.then26.i.do.cond.i_crit_edge ], [ %max_idx.0.i, %if.then35.i ]
  %cmp40.not.i = icmp ugt i32 %min_idx.1.i, %max_idx.1.i
  br i1 %cmp40.not.i, label %do.cond.i.cleanup_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %if.end15.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge
  %add41.sink.i = phi i32 [ 0, %if.end4.i.if.end_crit_edge ], [ %sub.i, %if.end15.i.if.end_crit_edge ], [ %add21.i, %if.else.i.if.end_crit_edge ]
  %16 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %run, align 4
  %add.ptr = getelementptr %struct.ntfs_run, ptr %17, i32 %1
  %add.ptr2 = getelementptr %struct.ntfs_run, ptr %17, i32 %add41.sink.i
  br label %for.cond

for.cond:                                         ; preds = %if.end7.for.cond_crit_edge, %if.end
  %r.0 = phi ptr [ %add.ptr2, %if.end ], [ %incdec.ptr, %if.end7.for.cond_crit_edge ]
  %18 = ptrtoint ptr %r.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %r.0, align 4
  %len = getelementptr inbounds %struct.ntfs_run, ptr %r.0, i32 0, i32 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %add = add i32 %21, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %evcn)
  %cmp = icmp ugt i32 %add, %evcn
  br i1 %cmp, label %for.cond.cleanup_crit_edge, label %if.end4

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr %struct.ntfs_run, ptr %r.0, i32 1
  %cmp5.not = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %22 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr, align 4
  %cmp9.not = icmp eq i32 %23, %add
  br i1 %cmp9.not, label %if.end7.for.cond_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.for.cond_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.cond.i.cleanup_crit_edge, %if.then26.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end8.i.cleanup_crit_edge ], [ %cmp, %for.cond.cleanup_crit_edge ], [ %cmp, %if.end4.cleanup_crit_edge ], [ %cmp, %if.end7.cleanup_crit_edge ], [ false, %do.cond.i.cleanup_crit_edge ], [ false, %if.then26.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @run_lookup_entry(ptr nocapture noundef readonly %run, i32 noundef %vcn, ptr nocapture noundef writeonly %lcn, ptr noundef writeonly %len, ptr noundef writeonly %index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %run, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %sub.i = add i32 %3, -1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %vcn)
  %cmp.i = icmp ugt i32 %5, %vcn
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.ntfs_run, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %vcn)
  %cmp6.i = icmp ugt i32 %add.i, %vcn
  br i1 %cmp6.i, label %if.end4.i.if.end2_crit_edge, label %if.end8.i

if.end4.i.if.end2_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.end8.i:                                        ; preds = %if.end4.i
  %add.ptr.i = getelementptr %struct.ntfs_run, ptr %1, i32 %sub.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %len10.i = getelementptr %struct.ntfs_run, ptr %1, i32 %sub.i, i32 1
  %10 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len10.i, align 4
  %add11.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %vcn)
  %cmp12.not.i = icmp ugt i32 %add11.i, %vcn
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vcn)
  %cmp17.not.i = icmp ugt i32 %9, %vcn
  br i1 %cmp17.not.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.if.end2_crit_edge

if.end15.i.if.end2_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end15.i.do.body.i_crit_edge
  %min_idx.0.i = phi i32 [ %min_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %if.end15.i.do.body.i_crit_edge ]
  %max_idx.0.i = phi i32 [ %max_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ %sub.i, %if.end15.i.do.body.i_crit_edge ]
  %sub20.i = sub i32 %max_idx.0.i, %min_idx.0.i
  %shr.i = lshr i32 %sub20.i, 1
  %add21.i = add i32 %shr.i, %min_idx.0.i
  %add.ptr23.i = getelementptr %struct.ntfs_run, ptr %1, i32 %add21.i
  %12 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %vcn)
  %cmp25.i = icmp ugt i32 %13, %vcn
  br i1 %cmp25.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %do.body.i
  %sub27.i = add i32 %add21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21.i)
  %tobool28.not.i = icmp eq i32 %add21.i, 0
  br i1 %tobool28.not.i, label %if.then26.i.cleanup_crit_edge, label %if.then26.i.do.cond.i_crit_edge

if.then26.i.do.cond.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.then26.i.cleanup_crit_edge:                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i:                                        ; preds = %do.body.i
  %len32.i = getelementptr %struct.ntfs_run, ptr %1, i32 %add21.i, i32 1
  %14 = ptrtoint ptr %len32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len32.i, align 4
  %add33.i = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %vcn)
  %cmp34.not.i = icmp ugt i32 %add33.i, %vcn
  br i1 %cmp34.not.i, label %if.else.i.if.end2_crit_edge, label %if.then35.i

if.else.i.if.end2_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add36.i = add i32 %add21.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then35.i, %if.then26.i.do.cond.i_crit_edge
  %min_idx.1.i = phi i32 [ %min_idx.0.i, %if.then26.i.do.cond.i_crit_edge ], [ %add36.i, %if.then35.i ]
  %max_idx.1.i = phi i32 [ %sub27.i, %if.then26.i.do.cond.i_crit_edge ], [ %max_idx.0.i, %if.then35.i ]
  %cmp40.not.i = icmp ugt i32 %min_idx.1.i, %max_idx.1.i
  br i1 %cmp40.not.i, label %do.cond.i.cleanup_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.else.i.if.end2_crit_edge, %if.end15.i.if.end2_crit_edge, %if.end4.i.if.end2_crit_edge
  %add41.sink.i = phi i32 [ 0, %if.end4.i.if.end2_crit_edge ], [ %sub.i, %if.end15.i.if.end2_crit_edge ], [ %add21.i, %if.else.i.if.end2_crit_edge ]
  %add.ptr = getelementptr %struct.ntfs_run, ptr %1, i32 %add41.sink.i
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %len5 = getelementptr %struct.ntfs_run, ptr %1, i32 %add41.sink.i, i32 1
  %18 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len5, align 4
  %add = add i32 %19, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %vcn)
  %cmp.not = icmp ugt i32 %add, %vcn
  br i1 %cmp.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %sub = sub i32 %vcn, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub)
  %cmp10.not = icmp ugt i32 %19, %sub
  br i1 %cmp10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %lcn13 = getelementptr %struct.ntfs_run, ptr %1, i32 %add41.sink.i, i32 2
  %20 = ptrtoint ptr %lcn13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lcn13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp14 = icmp eq i32 %21, -1
  %add16 = add i32 %21, %sub
  %spec.select = select i1 %cmp14, i32 -1, i32 %add16
  %22 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %lcn, align 4
  %tobool17.not = icmp eq ptr %len, null
  br i1 %tobool17.not, label %if.end12.if.end21_crit_edge, label %if.then18

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len5, align 4
  %sub20 = sub i32 %24, %sub
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub20, ptr %len, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end12.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %index, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.then23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add41.sink.i, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end21.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %do.cond.i.cleanup_crit_edge, %if.then26.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end2.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ], [ true, %if.then23 ], [ true, %if.end21.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end8.i.cleanup_crit_edge ], [ false, %do.cond.i.cleanup_crit_edge ], [ false, %if.then26.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @run_truncate_head(ptr nocapture noundef %run, i32 noundef %vcn) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end12_crit_edge, label %if.end.i

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.i:                                         ; preds = %entry
  %sub.i = add i32 %1, -1
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %run, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %vcn)
  %cmp.i = icmp ugt i32 %5, %vcn
  br i1 %cmp.i, label %if.end.i.if.end12_crit_edge, label %if.end4.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end4.i:                                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.ntfs_run, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %vcn)
  %cmp6.i = icmp ugt i32 %add.i, %vcn
  br i1 %cmp6.i, label %if.end4.i.if.then_crit_edge, label %if.end8.i

if.end4.i.if.then_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end8.i:                                        ; preds = %if.end4.i
  %add.ptr.i = getelementptr %struct.ntfs_run, ptr %3, i32 %sub.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %len10.i = getelementptr %struct.ntfs_run, ptr %3, i32 %sub.i, i32 1
  %10 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len10.i, align 4
  %add11.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %vcn)
  %cmp12.not.i = icmp ugt i32 %add11.i, %vcn
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end8.i.if.end12_crit_edge

if.end8.i.if.end12_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vcn)
  %cmp17.not.i = icmp ugt i32 %9, %vcn
  br i1 %cmp17.not.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.if.then_crit_edge

if.end15.i.if.then_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end15.i.do.body.i_crit_edge
  %min_idx.0.i = phi i32 [ %min_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %if.end15.i.do.body.i_crit_edge ]
  %max_idx.0.i = phi i32 [ %max_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ %sub.i, %if.end15.i.do.body.i_crit_edge ]
  %sub20.i = sub i32 %max_idx.0.i, %min_idx.0.i
  %shr.i = lshr i32 %sub20.i, 1
  %add21.i = add i32 %shr.i, %min_idx.0.i
  %add.ptr23.i = getelementptr %struct.ntfs_run, ptr %3, i32 %add21.i
  %12 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %vcn)
  %cmp25.i = icmp ugt i32 %13, %vcn
  br i1 %cmp25.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %do.body.i
  %sub27.i = add i32 %add21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21.i)
  %tobool28.not.i = icmp eq i32 %add21.i, 0
  br i1 %tobool28.not.i, label %if.then26.i.do.end.i_crit_edge, label %if.then26.i.do.cond.i_crit_edge

if.then26.i.do.cond.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.then26.i.do.end.i_crit_edge:                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i
  %len32.i = getelementptr %struct.ntfs_run, ptr %3, i32 %add21.i, i32 1
  %14 = ptrtoint ptr %len32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len32.i, align 4
  %add33.i = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %vcn)
  %cmp34.not.i = icmp ugt i32 %add33.i, %vcn
  br i1 %cmp34.not.i, label %if.else.i.if.then_crit_edge, label %if.then35.i

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add36.i = add i32 %add21.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then35.i, %if.then26.i.do.cond.i_crit_edge
  %min_idx.1.i = phi i32 [ %min_idx.0.i, %if.then26.i.do.cond.i_crit_edge ], [ %add36.i, %if.then35.i ]
  %max_idx.1.i = phi i32 [ %sub27.i, %if.then26.i.do.cond.i_crit_edge ], [ %max_idx.0.i, %if.then35.i ]
  %cmp40.not.i = icmp ugt i32 %min_idx.1.i, %max_idx.1.i
  br i1 %cmp40.not.i, label %do.cond.i.do.end.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %do.cond.i.do.end.i_crit_edge, %if.then26.i.do.end.i_crit_edge
  %max_idx.2.i = phi i32 [ %max_idx.1.i, %do.cond.i.do.end.i_crit_edge ], [ -1, %if.then26.i.do.end.i_crit_edge ]
  %add41.i = add i32 %max_idx.2.i, 1
  br label %if.end12

if.then:                                          ; preds = %if.else.i.if.then_crit_edge, %if.end15.i.if.then_crit_edge, %if.end4.i.if.then_crit_edge
  %add41.sink.i = phi i32 [ 0, %if.end4.i.if.then_crit_edge ], [ %sub.i, %if.end15.i.if.then_crit_edge ], [ %add21.i, %if.else.i.if.then_crit_edge ]
  %16 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %run, align 4
  %add.ptr = getelementptr %struct.ntfs_run, ptr %17, i32 %add41.sink.i
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %vcn)
  %cmp = icmp ult i32 %19, %vcn
  br i1 %cmp, label %if.then2, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then2:                                         ; preds = %if.then
  %sub = sub i32 %vcn, %19
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %vcn, ptr %add.ptr, align 4
  %len = getelementptr %struct.ntfs_run, ptr %17, i32 %add41.sink.i, i32 1
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %sub5 = sub i32 %22, %sub
  store i32 %sub5, ptr %len, align 4
  %lcn = getelementptr %struct.ntfs_run, ptr %17, i32 %add41.sink.i, i32 2
  %23 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp6.not = icmp eq i32 %24, -1
  br i1 %cmp6.not, label %if.then2.if.end9_crit_edge, label %if.then7

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %24, %sub
  %25 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %lcn, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then2.if.end9_crit_edge, %if.then.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add41.sink.i)
  %tobool.not = icmp eq i32 %add41.sink.i, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %do.end.i, %if.end8.i.if.end12_crit_edge, %if.end.i.if.end12_crit_edge, %entry.if.end12_crit_edge
  %add41.sink.i51 = phi i32 [ %add41.sink.i, %if.end9.if.end12_crit_edge ], [ %1, %if.end8.i.if.end12_crit_edge ], [ 0, %if.end.i.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ %add41.i, %do.end.i ]
  %26 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %run, align 4
  %add.ptr14 = getelementptr %struct.ntfs_run, ptr %27, i32 %add41.sink.i51
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count.i, align 4
  %sub15 = sub i32 %29, %add41.sink.i51
  %mul = mul i32 %sub15, 12
  %30 = call ptr @memmove(ptr %27, ptr %add.ptr14, i32 %mul)
  %31 = load i32, ptr %count.i, align 4
  %sub17 = sub i32 %31, %add41.sink.i51
  store i32 %sub17, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add41.sink.i51)
  %tobool19.not = icmp eq i32 %31, %add41.sink.i51
  br i1 %tobool19.not, label %if.then20, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %run, align 4
  tail call void @kvfree(ptr noundef %33) #9
  %34 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %run, align 4
  %allocated = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 2
  %35 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %allocated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @run_truncate(ptr nocapture noundef %run, i32 noundef %vcn) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end4.thread_crit_edge, label %if.end.i

entry.if.end4.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.thread

if.end.i:                                         ; preds = %entry
  %sub.i = add i32 %1, -1
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %run, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %vcn)
  %cmp.i = icmp ugt i32 %5, %vcn
  br i1 %cmp.i, label %if.end.i.if.end4.thread_crit_edge, label %if.end4.i

if.end.i.if.end4.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.thread

if.end4.i:                                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.ntfs_run, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %vcn)
  %cmp6.i = icmp ugt i32 %add.i, %vcn
  br i1 %cmp6.i, label %if.end4.i.if.then_crit_edge, label %if.end8.i

if.end4.i.if.then_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end8.i:                                        ; preds = %if.end4.i
  %add.ptr.i = getelementptr %struct.ntfs_run, ptr %3, i32 %sub.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %len10.i = getelementptr %struct.ntfs_run, ptr %3, i32 %sub.i, i32 1
  %10 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len10.i, align 4
  %add11.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %vcn)
  %cmp12.not.i = icmp ugt i32 %add11.i, %vcn
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end8.i.if.end8_crit_edge

if.end8.i.if.end8_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vcn)
  %cmp17.not.i = icmp ugt i32 %9, %vcn
  br i1 %cmp17.not.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.if.then_crit_edge

if.end15.i.if.then_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end15.i.do.body.i_crit_edge
  %min_idx.0.i = phi i32 [ %min_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %if.end15.i.do.body.i_crit_edge ]
  %max_idx.0.i = phi i32 [ %max_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ %sub.i, %if.end15.i.do.body.i_crit_edge ]
  %sub20.i = sub i32 %max_idx.0.i, %min_idx.0.i
  %shr.i = lshr i32 %sub20.i, 1
  %add21.i = add i32 %shr.i, %min_idx.0.i
  %add.ptr23.i = getelementptr %struct.ntfs_run, ptr %3, i32 %add21.i
  %12 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %vcn)
  %cmp25.i = icmp ugt i32 %13, %vcn
  br i1 %cmp25.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %do.body.i
  %sub27.i = add i32 %add21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21.i)
  %tobool28.not.i = icmp eq i32 %add21.i, 0
  br i1 %tobool28.not.i, label %if.then26.i.do.end.i_crit_edge, label %if.then26.i.do.cond.i_crit_edge

if.then26.i.do.cond.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.then26.i.do.end.i_crit_edge:                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i
  %len32.i = getelementptr %struct.ntfs_run, ptr %3, i32 %add21.i, i32 1
  %14 = ptrtoint ptr %len32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len32.i, align 4
  %add33.i = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %vcn)
  %cmp34.not.i = icmp ugt i32 %add33.i, %vcn
  br i1 %cmp34.not.i, label %if.else.i.if.then_crit_edge, label %if.then35.i

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add36.i = add i32 %add21.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then35.i, %if.then26.i.do.cond.i_crit_edge
  %min_idx.1.i = phi i32 [ %min_idx.0.i, %if.then26.i.do.cond.i_crit_edge ], [ %add36.i, %if.then35.i ]
  %max_idx.1.i = phi i32 [ %sub27.i, %if.then26.i.do.cond.i_crit_edge ], [ %max_idx.0.i, %if.then35.i ]
  %cmp40.not.i = icmp ugt i32 %min_idx.1.i, %max_idx.1.i
  br i1 %cmp40.not.i, label %do.cond.i.do.end.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %do.cond.i.do.end.i_crit_edge, %if.then26.i.do.end.i_crit_edge
  %max_idx.2.i = phi i32 [ %max_idx.1.i, %do.cond.i.do.end.i_crit_edge ], [ -1, %if.then26.i.do.end.i_crit_edge ]
  %add41.i = add i32 %max_idx.2.i, 1
  br label %if.end4

if.then:                                          ; preds = %if.else.i.if.then_crit_edge, %if.end15.i.if.then_crit_edge, %if.end4.i.if.then_crit_edge
  %add41.sink.i = phi i32 [ 0, %if.end4.i.if.then_crit_edge ], [ %sub.i, %if.end15.i.if.then_crit_edge ], [ %add21.i, %if.else.i.if.then_crit_edge ]
  %16 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %run, align 4
  %add.ptr = getelementptr %struct.ntfs_run, ptr %17, i32 %add41.sink.i
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %sub = sub i32 %vcn, %19
  %len = getelementptr %struct.ntfs_run, ptr %17, i32 %add41.sink.i, i32 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %vcn)
  %cmp.not = icmp ne i32 %19, %vcn
  %add = zext i1 %cmp.not to i32
  %spec.select = add i32 %add41.sink.i, %add
  br label %if.end4

if.end4.thread:                                   ; preds = %if.end.i.if.end4.thread_crit_edge, %entry.if.end4.thread_crit_edge
  %21 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %count.i, align 4
  br label %if.then5

if.end4:                                          ; preds = %if.then, %do.end.i
  %index.0 = phi i32 [ %add41.i, %do.end.i ], [ %spec.select, %if.then ]
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %index.0, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.0)
  %tobool.not = icmp eq i32 %index.0, 0
  br i1 %tobool.not, label %if.end4.if.then5_crit_edge, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end4.if.then5_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %if.end4.if.then5_crit_edge, %if.end4.thread
  %23 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %run, align 4
  tail call void @kvfree(ptr noundef %24) #9
  %25 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %run, align 4
  %allocated = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 2
  %26 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %allocated, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end4.if.end8_crit_edge, %if.end8.i.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @run_truncate_around(ptr nocapture noundef %run, i32 noundef %vcn) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @run_truncate_head(ptr noundef %run, i32 noundef %vcn)
  %count = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2729, i32 %1)
  %cmp = icmp ugt i32 %1, 2729
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %run, align 4
  %shr = lshr i32 %1, 1
  %add.ptr = getelementptr %struct.ntfs_run, ptr %3, i32 %shr
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  tail call void @run_truncate(ptr noundef %run, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @run_add_entry(ptr nocapture noundef %run, i32 noundef %vcn, i32 noundef %lcn, i32 noundef %len, i1 noundef zeroext %is_mft) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.requires_new_range_crit_edge, label %if.end.i

entry.requires_new_range_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %requires_new_range

if.end.i:                                         ; preds = %entry
  %sub.i = add i32 %1, -1
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %run, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %vcn)
  %cmp.i = icmp ugt i32 %5, %vcn
  br i1 %cmp.i, label %if.end.i.requires_new_range_crit_edge, label %if.end4.i

if.end.i.requires_new_range_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %requires_new_range

if.end4.i:                                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.ntfs_run, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %vcn)
  %cmp6.i = icmp ugt i32 %add.i, %vcn
  br i1 %cmp6.i, label %if.end4.i.if.else106_crit_edge, label %if.end8.i

if.end4.i.if.else106_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else106

if.end8.i:                                        ; preds = %if.end4.i
  %add.ptr.i = getelementptr %struct.ntfs_run, ptr %3, i32 %sub.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %len10.i = getelementptr %struct.ntfs_run, ptr %3, i32 %sub.i, i32 1
  %10 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len10.i, align 4
  %add11.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %vcn)
  %cmp12.not.i = icmp ugt i32 %add11.i, %vcn
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end8.i.if.then_crit_edge

if.end8.i.if.then_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vcn)
  %cmp17.not.i = icmp ugt i32 %9, %vcn
  br i1 %cmp17.not.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.if.else106_crit_edge

if.end15.i.if.else106_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else106

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end15.i.do.body.i_crit_edge
  %min_idx.0.i = phi i32 [ %min_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %if.end15.i.do.body.i_crit_edge ]
  %max_idx.0.i = phi i32 [ %max_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ %sub.i, %if.end15.i.do.body.i_crit_edge ]
  %sub20.i = sub i32 %max_idx.0.i, %min_idx.0.i
  %shr.i = lshr i32 %sub20.i, 1
  %add21.i = add i32 %shr.i, %min_idx.0.i
  %add.ptr23.i = getelementptr %struct.ntfs_run, ptr %3, i32 %add21.i
  %12 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %vcn)
  %cmp25.i = icmp ugt i32 %13, %vcn
  br i1 %cmp25.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %do.body.i
  %sub27.i = add i32 %add21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21.i)
  %tobool28.not.i = icmp eq i32 %add21.i, 0
  br i1 %tobool28.not.i, label %if.then26.i.requires_new_range_crit_edge, label %if.then26.i.do.cond.i_crit_edge

if.then26.i.do.cond.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.then26.i.requires_new_range_crit_edge:         ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %requires_new_range

if.else.i:                                        ; preds = %do.body.i
  %len32.i = getelementptr %struct.ntfs_run, ptr %3, i32 %add21.i, i32 1
  %14 = ptrtoint ptr %len32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len32.i, align 4
  %add33.i = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %vcn)
  %cmp34.not.i = icmp ugt i32 %add33.i, %vcn
  br i1 %cmp34.not.i, label %if.else.i.if.else106_crit_edge, label %if.then35.i

if.else.i.if.else106_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else106

if.then35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add36.i = add i32 %add21.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then35.i, %if.then26.i.do.cond.i_crit_edge
  %min_idx.1.i = phi i32 [ %min_idx.0.i, %if.then26.i.do.cond.i_crit_edge ], [ %add36.i, %if.then35.i ]
  %max_idx.1.i = phi i32 [ %sub27.i, %if.then26.i.do.cond.i_crit_edge ], [ %max_idx.0.i, %if.then35.i ]
  %cmp40.not.i = icmp ugt i32 %min_idx.1.i, %max_idx.1.i
  br i1 %cmp40.not.i, label %land.lhs.true, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

land.lhs.true:                                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %add41.i = add nuw i32 %max_idx.1.i, 1
  br label %if.then

if.then:                                          ; preds = %land.lhs.true, %if.end8.i.if.then_crit_edge
  %add41.sink.i.ph318 = phi i32 [ %add41.i, %land.lhs.true ], [ %1, %if.end8.i.if.then_crit_edge ]
  %16 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %run, align 4
  %add.ptr = getelementptr %struct.ntfs_run, ptr %17, i32 %add41.sink.i.ph318
  %add.ptr2 = getelementptr %struct.ntfs_run, ptr %add.ptr, i32 -1
  %18 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr2, align 4
  %len4 = getelementptr inbounds %struct.ntfs_run, ptr %add.ptr2, i32 0, i32 1
  %20 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len4, align 4
  %add = add i32 %21, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %vcn)
  %cmp5 = icmp eq i32 %add, %vcn
  br i1 %cmp5, label %land.lhs.true6, label %if.then.requires_new_range_crit_edge

if.then.requires_new_range_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %requires_new_range

land.lhs.true6:                                   ; preds = %if.then
  %lcn7 = getelementptr inbounds %struct.ntfs_run, ptr %add.ptr2, i32 0, i32 2
  %22 = ptrtoint ptr %lcn7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lcn7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp8 = icmp ne i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lcn)
  %cmp9 = icmp eq i32 %lcn, -1
  %cmp11 = xor i1 %cmp9, %cmp8
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true6.requires_new_range_crit_edge

land.lhs.true6.requires_new_range_crit_edge:      ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %requires_new_range

land.lhs.true13:                                  ; preds = %land.lhs.true6
  %add18 = add i32 %23, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %lcn)
  %cmp19 = icmp eq i32 %add18, %lcn
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp19
  br i1 %or.cond, label %if.then21, label %land.lhs.true13.requires_new_range_crit_edge

land.lhs.true13.requires_new_range_crit_edge:     ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %requires_new_range

if.then21:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %add41.sink.i.ph318, -1
  br label %if.else106

requires_new_range:                               ; preds = %cleanup153, %land.lhs.true13.requires_new_range_crit_edge, %land.lhs.true6.requires_new_range_crit_edge, %if.then.requires_new_range_crit_edge, %if.then26.i.requires_new_range_crit_edge, %if.end.i.requires_new_range_crit_edge, %entry.requires_new_range_crit_edge
  %index.1 = phi i32 [ %add150, %cleanup153 ], [ %add41.sink.i.ph318, %if.then.requires_new_range_crit_edge ], [ %add41.sink.i.ph318, %land.lhs.true6.requires_new_range_crit_edge ], [ %add41.sink.i.ph318, %land.lhs.true13.requires_new_range_crit_edge ], [ 0, %if.end.i.requires_new_range_crit_edge ], [ 0, %entry.requires_new_range_crit_edge ], [ 0, %if.then26.i.requires_new_range_crit_edge ]
  %tail_vcn.0 = phi i32 [ %tail_vcn.1, %cleanup153 ], [ 0, %if.then.requires_new_range_crit_edge ], [ 0, %land.lhs.true6.requires_new_range_crit_edge ], [ 0, %land.lhs.true13.requires_new_range_crit_edge ], [ 0, %if.end.i.requires_new_range_crit_edge ], [ 0, %entry.requires_new_range_crit_edge ], [ 0, %if.then26.i.requires_new_range_crit_edge ]
  %tail_len.0 = phi i32 [ %51, %cleanup153 ], [ 0, %if.then.requires_new_range_crit_edge ], [ 0, %land.lhs.true6.requires_new_range_crit_edge ], [ 0, %land.lhs.true13.requires_new_range_crit_edge ], [ 0, %if.end.i.requires_new_range_crit_edge ], [ 0, %entry.requires_new_range_crit_edge ], [ 0, %if.then26.i.requires_new_range_crit_edge ]
  %tail_lcn.0 = phi i32 [ %tail_lcn.1, %cleanup153 ], [ 0, %if.then.requires_new_range_crit_edge ], [ 0, %land.lhs.true6.requires_new_range_crit_edge ], [ 0, %land.lhs.true13.requires_new_range_crit_edge ], [ 0, %if.end.i.requires_new_range_crit_edge ], [ 0, %entry.requires_new_range_crit_edge ], [ 0, %if.then26.i.requires_new_range_crit_edge ]
  %should_add_tail.0.off0 = phi i1 [ %cmp131, %cleanup153 ], [ false, %if.then.requires_new_range_crit_edge ], [ false, %land.lhs.true6.requires_new_range_crit_edge ], [ false, %land.lhs.true13.requires_new_range_crit_edge ], [ false, %if.end.i.requires_new_range_crit_edge ], [ false, %entry.requires_new_range_crit_edge ], [ false, %if.then26.i.requires_new_range_crit_edge ]
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i, align 4
  %mul = mul i32 %25, 12
  %allocated = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 2
  %26 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %allocated, align 4
  %add25 = add i32 %mul, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add25)
  %cmp26 = icmp ult i32 %27, %add25
  br i1 %cmp26, label %if.then28, label %if.else89

if.then28:                                        ; preds = %requires_new_range
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool29.not = icmp eq i32 %mul, 0
  br i1 %tobool29.not, label %if.then28.if.end65_crit_edge, label %if.else

if.then28.if.end65_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %mul)
  %cmp31 = icmp ult i32 %mul, 65537
  br i1 %cmp31, label %if.then33, label %if.else43

if.then33:                                        ; preds = %if.else
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #9, !range !13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %if.then36, label %if.then33.do.body.i299_crit_edge

if.then33.do.body.i299_crit_edge:                 ; preds = %if.then33
  br label %do.body.i299

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %27, 1
  br label %if.end47

do.body.i299:                                     ; preds = %do.body.i299.do.body.i299_crit_edge, %if.then33.do.body.i299_crit_edge
  %size.addr.0.i = phi i32 [ %shr.i297, %do.body.i299.do.body.i299_crit_edge ], [ %mul, %if.then33.do.body.i299_crit_edge ]
  %bits.0.i = phi i32 [ %inc.i, %do.body.i299.do.body.i299_crit_edge ], [ 8, %if.then33.do.body.i299_crit_edge ]
  %inc.i = add nuw nsw i32 %bits.0.i, 1
  %shr.i297 = lshr i32 %size.addr.0.i, 1
  %cmp.i298 = icmp ugt i32 %size.addr.0.i, 513
  br i1 %cmp.i298, label %do.body.i299.do.body.i299_crit_edge, label %blksize_bits.exit

do.body.i299.do.body.i299_crit_edge:              ; preds = %do.body.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i299

blksize_bits.exit:                                ; preds = %do.body.i299
  call void @__sanitizer_cov_trace_pc() #11
  %shl41 = shl i32 8, %bits.0.i
  br label %if.end47

if.else43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add45 = add i32 %27, 65536
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %blksize_bits.exit, %if.then36
  %bytes.0 = phi i32 [ %shl, %if.then36 ], [ %shl41, %blksize_bits.exit ], [ %add45, %if.else43 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %bytes.0)
  %cmp49 = icmp ugt i32 %bytes.0, 65536
  %not.is_mft = xor i1 %is_mft, true
  %spec.select = select i1 %not.is_mft, i1 %cmp49, i1 false
  br i1 %spec.select, label %do.end, label %if.end47.if.end65_crit_edge, !prof !14

if.end47.if.end65_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end:                                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #9
  br label %if.end65

if.end65:                                         ; preds = %do.end, %if.end47.if.end65_crit_edge, %if.then28.if.end65_crit_edge
  %bytes.0356 = phi i32 [ %bytes.0, %do.end ], [ %bytes.0, %if.end47.if.end65_crit_edge ], [ 64, %if.then28.if.end65_crit_edge ]
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %bytes.0356, i32 noundef 3264, i32 noundef -1) #12
  %tobool73.not = icmp eq ptr %call.i, null
  br i1 %tobool73.not, label %if.end65.cleanup190_crit_edge, label %cleanup

if.end65.cleanup190_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup190

cleanup:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr76 = getelementptr %struct.ntfs_run, ptr %call.i, i32 %index.1
  %30 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %run, align 4
  %mul78 = mul i32 %index.1, 12
  %32 = call ptr @memcpy(ptr %call.i, ptr %31, i32 %mul78)
  %add.ptr79 = getelementptr %struct.ntfs_run, ptr %add.ptr76, i32 1
  %add.ptr81 = getelementptr %struct.ntfs_run, ptr %31, i32 %index.1
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i, align 4
  %sub83 = sub i32 %34, %index.1
  %mul84 = mul i32 %sub83, 12
  %35 = call ptr @memcpy(ptr %add.ptr79, ptr %add.ptr81, i32 %mul84)
  tail call void @kvfree(ptr noundef %31) #9
  %36 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %run, align 4
  %37 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %bytes.0356, ptr %allocated, align 4
  br label %if.end173

if.else89:                                        ; preds = %requires_new_range
  %38 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %run, align 4
  %add.ptr93 = getelementptr %struct.ntfs_run, ptr %39, i32 %index.1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %index.1)
  %cmp94.not = icmp eq i32 %25, %index.1
  br i1 %cmp94.not, label %if.else89.if.end173_crit_edge, label %if.then96

if.else89.if.end173_crit_edge:                    ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

if.then96:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #11
  %sub91 = sub i32 %25, %index.1
  %add.ptr97 = getelementptr %struct.ntfs_run, ptr %add.ptr93, i32 1
  %mul98 = mul i32 %sub91, 12
  %40 = call ptr @memmove(ptr %add.ptr97, ptr %add.ptr93, i32 %mul98)
  br label %if.end173

if.else106:                                       ; preds = %if.then21, %if.else.i.if.else106_crit_edge, %if.end15.i.if.else106_crit_edge, %if.end4.i.if.else106_crit_edge
  %index.0 = phi i32 [ %sub, %if.then21 ], [ 0, %if.end4.i.if.else106_crit_edge ], [ %sub.i, %if.end15.i.if.else106_crit_edge ], [ %add21.i, %if.else.i.if.else106_crit_edge ]
  %41 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %run, align 4
  %add.ptr108 = getelementptr %struct.ntfs_run, ptr %42, i32 %index.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lcn)
  %cmp109 = icmp ne i32 %lcn, -1
  %lcn111 = getelementptr %struct.ntfs_run, ptr %42, i32 %index.0, i32 2
  %43 = ptrtoint ptr %lcn111 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lcn111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp112 = icmp eq i32 %44, -1
  %cmp114.not = xor i1 %cmp109, %cmp112
  br i1 %cmp114.not, label %lor.lhs.false116, label %if.else106.if.then126_crit_edge

if.else106.if.then126_crit_edge:                  ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

lor.lhs.false116:                                 ; preds = %if.else106
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lcn)
  %cmp117.not = icmp eq i32 %lcn, -1
  br i1 %cmp117.not, label %lor.lhs.false116.if.end157_crit_edge, label %land.lhs.true119

lor.lhs.false116.if.end157_crit_edge:             ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

land.lhs.true119:                                 ; preds = %lor.lhs.false116
  %45 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr108, align 4
  %sub122 = add i32 %44, %vcn
  %add123 = sub i32 %sub122, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %add123, i32 %lcn)
  %cmp124.not = icmp eq i32 %add123, %lcn
  br i1 %cmp124.not, label %land.lhs.true119.if.end157_crit_edge, label %land.lhs.true119.if.then126_crit_edge

land.lhs.true119.if.then126_crit_edge:            ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then126

land.lhs.true119.if.end157_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

if.then126:                                       ; preds = %land.lhs.true119.if.then126_crit_edge, %if.else106.if.then126_crit_edge
  %47 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr108, align 4
  %sub128 = sub i32 %vcn, %48
  %add129 = add i32 %sub128, %len
  %len130 = getelementptr %struct.ntfs_run, ptr %42, i32 %index.0, i32 1
  %49 = ptrtoint ptr %len130 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len130, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add129)
  %cmp131 = icmp ugt i32 %50, %add129
  %add140 = add i32 %add129, %44
  %spec.select296 = select i1 %cmp112, i32 -1, i32 %add140
  %add142 = add i32 %len, %vcn
  %tail_vcn.1 = select i1 %cmp131, i32 %add142, i32 0
  %51 = tail call i32 @llvm.usub.sat.i32(i32 %50, i32 %add129)
  %tail_lcn.1 = select i1 %cmp131, i32 %spec.select296, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %vcn)
  %cmp146.not = icmp eq i32 %48, %vcn
  br i1 %cmp146.not, label %cleanup153.thread, label %cleanup153

cleanup153.thread:                                ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %lcn111 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %lcn, ptr %lcn111, align 4
  br label %if.end157

cleanup153:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %len130 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub128, ptr %len130, align 4
  %add150 = add i32 %index.0, 1
  br label %requires_new_range

if.end157:                                        ; preds = %cleanup153.thread, %land.lhs.true119.if.end157_crit_edge, %lor.lhs.false116.if.end157_crit_edge
  %tail_vcn.2 = phi i32 [ 0, %land.lhs.true119.if.end157_crit_edge ], [ 0, %lor.lhs.false116.if.end157_crit_edge ], [ %tail_vcn.1, %cleanup153.thread ]
  %tail_len.2 = phi i32 [ 0, %land.lhs.true119.if.end157_crit_edge ], [ 0, %lor.lhs.false116.if.end157_crit_edge ], [ %51, %cleanup153.thread ]
  %tail_lcn.2 = phi i32 [ 0, %land.lhs.true119.if.end157_crit_edge ], [ 0, %lor.lhs.false116.if.end157_crit_edge ], [ %tail_lcn.1, %cleanup153.thread ]
  %should_add_tail.1 = phi i1 [ false, %land.lhs.true119.if.end157_crit_edge ], [ false, %lor.lhs.false116.if.end157_crit_edge ], [ %cmp131, %cleanup153.thread ]
  %54 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr108, align 4
  %len159 = getelementptr %struct.ntfs_run, ptr %42, i32 %index.0, i32 1
  %56 = ptrtoint ptr %len159 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len159, align 4
  %add160 = add i32 %57, %55
  %add161 = add i32 %len, %vcn
  call void @__sanitizer_cov_trace_cmp4(i32 %add160, i32 %add161)
  %cmp162 = icmp ult i32 %add160, %add161
  br i1 %cmp162, label %if.then164, label %if.end157.land.lhs.true176_crit_edge

if.end157.land.lhs.true176_crit_edge:             ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true176

if.then164:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  %sub169 = add i32 %add161, %57
  %add171 = sub i32 %sub169, %add160
  %58 = ptrtoint ptr %len159 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add171, ptr %len159, align 4
  br label %land.lhs.true176

if.end173:                                        ; preds = %if.then96, %if.else89.if.end173_crit_edge, %cleanup
  %r.2 = phi ptr [ %add.ptr76, %cleanup ], [ %add.ptr93, %if.then96 ], [ %add.ptr93, %if.else89.if.end173_crit_edge ]
  %59 = ptrtoint ptr %r.2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %vcn, ptr %r.2, align 4
  %lcn102 = getelementptr inbounds %struct.ntfs_run, ptr %r.2, i32 0, i32 2
  %60 = ptrtoint ptr %lcn102 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %lcn, ptr %lcn102, align 4
  %len103 = getelementptr inbounds %struct.ntfs_run, ptr %r.2, i32 0, i32 1
  %61 = ptrtoint ptr %len103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %len, ptr %len103, align 4
  %62 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count.i, align 4
  %add105 = add i32 %63, 1
  store i32 %add105, ptr %count.i, align 4
  br label %if.end181

land.lhs.true176:                                 ; preds = %if.then164, %if.end157.land.lhs.true176_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.0)
  %cmp177.not = icmp eq i32 %index.0, 0
  %sub180 = add i32 %index.0, -1
  %spec.select347 = select i1 %cmp177.not, i32 0, i32 %sub180
  br label %if.end181

if.end181:                                        ; preds = %land.lhs.true176, %if.end173
  %should_add_tail.2.off0344 = phi i1 [ %should_add_tail.0.off0, %if.end173 ], [ %should_add_tail.1, %land.lhs.true176 ]
  %tail_lcn.3342 = phi i32 [ %tail_lcn.0, %if.end173 ], [ %tail_lcn.2, %land.lhs.true176 ]
  %tail_len.3340 = phi i32 [ %tail_len.0, %if.end173 ], [ %tail_len.2, %land.lhs.true176 ]
  %tail_vcn.3338 = phi i32 [ %tail_vcn.0, %if.end173 ], [ %tail_vcn.2, %land.lhs.true176 ]
  %index.5 = phi i32 [ %index.1, %if.end173 ], [ %spec.select347, %land.lhs.true176 ]
  tail call fastcc void @run_consolidate(ptr noundef %run, i32 noundef %index.5)
  %add182 = add i32 %index.5, 1
  tail call fastcc void @run_consolidate(ptr noundef %run, i32 noundef %add182)
  br i1 %should_add_tail.2.off0344, label %land.lhs.true185, label %if.end181.if.end189_crit_edge

if.end181.if.end189_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

land.lhs.true185:                                 ; preds = %if.end181
  %call187 = tail call zeroext i1 @run_add_entry(ptr noundef %run, i32 noundef %tail_vcn.3338, i32 noundef %tail_lcn.3342, i32 noundef %tail_len.3340, i1 noundef zeroext %is_mft)
  br i1 %call187, label %land.lhs.true185.if.end189_crit_edge, label %land.lhs.true185.cleanup190_crit_edge

land.lhs.true185.cleanup190_crit_edge:            ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup190

land.lhs.true185.if.end189_crit_edge:             ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.end189:                                        ; preds = %land.lhs.true185.if.end189_crit_edge, %if.end181.if.end189_crit_edge
  br label %cleanup190

cleanup190:                                       ; preds = %if.end189, %land.lhs.true185.cleanup190_crit_edge, %if.end65.cleanup190_crit_edge
  %retval.1 = phi i1 [ true, %if.end189 ], [ false, %land.lhs.true185.cleanup190_crit_edge ], [ false, %if.end65.cleanup190_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @run_consolidate(ptr nocapture noundef %run, i32 noundef %index) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %add100 = add i32 %index, 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add100, i32 %1)
  %cmp101 = icmp ult i32 %add100, %1
  br i1 %cmp101, label %while.body.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %run, align 4
  %add.ptr = getelementptr %struct.ntfs_run, ptr %3, i32 %index
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %add104 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ %add100, %while.body.preheader ]
  %r.0103 = phi ptr [ %r.1, %cleanup.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %index.addr.0102 = phi i32 [ %index.addr.1, %cleanup.while.body_crit_edge ], [ %index, %while.body.preheader ]
  %add.ptr1 = getelementptr %struct.ntfs_run, ptr %r.0103, i32 1
  %4 = ptrtoint ptr %r.0103 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r.0103, align 4
  %len = getelementptr inbounds %struct.ntfs_run, ptr %r.0103, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add2 = add i32 %7, %5
  %8 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %9)
  %cmp4 = icmp ult i32 %add2, %9
  br i1 %cmp4, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %sub = sub i32 %add2, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %9)
  %cmp6.not = icmp eq i32 %add2, %9
  br i1 %cmp6.not, label %if.end.if.end21_crit_edge, label %if.then7

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then7:                                         ; preds = %if.end
  %len8 = getelementptr %struct.ntfs_run, ptr %r.0103, i32 1, i32 1
  %10 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp9.not = icmp ugt i32 %11, %sub
  br i1 %cmp9.not, label %if.end11, label %if.then7.remove_next_range_crit_edge

if.then7.remove_next_range_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_next_range

if.end11:                                         ; preds = %if.then7
  %sub13 = sub i32 %11, %sub
  %12 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub13, ptr %len8, align 4
  %13 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add2, ptr %add.ptr1, align 4
  %lcn = getelementptr %struct.ntfs_run, ptr %r.0103, i32 1, i32 2
  %14 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp16.not = icmp eq i32 %15, -1
  br i1 %cmp16.not, label %if.end11.if.end21_crit_edge, label %if.then17

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %add19 = add i32 %15, %sub
  %16 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add19, ptr %lcn, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end11.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %lcn22 = getelementptr %struct.ntfs_run, ptr %r.0103, i32 1, i32 2
  %17 = ptrtoint ptr %lcn22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lcn22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp23 = icmp ne i32 %18, -1
  %lcn24 = getelementptr inbounds %struct.ntfs_run, ptr %r.0103, i32 0, i32 2
  %19 = ptrtoint ptr %lcn24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lcn24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp25 = icmp eq i32 %20, -1
  %cmp27.not = xor i1 %cmp23, %cmp25
  br i1 %cmp27.not, label %if.end31, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp33.not = icmp eq i32 %18, -1
  br i1 %cmp33.not, label %if.end31.if.end42_crit_edge, label %land.lhs.true

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end31
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %add38 = add i32 %22, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add38)
  %cmp39.not = icmp eq i32 %18, %add38
  br i1 %cmp39.not, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end31.if.end42_crit_edge
  %len43 = getelementptr %struct.ntfs_run, ptr %r.0103, i32 1, i32 1
  %23 = ptrtoint ptr %len43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len43, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %add46 = add i32 %26, %24
  store i32 %add46, ptr %len, align 4
  br label %remove_next_range

remove_next_range:                                ; preds = %if.end42, %if.then7.remove_next_range_crit_edge
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count, align 4
  %sub49 = sub i32 %28, %add104
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub49)
  %cmp50 = icmp ugt i32 %sub49, 1
  br i1 %cmp50, label %if.then52, label %remove_next_range.if.end55_crit_edge

remove_next_range.if.end55_crit_edge:             ; preds = %remove_next_range
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then52:                                        ; preds = %remove_next_range
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr53 = getelementptr %struct.ntfs_run, ptr %r.0103, i32 2
  %29 = mul i32 %sub49, 12
  %mul = add i32 %29, -12
  %30 = call ptr @memmove(ptr %add.ptr1, ptr %add.ptr53, i32 %mul)
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %remove_next_range.if.end55_crit_edge
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 4
  %sub57 = add i32 %32, -1
  store i32 %sub57, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end21.cleanup_crit_edge
  %index.addr.1 = phi i32 [ %index.addr.0102, %if.end55 ], [ %add104, %if.end21.cleanup_crit_edge ]
  %r.1 = phi ptr [ %r.0103, %if.end55 ], [ %add.ptr1, %if.end21.cleanup_crit_edge ]
  %add = add i32 %index.addr.1, 1
  %33 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %add, %34
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @run_collapse_range(ptr nocapture noundef %run, i32 noundef %vcn, i32 noundef %len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %add = add i32 %len, %vcn
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.else38.tailrecurse_crit_edge, %entry
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %tailrecurse.do.end_crit_edge, label %if.end.i

tailrecurse.do.end_crit_edge:                     ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %tailrecurse
  %sub.i = add i32 %1, -1
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %run, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %vcn)
  %cmp.i = icmp ugt i32 %5, %vcn
  br i1 %cmp.i, label %if.end.i.do.end_crit_edge, label %if.end4.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.ntfs_run, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %vcn)
  %cmp6.i = icmp ugt i32 %add.i, %vcn
  br i1 %cmp6.i, label %if.end4.i.if.end22_crit_edge, label %if.end8.i

if.end4.i.if.end22_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end8.i:                                        ; preds = %if.end4.i
  %add.ptr.i = getelementptr %struct.ntfs_run, ptr %3, i32 %sub.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %len10.i = getelementptr %struct.ntfs_run, ptr %3, i32 %sub.i, i32 1
  %10 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len10.i, align 4
  %add11.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %vcn)
  %cmp12.not.i = icmp ugt i32 %add11.i, %vcn
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end8.i.do.end_crit_edge

if.end8.i.do.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vcn)
  %cmp17.not.i = icmp ugt i32 %9, %vcn
  br i1 %cmp17.not.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.if.end22_crit_edge

if.end15.i.if.end22_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end15.i.do.body.i_crit_edge
  %min_idx.0.i = phi i32 [ %min_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ 0, %if.end15.i.do.body.i_crit_edge ]
  %max_idx.0.i = phi i32 [ %max_idx.1.i, %do.cond.i.do.body.i_crit_edge ], [ %sub.i, %if.end15.i.do.body.i_crit_edge ]
  %sub20.i = sub i32 %max_idx.0.i, %min_idx.0.i
  %shr.i = lshr i32 %sub20.i, 1
  %add21.i = add i32 %shr.i, %min_idx.0.i
  %add.ptr23.i = getelementptr %struct.ntfs_run, ptr %3, i32 %add21.i
  %12 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %vcn)
  %cmp25.i = icmp ugt i32 %13, %vcn
  br i1 %cmp25.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %do.body.i
  %sub27.i = add i32 %add21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21.i)
  %tobool28.not.i = icmp eq i32 %add21.i, 0
  br i1 %tobool28.not.i, label %if.then26.i.do.end_crit_edge, label %if.then26.i.do.cond.i_crit_edge

if.then26.i.do.cond.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.then26.i.do.end_crit_edge:                     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.else.i:                                        ; preds = %do.body.i
  %len32.i = getelementptr %struct.ntfs_run, ptr %3, i32 %add21.i, i32 1
  %14 = ptrtoint ptr %len32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len32.i, align 4
  %add33.i = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %vcn)
  %cmp34.not.i = icmp ugt i32 %add33.i, %vcn
  br i1 %cmp34.not.i, label %if.else.i.if.end22_crit_edge, label %if.then35.i

if.else.i.if.end22_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add36.i = add i32 %add21.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then35.i, %if.then26.i.do.cond.i_crit_edge
  %min_idx.1.i = phi i32 [ %min_idx.0.i, %if.then26.i.do.cond.i_crit_edge ], [ %add36.i, %if.then35.i ]
  %max_idx.1.i = phi i32 [ %sub27.i, %if.then26.i.do.cond.i_crit_edge ], [ %max_idx.0.i, %if.then35.i ]
  %cmp40.not.i = icmp ugt i32 %min_idx.1.i, %max_idx.1.i
  br i1 %cmp40.not.i, label %do.cond.i.do.end_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.cond.i.do.end_crit_edge:                       ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %do.cond.i.do.end_crit_edge, %if.then26.i.do.end_crit_edge, %if.end8.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %tailrecurse.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 495, i32 noundef 9, ptr noundef null) #9
  br label %cleanup80

if.end22:                                         ; preds = %if.else.i.if.end22_crit_edge, %if.end15.i.if.end22_crit_edge, %if.end4.i.if.end22_crit_edge
  %add41.sink.i = phi i32 [ 0, %if.end4.i.if.end22_crit_edge ], [ %sub.i, %if.end15.i.if.end22_crit_edge ], [ %add21.i, %if.else.i.if.end22_crit_edge ]
  %16 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %run, align 4
  %add.ptr24 = getelementptr %struct.ntfs_run, ptr %17, i32 %add41.sink.i
  %18 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %vcn)
  %cmp = icmp ult i32 %19, %vcn
  br i1 %cmp, label %if.then26, label %if.end22.if.end46_crit_edge

if.end22.if.end46_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then26:                                        ; preds = %if.end22
  %len28 = getelementptr %struct.ntfs_run, ptr %17, i32 %add41.sink.i, i32 1
  %20 = ptrtoint ptr %len28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len28, align 4
  %add29 = add i32 %21, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %add)
  %cmp30.not = icmp ugt i32 %add29, %add
  br i1 %cmp30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %vcn, %19
  br label %if.end44

if.else:                                          ; preds = %if.then26
  %lcn = getelementptr %struct.ntfs_run, ptr %17, i32 %add41.sink.i, i32 2
  %22 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp34 = icmp eq i32 %23, -1
  br i1 %cmp34, label %if.then35, label %if.else38

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub37 = sub i32 %21, %len
  br label %if.end44

if.else38:                                        ; preds = %if.else
  %call39 = tail call zeroext i1 @run_add_entry(ptr noundef %run, i32 noundef %vcn, i32 noundef -1, i32 noundef %len, i1 noundef zeroext false)
  br i1 %call39, label %if.else38.tailrecurse_crit_edge, label %if.else38.cleanup80_crit_edge

if.else38.cleanup80_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup80

if.else38.tailrecurse_crit_edge:                  ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %tailrecurse

if.end44:                                         ; preds = %if.then35, %if.then31
  %storemerge = phi i32 [ %sub37, %if.then35 ], [ %sub, %if.then31 ]
  %24 = ptrtoint ptr %len28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge, ptr %len28, align 4
  %add.ptr45 = getelementptr %struct.ntfs_run, ptr %add.ptr24, i32 1
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end22.if.end46_crit_edge
  %r.0 = phi ptr [ %add.ptr45, %if.end44 ], [ %add.ptr24, %if.end22.if.end46_crit_edge ]
  %add.ptr162 = getelementptr %struct.ntfs_run, ptr %17, i32 %1
  %cmp47179 = icmp ult ptr %r.0, %add.ptr162
  br i1 %cmp47179, label %if.end46.for.body_crit_edge, label %if.end46.for.end_crit_edge

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end46.for.body_crit_edge
  %eat_end.0182 = phi ptr [ %eat_end.1, %cleanup.for.body_crit_edge ], [ %r.0, %if.end46.for.body_crit_edge ]
  %r.1180 = phi ptr [ %incdec.ptr, %cleanup.for.body_crit_edge ], [ %r.0, %if.end46.for.body_crit_edge ]
  %25 = ptrtoint ptr %r.1180 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r.1180, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %26)
  %cmp49.not = icmp ugt i32 %add, %26
  br i1 %cmp49.not, label %if.end53, label %if.then50

if.then50:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub52 = sub i32 %26, %len
  %27 = ptrtoint ptr %r.1180 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub52, ptr %r.1180, align 4
  br label %cleanup

if.end53:                                         ; preds = %for.body
  %len55 = getelementptr inbounds %struct.ntfs_run, ptr %r.1180, i32 0, i32 1
  %28 = ptrtoint ptr %len55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len55, align 4
  %add56 = add i32 %29, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %add56, i32 %add)
  %cmp57.not = icmp ugt i32 %add56, %add
  br i1 %cmp57.not, label %if.end60, label %if.then58

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr59 = getelementptr %struct.ntfs_run, ptr %r.1180, i32 1
  br label %cleanup

if.end60:                                         ; preds = %if.end53
  %sub62 = sub i32 %add, %26
  %lcn63 = getelementptr inbounds %struct.ntfs_run, ptr %r.1180, i32 0, i32 2
  %30 = ptrtoint ptr %lcn63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lcn63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp64.not = icmp eq i32 %31, -1
  br i1 %cmp64.not, label %if.end60.if.end68_crit_edge, label %if.then65

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %add67 = add i32 %31, %sub62
  %32 = ptrtoint ptr %lcn63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add67, ptr %lcn63, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end60.if.end68_crit_edge
  %33 = ptrtoint ptr %len55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len55, align 4
  %sub70 = sub i32 %34, %sub62
  store i32 %sub70, ptr %len55, align 4
  %sub71.neg = sub i32 %sub62, %len
  %35 = ptrtoint ptr %r.1180 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %r.1180, align 4
  %sub73 = add i32 %sub71.neg, %36
  store i32 %sub73, ptr %r.1180, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then58, %if.then50
  %eat_end.1 = phi ptr [ %eat_end.0182, %if.then50 ], [ %add.ptr59, %if.then58 ], [ %eat_end.0182, %if.end68 ]
  %incdec.ptr = getelementptr %struct.ntfs_run, ptr %r.1180, i32 1
  %cmp47 = icmp ult ptr %incdec.ptr, %add.ptr162
  br i1 %cmp47, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end46.for.end_crit_edge
  %eat_end.0.lcssa = phi ptr [ %r.0, %if.end46.for.end_crit_edge ], [ %eat_end.1, %cleanup.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %eat_end.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %r.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div.neg = sdiv exact i32 %sub.ptr.sub, -12
  %sub.ptr.lhs.cast74 = ptrtoint ptr %add.ptr162 to i32
  %sub.ptr.sub76 = sub i32 %sub.ptr.lhs.cast74, %sub.ptr.lhs.cast
  %37 = call ptr @memmove(ptr %r.0, ptr %eat_end.0.lcssa, i32 %sub.ptr.sub76)
  %38 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i, align 4
  %sub79 = add i32 %39, %sub.ptr.div.neg
  store i32 %sub79, ptr %count.i, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %for.end, %if.else38.cleanup80_crit_edge, %do.end
  %retval.0 = phi i1 [ true, %do.end ], [ true, %for.end ], [ false, %if.else38.cleanup80_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @run_get_entry(ptr nocapture noundef readonly %run, i32 noundef %index, ptr noundef writeonly %vcn, ptr noundef writeonly %lcn, ptr noundef writeonly %len) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %cmp.not = icmp ugt i32 %1, %index
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %run, align 4
  %add.ptr = getelementptr %struct.ntfs_run, ptr %3, i32 %index
  %len1 = getelementptr %struct.ntfs_run, ptr %3, i32 %index, i32 1
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %vcn, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %8 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %vcn, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %lcn, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %lcn10 = getelementptr %struct.ntfs_run, ptr %3, i32 %index, i32 2
  %9 = ptrtoint ptr %lcn10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lcn10, align 4
  %11 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %lcn, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %len, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len1, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.then13 ], [ true, %if.end11.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @run_pack(ptr nocapture noundef readonly %run, i32 noundef %svcn, i32 noundef %len, ptr noundef writeonly %run_buf, i32 noundef %run_buf_size, ptr nocapture noundef %packed_vcns) local_unnamed_addr #3 align 64 {
entry:
  %n.addr.i107 = alloca i64, align 8
  %n.addr.i = alloca i64, align 8
  %len.addr = alloca i32, align 4
  %lcn = alloca i32, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #9
  %1 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lcn, align 4, !annotation !15
  %add = add i32 %len, %svcn
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !15
  %3 = ptrtoint ptr %packed_vcns to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %packed_vcns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %svcn, ptr noundef nonnull %lcn, ptr noundef nonnull %len.addr, ptr noundef nonnull %i)
  br i1 %call, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %add.ptr1.i = getelementptr inbounds i8, ptr %n.addr.i, i32 7
  %add.ptr.i = getelementptr inbounds i8, ptr %n.addr.i, i32 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %.neg = add i32 %run_buf_size, -2
  %arrayidx2.i = getelementptr inbounds i8, ptr %n.addr.i, i32 1
  %arrayidx6.i = getelementptr inbounds i8, ptr %n.addr.i, i32 2
  %arrayidx10.i = getelementptr inbounds i8, ptr %n.addr.i, i32 3
  %add.ptr1.i108 = getelementptr inbounds i8, ptr %n.addr.i107, i32 7
  %arrayidx41.i = getelementptr inbounds i8, ptr %n.addr.i107, i32 1
  %arrayidx46.i = getelementptr inbounds i8, ptr %n.addr.i107, i32 2
  %arrayidx51.i = getelementptr inbounds i8, ptr %n.addr.i107, i32 3
  %add.ptr.i138 = getelementptr inbounds i8, ptr %n.addr.i107, i32 8
  %sub.ptr.lhs.cast.i139 = ptrtoint ptr %add.ptr.i138 to i32
  %count.i = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end54.for.cond_crit_edge, %for.cond.preheader
  %vcn.0 = phi i32 [ %add6, %if.end54.for.cond_crit_edge ], [ %svcn, %for.cond.preheader ]
  %run_buf.addr.0 = phi ptr [ %run_buf.addr.1, %if.end54.for.cond_crit_edge ], [ %run_buf, %for.cond.preheader ]
  %prev_lcn.0 = phi i32 [ %prev_lcn.1, %if.end54.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %packed_size.0 = phi i32 [ %add41, %if.end54.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %4 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.addr, align 4
  %add6 = add i32 %5, %vcn.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %add)
  %cmp7 = icmp ugt i32 %add6, %add
  br i1 %cmp7, label %if.then8, label %for.cond.lor.lhs.false.i_crit_edge

for.cond.lor.lhs.false.i_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.then8:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %add, %vcn.0
  %6 = ptrtoint ptr %len.addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %len.addr, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then8, %for.cond.lor.lhs.false.i_crit_edge
  %7 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.addr, align 4
  %conv = zext i32 %8 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n.addr.i)
  %9 = ptrtoint ptr %n.addr.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %n.addr.i, align 8
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not.i = icmp eq i8 %11, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.if.then13.i_crit_edge

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not.i = icmp eq i8 %13, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false5.i.if.then13.i_crit_edge

lor.lhs.false5.i.if.then13.i_crit_edge:           ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false5.i
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not.i = icmp eq i8 %15, 0
  br i1 %tobool12.not.i, label %lor.lhs.false9.i.if.end.i_crit_edge, label %lor.lhs.false9.i.if.then13.i_crit_edge

lor.lhs.false9.i.if.then13.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

lor.lhs.false9.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then13.i:                                      ; preds = %lor.lhs.false9.i.if.then13.i_crit_edge, %lor.lhs.false5.i.if.then13.i_crit_edge, %lor.lhs.false.i.if.then13.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %lor.lhs.false9.i.if.end.i_crit_edge
  %p.0.i = phi ptr [ %arrayidx10.i, %if.then13.i ], [ %add.ptr1.i, %lor.lhs.false9.i.if.end.i_crit_edge ]
  %arrayidx15.i = getelementptr i8, ptr %p.0.i, i32 -3
  %16 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool17.not.i = icmp eq i8 %17, 0
  br i1 %tobool17.not.i, label %lor.lhs.false18.i, label %if.end.i.if.then22.i_crit_edge

if.end.i.if.then22.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22.i

lor.lhs.false18.i:                                ; preds = %if.end.i
  %arrayidx19.i = getelementptr i8, ptr %p.0.i, i32 -2
  %18 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not.i = icmp eq i8 %19, 0
  br i1 %tobool21.not.i, label %lor.lhs.false18.i.run_packed_size.exit_crit_edge, label %lor.lhs.false18.i.if.then22.i_crit_edge

lor.lhs.false18.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22.i

lor.lhs.false18.i.run_packed_size.exit_crit_edge: ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %run_packed_size.exit

if.then22.i:                                      ; preds = %lor.lhs.false18.i.if.then22.i_crit_edge, %if.end.i.if.then22.i_crit_edge
  %add.ptr23.i = getelementptr i8, ptr %p.0.i, i32 -2
  br label %run_packed_size.exit

run_packed_size.exit:                             ; preds = %if.then22.i, %lor.lhs.false18.i.run_packed_size.exit_crit_edge
  %p.1.i = phi ptr [ %add.ptr23.i, %if.then22.i ], [ %p.0.i, %lor.lhs.false18.i.run_packed_size.exit_crit_edge ]
  %arrayidx25.i = getelementptr i8, ptr %p.1.i, i32 -1
  %20 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool26.not.i = icmp eq i8 %21, 0
  %spec.select.i = select i1 %tobool26.not.i, ptr %p.1.i, ptr %arrayidx25.i
  %22 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %spec.select.i, align 1
  %arrayidx25.sroa.gep.i = getelementptr i8, ptr %p.1.i, i32 -2
  %spec.select.sroa.sel.i = select i1 %tobool26.not.i, ptr %arrayidx25.i, ptr %arrayidx25.sroa.gep.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not114.i = icmp slt i8 %23, 0
  %spec.select111.i = select i1 %tobool32.not114.i, ptr %spec.select.sroa.sel.i, ptr %spec.select.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %spec.select111.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.addr.i)
  %24 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp11 = icmp eq i32 %25, -1
  br i1 %cmp11, label %run_packed_size.exit.if.end18_crit_edge, label %if.else

run_packed_size.exit.if.end18_crit_edge:          ; preds = %run_packed_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else:                                          ; preds = %run_packed_size.exit
  %conv14 = zext i32 %25 to i64
  %conv15 = zext i32 %prev_lcn.0 to i64
  %sub16 = sub nsw i64 %conv14, %conv15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n.addr.i107)
  %26 = ptrtoint ptr %n.addr.i107 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %sub16, ptr %n.addr.i107, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub16)
  %cmp.i = icmp sgt i64 %sub16, -1
  %27 = lshr i64 %sub16, 56
  %28 = trunc i64 %27 to i8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i109 = icmp eq i8 %28, 0
  br i1 %tobool.not.i109, label %lor.lhs.false.i112, label %if.then.i.if.then13.i120_crit_edge

if.then.i.if.then13.i120_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i120

lor.lhs.false.i112:                               ; preds = %if.then.i
  %29 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool4.not.i111 = icmp eq i8 %30, 0
  br i1 %tobool4.not.i111, label %lor.lhs.false5.i115, label %lor.lhs.false.i112.if.then13.i120_crit_edge

lor.lhs.false.i112.if.then13.i120_crit_edge:      ; preds = %lor.lhs.false.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i120

lor.lhs.false5.i115:                              ; preds = %lor.lhs.false.i112
  %31 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx46.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool8.not.i114 = icmp eq i8 %32, 0
  br i1 %tobool8.not.i114, label %lor.lhs.false9.i118, label %lor.lhs.false5.i115.if.then13.i120_crit_edge

lor.lhs.false5.i115.if.then13.i120_crit_edge:     ; preds = %lor.lhs.false5.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i120

lor.lhs.false9.i118:                              ; preds = %lor.lhs.false5.i115
  %33 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool12.not.i117 = icmp eq i8 %34, 0
  br i1 %tobool12.not.i117, label %lor.lhs.false9.i118.if.end.i124_crit_edge, label %lor.lhs.false9.i118.if.then13.i120_crit_edge

lor.lhs.false9.i118.if.then13.i120_crit_edge:     ; preds = %lor.lhs.false9.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i120

lor.lhs.false9.i118.if.end.i124_crit_edge:        ; preds = %lor.lhs.false9.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i124

if.then13.i120:                                   ; preds = %lor.lhs.false9.i118.if.then13.i120_crit_edge, %lor.lhs.false5.i115.if.then13.i120_crit_edge, %lor.lhs.false.i112.if.then13.i120_crit_edge, %if.then.i.if.then13.i120_crit_edge
  br label %if.end.i124

if.end.i124:                                      ; preds = %if.then13.i120, %lor.lhs.false9.i118.if.end.i124_crit_edge
  %p.0.i121 = phi ptr [ %arrayidx51.i, %if.then13.i120 ], [ %add.ptr1.i108, %lor.lhs.false9.i118.if.end.i124_crit_edge ]
  %arrayidx15.i122 = getelementptr i8, ptr %p.0.i121, i32 -3
  %35 = ptrtoint ptr %arrayidx15.i122 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx15.i122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool17.not.i123 = icmp eq i8 %36, 0
  br i1 %tobool17.not.i123, label %lor.lhs.false18.i127, label %if.end.i124.if.then22.i129_crit_edge

if.end.i124.if.then22.i129_crit_edge:             ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22.i129

lor.lhs.false18.i127:                             ; preds = %if.end.i124
  %arrayidx19.i125 = getelementptr i8, ptr %p.0.i121, i32 -2
  %37 = ptrtoint ptr %arrayidx19.i125 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx19.i125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool21.not.i126 = icmp eq i8 %38, 0
  br i1 %tobool21.not.i126, label %lor.lhs.false18.i127.if.end24.i_crit_edge, label %lor.lhs.false18.i127.if.then22.i129_crit_edge

lor.lhs.false18.i127.if.then22.i129_crit_edge:    ; preds = %lor.lhs.false18.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22.i129

lor.lhs.false18.i127.if.end24.i_crit_edge:        ; preds = %lor.lhs.false18.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then22.i129:                                   ; preds = %lor.lhs.false18.i127.if.then22.i129_crit_edge, %if.end.i124.if.then22.i129_crit_edge
  %add.ptr23.i128 = getelementptr i8, ptr %p.0.i121, i32 -2
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i129, %lor.lhs.false18.i127.if.end24.i_crit_edge
  %p.1.i130 = phi ptr [ %add.ptr23.i128, %if.then22.i129 ], [ %p.0.i121, %lor.lhs.false18.i127.if.end24.i_crit_edge ]
  %arrayidx25.i131 = getelementptr i8, ptr %p.1.i130, i32 -1
  %39 = ptrtoint ptr %arrayidx25.i131 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx25.i131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool26.not.i132 = icmp eq i8 %40, 0
  %spec.select.i133 = select i1 %tobool26.not.i132, ptr %p.1.i130, ptr %arrayidx25.i131
  %41 = ptrtoint ptr %spec.select.i133 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %spec.select.i133, align 1
  %arrayidx25.sroa.gep.i134 = getelementptr i8, ptr %p.1.i130, i32 -2
  %spec.select.sroa.sel.i135 = select i1 %tobool26.not.i132, ptr %arrayidx25.i131, ptr %arrayidx25.sroa.gep.i134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool32.not114.i136 = icmp slt i8 %42, 0
  %spec.select111.i137 = select i1 %tobool32.not114.i136, ptr %spec.select.sroa.sel.i135, ptr %spec.select.i133
  br label %run_packed_size.exit142

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp38.not.i = icmp eq i8 %28, -1
  br i1 %cmp38.not.i, label %lor.lhs.false40.i, label %if.else.i.if.then55.i_crit_edge

if.else.i.if.then55.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55.i

lor.lhs.false40.i:                                ; preds = %if.else.i
  %43 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp43.not.i = icmp eq i8 %44, -1
  br i1 %cmp43.not.i, label %lor.lhs.false45.i, label %lor.lhs.false40.i.if.then55.i_crit_edge

lor.lhs.false40.i.if.then55.i_crit_edge:          ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55.i

lor.lhs.false45.i:                                ; preds = %lor.lhs.false40.i
  %45 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx46.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %cmp48.not.i = icmp eq i8 %46, -1
  br i1 %cmp48.not.i, label %lor.lhs.false50.i, label %lor.lhs.false45.i.if.then55.i_crit_edge

lor.lhs.false45.i.if.then55.i_crit_edge:          ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55.i

lor.lhs.false50.i:                                ; preds = %lor.lhs.false45.i
  %47 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp53.not.i = icmp eq i8 %48, -1
  br i1 %cmp53.not.i, label %lor.lhs.false50.i.if.end57.i_crit_edge, label %lor.lhs.false50.i.if.then55.i_crit_edge

lor.lhs.false50.i.if.then55.i_crit_edge:          ; preds = %lor.lhs.false50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55.i

lor.lhs.false50.i.if.end57.i_crit_edge:           ; preds = %lor.lhs.false50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then55.i:                                      ; preds = %lor.lhs.false50.i.if.then55.i_crit_edge, %lor.lhs.false45.i.if.then55.i_crit_edge, %lor.lhs.false40.i.if.then55.i_crit_edge, %if.else.i.if.then55.i_crit_edge
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %lor.lhs.false50.i.if.end57.i_crit_edge
  %p.3.i = phi ptr [ %arrayidx51.i, %if.then55.i ], [ %add.ptr1.i108, %lor.lhs.false50.i.if.end57.i_crit_edge ]
  %arrayidx58.i = getelementptr i8, ptr %p.3.i, i32 -3
  %49 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx58.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %cmp60.not.i = icmp eq i8 %50, -1
  br i1 %cmp60.not.i, label %lor.lhs.false62.i, label %if.end57.i.if.then67.i_crit_edge

if.end57.i.if.then67.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67.i

lor.lhs.false62.i:                                ; preds = %if.end57.i
  %arrayidx63.i = getelementptr i8, ptr %p.3.i, i32 -2
  %51 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx63.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %cmp65.not.i = icmp eq i8 %52, -1
  br i1 %cmp65.not.i, label %lor.lhs.false62.i.if.end69.i_crit_edge, label %lor.lhs.false62.i.if.then67.i_crit_edge

lor.lhs.false62.i.if.then67.i_crit_edge:          ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then67.i

lor.lhs.false62.i.if.end69.i_crit_edge:           ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then67.i:                                      ; preds = %lor.lhs.false62.i.if.then67.i_crit_edge, %if.end57.i.if.then67.i_crit_edge
  %add.ptr68.i = getelementptr i8, ptr %p.3.i, i32 -2
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then67.i, %lor.lhs.false62.i.if.end69.i_crit_edge
  %p.4.i = phi ptr [ %add.ptr68.i, %if.then67.i ], [ %p.3.i, %lor.lhs.false62.i.if.end69.i_crit_edge ]
  %arrayidx70.i = getelementptr i8, ptr %p.4.i, i32 -1
  %53 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %54)
  %cmp72.not.i = icmp eq i8 %54, -1
  %spec.select110.i = select i1 %cmp72.not.i, ptr %p.4.i, ptr %arrayidx70.i
  %55 = ptrtoint ptr %spec.select110.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %spec.select110.i, align 1
  %arrayidx70.sroa.gep.i = getelementptr i8, ptr %p.4.i, i32 -2
  %spec.select110.sroa.sel.i = select i1 %cmp72.not.i, ptr %arrayidx70.i, ptr %arrayidx70.sroa.gep.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool80.not113.i = icmp slt i8 %56, 0
  %spec.select112.i = select i1 %tobool80.not113.i, ptr %spec.select110.i, ptr %spec.select110.sroa.sel.i
  br label %run_packed_size.exit142

run_packed_size.exit142:                          ; preds = %if.end69.i, %if.end24.i
  %p.6.i = phi ptr [ %spec.select111.i137, %if.end24.i ], [ %spec.select112.i, %if.end69.i ]
  %sub.ptr.rhs.cast.i140 = ptrtoint ptr %p.6.i to i32
  %sub.ptr.sub.i141 = sub i32 %sub.ptr.lhs.cast.i139, %sub.ptr.rhs.cast.i140
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n.addr.i107)
  %extract.t = trunc i64 %sub16 to i8
  %extract = lshr i64 %sub16, 8
  %extract.t185 = trunc i64 %extract to i8
  %extract186 = lshr i64 %sub16, 16
  %extract.t187 = trunc i64 %extract186 to i8
  %extract188 = lshr i64 %sub16, 24
  %extract.t189 = trunc i64 %extract188 to i8
  %extract190 = lshr i64 %sub16, 32
  %extract.t191 = trunc i64 %extract190 to i8
  %extract192 = lshr i64 %sub16, 40
  %extract.t193 = trunc i64 %extract192 to i8
  %extract194 = lshr i64 %sub16, 48
  %extract.t195 = trunc i64 %extract194 to i8
  br label %if.end18

if.end18:                                         ; preds = %run_packed_size.exit142, %run_packed_size.exit.if.end18_crit_edge
  %prev_lcn.1 = phi i32 [ %25, %run_packed_size.exit142 ], [ %prev_lcn.0, %run_packed_size.exit.if.end18_crit_edge ]
  %dlcn.0.off0 = phi i8 [ %extract.t, %run_packed_size.exit142 ], [ 0, %run_packed_size.exit.if.end18_crit_edge ]
  %dlcn.0.off8 = phi i8 [ %extract.t185, %run_packed_size.exit142 ], [ 0, %run_packed_size.exit.if.end18_crit_edge ]
  %dlcn.0.off16 = phi i8 [ %extract.t187, %run_packed_size.exit142 ], [ 0, %run_packed_size.exit.if.end18_crit_edge ]
  %dlcn.0.off24 = phi i8 [ %extract.t189, %run_packed_size.exit142 ], [ 0, %run_packed_size.exit.if.end18_crit_edge ]
  %dlcn.0.off32 = phi i8 [ %extract.t191, %run_packed_size.exit142 ], [ 0, %run_packed_size.exit.if.end18_crit_edge ]
  %dlcn.0.off40 = phi i8 [ %extract.t193, %run_packed_size.exit142 ], [ 0, %run_packed_size.exit.if.end18_crit_edge ]
  %dlcn.0.off48 = phi i8 [ %extract.t195, %run_packed_size.exit142 ], [ 0, %run_packed_size.exit.if.end18_crit_edge ]
  %dlcn.0.off56 = phi i8 [ %28, %run_packed_size.exit142 ], [ 0, %run_packed_size.exit.if.end18_crit_edge ]
  %offset_size.0 = phi i32 [ %sub.ptr.sub.i141, %run_packed_size.exit142 ], [ 0, %run_packed_size.exit.if.end18_crit_edge ]
  %57 = add i32 %packed_size.0, %offset_size.0
  %sub21 = sub i32 %.neg, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub21)
  %cmp22 = icmp slt i32 %sub21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21, i32 %sub.ptr.sub.i)
  %cmp26 = icmp slt i32 %sub21, %sub.ptr.sub.i
  %or.cond = select i1 %cmp22, i1 true, i1 %cmp26
  br i1 %or.cond, label %if.end18.out_crit_edge, label %if.end29

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end29:                                         ; preds = %if.end18
  %tobool30.not = icmp eq ptr %run_buf.addr.0, null
  br i1 %tobool30.not, label %if.end29.if.end38_crit_edge, label %if.then31

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then31:                                        ; preds = %if.end29
  %shl = shl i32 %offset_size.0, 4
  %or = or i32 %shl, %sub.ptr.sub.i
  %conv32 = trunc i32 %or to i8
  %58 = ptrtoint ptr %run_buf.addr.0 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv32, ptr %run_buf.addr.0, align 1
  %add.ptr = getelementptr i8, ptr %run_buf.addr.0, i32 1
  %conv33 = trunc i32 %sub.ptr.sub.i to i8
  %59 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.addr, align 4
  %conv34 = zext i32 %60 to i64
  %v.addr.sroa.5.0.extract.shift.i = lshr i64 %conv34, 24
  %v.addr.sroa.5.0.extract.trunc.i = trunc i64 %v.addr.sroa.5.0.extract.shift.i to i8
  %v.addr.sroa.6.0.extract.shift.i = lshr i64 %conv34, 16
  %v.addr.sroa.6.0.extract.trunc.i = trunc i64 %v.addr.sroa.6.0.extract.shift.i to i8
  %v.addr.sroa.7.0.extract.shift.i = lshr i64 %conv34, 8
  %v.addr.sroa.7.0.extract.trunc.i = trunc i64 %v.addr.sroa.7.0.extract.shift.i to i8
  %v.addr.sroa.8.0.extract.trunc.i = trunc i32 %60 to i8
  %61 = zext i8 %conv33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv33, label %if.then31.run_pack_s64.exit_crit_edge [
    i8 8, label %sw.bb.i
    i8 7, label %if.then31.sw.bb2.i_crit_edge
    i8 6, label %if.then31.sw.bb5.i_crit_edge
    i8 5, label %if.then31.sw.bb8.i_crit_edge
    i8 4, label %if.then31.sw.bb11.i_crit_edge
    i8 3, label %if.then31.sw.bb14.i_crit_edge
    i8 2, label %if.then31.sw.bb17.i_crit_edge
    i8 1, label %if.then31.sw.bb20.i_crit_edge
  ]

if.then31.sw.bb20.i_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i

if.then31.sw.bb17.i_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.then31.sw.bb14.i_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14.i

if.then31.sw.bb11.i_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i

if.then31.sw.bb8.i_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

if.then31.sw.bb5.i_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

if.then31.sw.bb2.i_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.then31.run_pack_s64.exit_crit_edge:            ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %run_pack_s64.exit

sw.bb.i:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i = getelementptr i8, ptr %run_buf.addr.0, i32 8
  %62 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx1.i, align 1
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %if.then31.sw.bb2.i_crit_edge
  %arrayidx4.i = getelementptr i8, ptr %run_buf.addr.0, i32 7
  %63 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx4.i, align 1
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb2.i, %if.then31.sw.bb5.i_crit_edge
  %arrayidx7.i = getelementptr i8, ptr %run_buf.addr.0, i32 6
  %64 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx7.i, align 1
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.bb5.i, %if.then31.sw.bb8.i_crit_edge
  %arrayidx10.i143 = getelementptr i8, ptr %run_buf.addr.0, i32 5
  %65 = ptrtoint ptr %arrayidx10.i143 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx10.i143, align 1
  br label %sw.bb11.i

sw.bb11.i:                                        ; preds = %sw.bb8.i, %if.then31.sw.bb11.i_crit_edge
  %arrayidx13.i = getelementptr i8, ptr %run_buf.addr.0, i32 4
  %66 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %v.addr.sroa.5.0.extract.trunc.i, ptr %arrayidx13.i, align 1
  br label %sw.bb14.i

sw.bb14.i:                                        ; preds = %sw.bb11.i, %if.then31.sw.bb14.i_crit_edge
  %arrayidx16.i = getelementptr i8, ptr %run_buf.addr.0, i32 3
  %67 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %v.addr.sroa.6.0.extract.trunc.i, ptr %arrayidx16.i, align 1
  br label %sw.bb17.i

sw.bb17.i:                                        ; preds = %sw.bb14.i, %if.then31.sw.bb17.i_crit_edge
  %arrayidx19.i144 = getelementptr i8, ptr %run_buf.addr.0, i32 2
  %68 = ptrtoint ptr %arrayidx19.i144 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %v.addr.sroa.7.0.extract.trunc.i, ptr %arrayidx19.i144, align 1
  br label %sw.bb20.i

sw.bb20.i:                                        ; preds = %sw.bb17.i, %if.then31.sw.bb20.i_crit_edge
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %v.addr.sroa.8.0.extract.trunc.i, ptr %add.ptr, align 1
  br label %run_pack_s64.exit

run_pack_s64.exit:                                ; preds = %sw.bb20.i, %if.then31.run_pack_s64.exit_crit_edge
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %sub.ptr.sub.i
  %conv36 = trunc i32 %offset_size.0 to i8
  %70 = zext i8 %conv36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %conv36, label %run_pack_s64.exit.run_pack_s64.exit175_crit_edge [
    i8 8, label %sw.bb.i161
    i8 7, label %run_pack_s64.exit.sw.bb2.i163_crit_edge
    i8 6, label %run_pack_s64.exit.sw.bb5.i165_crit_edge
    i8 5, label %run_pack_s64.exit.sw.bb8.i167_crit_edge
    i8 4, label %run_pack_s64.exit.sw.bb11.i169_crit_edge
    i8 3, label %run_pack_s64.exit.sw.bb14.i171_crit_edge
    i8 2, label %run_pack_s64.exit.sw.bb17.i173_crit_edge
    i8 1, label %run_pack_s64.exit.sw.bb20.i174_crit_edge
  ]

run_pack_s64.exit.sw.bb20.i174_crit_edge:         ; preds = %run_pack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i174

run_pack_s64.exit.sw.bb17.i173_crit_edge:         ; preds = %run_pack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i173

run_pack_s64.exit.sw.bb14.i171_crit_edge:         ; preds = %run_pack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14.i171

run_pack_s64.exit.sw.bb11.i169_crit_edge:         ; preds = %run_pack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i169

run_pack_s64.exit.sw.bb8.i167_crit_edge:          ; preds = %run_pack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i167

run_pack_s64.exit.sw.bb5.i165_crit_edge:          ; preds = %run_pack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i165

run_pack_s64.exit.sw.bb2.i163_crit_edge:          ; preds = %run_pack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i163

run_pack_s64.exit.run_pack_s64.exit175_crit_edge: ; preds = %run_pack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %run_pack_s64.exit175

sw.bb.i161:                                       ; preds = %run_pack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i160 = getelementptr i8, ptr %add.ptr35, i32 7
  %71 = ptrtoint ptr %arrayidx1.i160 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %dlcn.0.off56, ptr %arrayidx1.i160, align 1
  br label %sw.bb2.i163

sw.bb2.i163:                                      ; preds = %sw.bb.i161, %run_pack_s64.exit.sw.bb2.i163_crit_edge
  %arrayidx4.i162 = getelementptr i8, ptr %add.ptr35, i32 6
  %72 = ptrtoint ptr %arrayidx4.i162 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %dlcn.0.off48, ptr %arrayidx4.i162, align 1
  br label %sw.bb5.i165

sw.bb5.i165:                                      ; preds = %sw.bb2.i163, %run_pack_s64.exit.sw.bb5.i165_crit_edge
  %arrayidx7.i164 = getelementptr i8, ptr %add.ptr35, i32 5
  %73 = ptrtoint ptr %arrayidx7.i164 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %dlcn.0.off40, ptr %arrayidx7.i164, align 1
  br label %sw.bb8.i167

sw.bb8.i167:                                      ; preds = %sw.bb5.i165, %run_pack_s64.exit.sw.bb8.i167_crit_edge
  %arrayidx10.i166 = getelementptr i8, ptr %add.ptr35, i32 4
  %74 = ptrtoint ptr %arrayidx10.i166 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %dlcn.0.off32, ptr %arrayidx10.i166, align 1
  br label %sw.bb11.i169

sw.bb11.i169:                                     ; preds = %sw.bb8.i167, %run_pack_s64.exit.sw.bb11.i169_crit_edge
  %arrayidx13.i168 = getelementptr i8, ptr %add.ptr35, i32 3
  %75 = ptrtoint ptr %arrayidx13.i168 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %dlcn.0.off24, ptr %arrayidx13.i168, align 1
  br label %sw.bb14.i171

sw.bb14.i171:                                     ; preds = %sw.bb11.i169, %run_pack_s64.exit.sw.bb14.i171_crit_edge
  %arrayidx16.i170 = getelementptr i8, ptr %add.ptr35, i32 2
  %76 = ptrtoint ptr %arrayidx16.i170 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %dlcn.0.off16, ptr %arrayidx16.i170, align 1
  br label %sw.bb17.i173

sw.bb17.i173:                                     ; preds = %sw.bb14.i171, %run_pack_s64.exit.sw.bb17.i173_crit_edge
  %arrayidx19.i172 = getelementptr i8, ptr %add.ptr35, i32 1
  %77 = ptrtoint ptr %arrayidx19.i172 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %dlcn.0.off8, ptr %arrayidx19.i172, align 1
  br label %sw.bb20.i174

sw.bb20.i174:                                     ; preds = %sw.bb17.i173, %run_pack_s64.exit.sw.bb20.i174_crit_edge
  %78 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %dlcn.0.off0, ptr %add.ptr35, align 1
  br label %run_pack_s64.exit175

run_pack_s64.exit175:                             ; preds = %sw.bb20.i174, %run_pack_s64.exit.run_pack_s64.exit175_crit_edge
  %add.ptr37 = getelementptr i8, ptr %add.ptr35, i32 %offset_size.0
  br label %if.end38

if.end38:                                         ; preds = %run_pack_s64.exit175, %if.end29.if.end38_crit_edge
  %run_buf.addr.1 = phi ptr [ %add.ptr37, %run_pack_s64.exit175 ], [ null, %if.end29.if.end38_crit_edge ]
  %add40 = add i32 %57, 1
  %add41 = add i32 %add40, %sub.ptr.sub.i
  %79 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len.addr, align 4
  %81 = ptrtoint ptr %packed_vcns to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %packed_vcns, align 4
  %add42 = add i32 %82, %80
  store i32 %add42, ptr %packed_vcns, align 4
  %add43 = add i32 %add41, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %run_buf_size)
  %cmp44.not = icmp ult i32 %add43, %run_buf_size
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %add)
  %cmp46.not = icmp ult i32 %add6, %add
  %or.cond106 = select i1 %cmp44.not, i1 %cmp46.not, i1 false
  br i1 %or.cond106, label %if.end49, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end49:                                         ; preds = %if.end38
  %83 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i, align 4
  %inc = add i32 %84, 1
  store i32 %inc, ptr %i, align 4
  %85 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %inc)
  %cmp.not.i = icmp ugt i32 %86, %inc
  br i1 %cmp.not.i, label %if.end.i178, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i178:                                      ; preds = %if.end49
  %87 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %run, align 4
  %len1.i = getelementptr %struct.ntfs_run, ptr %88, i32 %inc, i32 1
  %89 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i177 = icmp eq i32 %90, 0
  br i1 %tobool.not.i177, label %if.end.i178.cleanup_crit_edge, label %if.end54

if.end.i178.cleanup_crit_edge:                    ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end54:                                         ; preds = %if.end.i178
  %add.ptr.i176 = getelementptr %struct.ntfs_run, ptr %88, i32 %inc
  %91 = ptrtoint ptr %add.ptr.i176 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i176, align 4
  %lcn10.i = getelementptr %struct.ntfs_run, ptr %88, i32 %inc, i32 2
  %93 = ptrtoint ptr %lcn10.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %lcn10.i, align 4
  %95 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %lcn, align 4
  %96 = ptrtoint ptr %len.addr to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %90, ptr %len.addr, align 4
  %cmp55.not = icmp eq i32 %add6, %92
  br i1 %cmp55.not, label %if.end54.for.cond_crit_edge, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end54.for.cond_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

out:                                              ; preds = %if.end38.out_crit_edge, %if.end18.out_crit_edge, %entry.out_crit_edge
  %run_buf.addr.2 = phi ptr [ %run_buf, %entry.out_crit_edge ], [ %run_buf.addr.1, %if.end38.out_crit_edge ], [ %run_buf.addr.0, %if.end18.out_crit_edge ]
  %packed_size.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %add41, %if.end38.out_crit_edge ], [ %packed_size.0, %if.end18.out_crit_edge ]
  %tobool59.not = icmp eq ptr %run_buf.addr.2, null
  br i1 %tobool59.not, label %out.if.end62_crit_edge, label %if.then60

out.if.end62_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then60:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %run_buf.addr.2 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %run_buf.addr.2, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %out.if.end62_crit_edge
  %add63 = add i32 %packed_size.1, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end54.cleanup_crit_edge, %if.end.i178.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %add63, %if.end62 ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end54.cleanup_crit_edge ], [ -95, %if.end49.cleanup_crit_edge ], [ -95, %if.end.i178.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @run_unpack(ptr noundef %run, ptr noundef %sbi, i32 noundef %ino, i32 noundef %svcn, i32 noundef %evcn, i32 noundef %vcn, ptr noundef %run_buf, i32 noundef %run_buf_size) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ino)
  %cmp = icmp eq i32 %ino, 0
  %add = add i32 %evcn, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %svcn)
  %cmp1 = icmp eq i32 %add, %svcn
  br i1 %cmp1, label %entry.cleanup122_crit_edge, label %if.end

entry.cleanup122_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %evcn, i32 %svcn)
  %cmp2 = icmp ult i32 %evcn, %svcn
  br i1 %cmp2, label %if.end.cleanup122_crit_edge, label %if.end4

if.end.cleanup122_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %run_buf, i32 %run_buf_size
  %conv = zext i32 %svcn to i64
  %cmp5280 = icmp ugt ptr %add.ptr, %run_buf
  %conv45 = zext i32 %add to i64
  br i1 %cmp5280, label %while.body.lr.ph, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end4
  %nbits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 3
  %magicptr = ptrtoint ptr %run to i32
  %conv78 = zext i32 %vcn to i64
  br label %while.body

while.body:                                       ; preds = %cleanup111.while.body_crit_edge, %while.body.lr.ph
  %vcn64.0289 = phi i64 [ %conv, %while.body.lr.ph ], [ %add43, %cleanup111.while.body_crit_edge ]
  %prev_lcn.0288 = phi i64 [ 0, %while.body.lr.ph ], [ %prev_lcn.2, %cleanup111.while.body_crit_edge ]
  %run_buf.addr.0281 = phi ptr [ %run_buf, %while.body.lr.ph ], [ %run_buf.addr.1, %cleanup111.while.body_crit_edge ]
  %0 = ptrtoint ptr %run_buf.addr.0281 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %run_buf.addr.0281, align 1
  %and = and i8 %1, 15
  %incdec.ptr = getelementptr i8, ptr %run_buf.addr.0281, i32 1
  %2 = lshr i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool.not = icmp eq i8 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end12

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end12:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %and)
  %cmp14 = icmp ugt i8 %and, 8
  br i1 %cmp14, label %if.end12.cleanup122_crit_edge, label %if.end17

if.end12.cleanup122_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.end17:                                         ; preds = %if.end12
  %conv13 = zext i8 %and to i32
  %trunc = trunc i8 %1 to i4
  %3 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.3)
  switch i4 %trunc, label %if.end17.run_unpack_s64.exit_crit_edge [
    i4 -8, label %sw.bb.i
    i4 7, label %if.end17.sw.bb2.i_crit_edge
    i4 6, label %if.end17.sw.bb5.i_crit_edge
    i4 5, label %if.end17.sw.bb8.i_crit_edge
    i4 4, label %if.end17.sw.bb11.i_crit_edge
    i4 3, label %if.end17.sw.bb14.i_crit_edge
    i4 2, label %if.end17.sw.bb17.i_crit_edge
    i4 1, label %if.end17.sw.bb20.i_crit_edge
  ]

if.end17.sw.bb20.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i

if.end17.sw.bb17.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end17.sw.bb14.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14.i

if.end17.sw.bb11.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i

if.end17.sw.bb8.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

if.end17.sw.bb5.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

if.end17.sw.bb2.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end17.run_unpack_s64.exit_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %run_unpack_s64.exit

sw.bb.i:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %run_buf.addr.0281, i32 8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %if.end17.sw.bb2.i_crit_edge
  %v.addr.sroa.0.0.i = phi i8 [ 0, %if.end17.sw.bb2.i_crit_edge ], [ %5, %sw.bb.i ]
  %arrayidx3.i = getelementptr i8, ptr %run_buf.addr.0281, i32 7
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb2.i, %if.end17.sw.bb5.i_crit_edge
  %v.addr.sroa.3.0.i = phi i8 [ 0, %if.end17.sw.bb5.i_crit_edge ], [ %7, %sw.bb2.i ]
  %v.addr.sroa.0.1.i = phi i8 [ 0, %if.end17.sw.bb5.i_crit_edge ], [ %v.addr.sroa.0.0.i, %sw.bb2.i ]
  %arrayidx6.i = getelementptr i8, ptr %run_buf.addr.0281, i32 6
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6.i, align 1
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.bb5.i, %if.end17.sw.bb8.i_crit_edge
  %v.addr.sroa.4.0.i = phi i8 [ 0, %if.end17.sw.bb8.i_crit_edge ], [ %9, %sw.bb5.i ]
  %v.addr.sroa.3.1.i = phi i8 [ 0, %if.end17.sw.bb8.i_crit_edge ], [ %v.addr.sroa.3.0.i, %sw.bb5.i ]
  %v.addr.sroa.0.2.i = phi i8 [ 0, %if.end17.sw.bb8.i_crit_edge ], [ %v.addr.sroa.0.1.i, %sw.bb5.i ]
  %arrayidx9.i = getelementptr i8, ptr %run_buf.addr.0281, i32 5
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9.i, align 1
  br label %sw.bb11.i

sw.bb11.i:                                        ; preds = %sw.bb8.i, %if.end17.sw.bb11.i_crit_edge
  %v.addr.sroa.5.0.i = phi i8 [ 0, %if.end17.sw.bb11.i_crit_edge ], [ %11, %sw.bb8.i ]
  %v.addr.sroa.4.1.i = phi i8 [ 0, %if.end17.sw.bb11.i_crit_edge ], [ %v.addr.sroa.4.0.i, %sw.bb8.i ]
  %v.addr.sroa.3.2.i = phi i8 [ 0, %if.end17.sw.bb11.i_crit_edge ], [ %v.addr.sroa.3.1.i, %sw.bb8.i ]
  %v.addr.sroa.0.3.i = phi i8 [ 0, %if.end17.sw.bb11.i_crit_edge ], [ %v.addr.sroa.0.2.i, %sw.bb8.i ]
  %arrayidx12.i = getelementptr i8, ptr %run_buf.addr.0281, i32 4
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12.i, align 1
  br label %sw.bb14.i

sw.bb14.i:                                        ; preds = %sw.bb11.i, %if.end17.sw.bb14.i_crit_edge
  %v.addr.sroa.6.0.i = phi i8 [ 0, %if.end17.sw.bb14.i_crit_edge ], [ %13, %sw.bb11.i ]
  %v.addr.sroa.5.1.i = phi i8 [ 0, %if.end17.sw.bb14.i_crit_edge ], [ %v.addr.sroa.5.0.i, %sw.bb11.i ]
  %v.addr.sroa.4.2.i = phi i8 [ 0, %if.end17.sw.bb14.i_crit_edge ], [ %v.addr.sroa.4.1.i, %sw.bb11.i ]
  %v.addr.sroa.3.3.i = phi i8 [ 0, %if.end17.sw.bb14.i_crit_edge ], [ %v.addr.sroa.3.2.i, %sw.bb11.i ]
  %v.addr.sroa.0.4.i = phi i8 [ 0, %if.end17.sw.bb14.i_crit_edge ], [ %v.addr.sroa.0.3.i, %sw.bb11.i ]
  %arrayidx15.i = getelementptr i8, ptr %run_buf.addr.0281, i32 3
  %14 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15.i, align 1
  br label %sw.bb17.i

sw.bb17.i:                                        ; preds = %sw.bb14.i, %if.end17.sw.bb17.i_crit_edge
  %v.addr.sroa.7.0.i = phi i8 [ 0, %if.end17.sw.bb17.i_crit_edge ], [ %15, %sw.bb14.i ]
  %v.addr.sroa.6.1.i = phi i8 [ 0, %if.end17.sw.bb17.i_crit_edge ], [ %v.addr.sroa.6.0.i, %sw.bb14.i ]
  %v.addr.sroa.5.2.i = phi i8 [ 0, %if.end17.sw.bb17.i_crit_edge ], [ %v.addr.sroa.5.1.i, %sw.bb14.i ]
  %v.addr.sroa.4.3.i = phi i8 [ 0, %if.end17.sw.bb17.i_crit_edge ], [ %v.addr.sroa.4.2.i, %sw.bb14.i ]
  %v.addr.sroa.3.4.i = phi i8 [ 0, %if.end17.sw.bb17.i_crit_edge ], [ %v.addr.sroa.3.3.i, %sw.bb14.i ]
  %v.addr.sroa.0.5.i = phi i8 [ 0, %if.end17.sw.bb17.i_crit_edge ], [ %v.addr.sroa.0.4.i, %sw.bb14.i ]
  %arrayidx18.i = getelementptr i8, ptr %run_buf.addr.0281, i32 2
  %16 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18.i, align 1
  br label %sw.bb20.i

sw.bb20.i:                                        ; preds = %sw.bb17.i, %if.end17.sw.bb20.i_crit_edge
  %v.addr.sroa.8.0.i = phi i8 [ 0, %if.end17.sw.bb20.i_crit_edge ], [ %17, %sw.bb17.i ]
  %v.addr.sroa.7.1.i = phi i8 [ 0, %if.end17.sw.bb20.i_crit_edge ], [ %v.addr.sroa.7.0.i, %sw.bb17.i ]
  %v.addr.sroa.6.2.i = phi i8 [ 0, %if.end17.sw.bb20.i_crit_edge ], [ %v.addr.sroa.6.1.i, %sw.bb17.i ]
  %v.addr.sroa.5.3.i = phi i8 [ 0, %if.end17.sw.bb20.i_crit_edge ], [ %v.addr.sroa.5.2.i, %sw.bb17.i ]
  %v.addr.sroa.4.4.i = phi i8 [ 0, %if.end17.sw.bb20.i_crit_edge ], [ %v.addr.sroa.4.3.i, %sw.bb17.i ]
  %v.addr.sroa.3.5.i = phi i8 [ 0, %if.end17.sw.bb20.i_crit_edge ], [ %v.addr.sroa.3.4.i, %sw.bb17.i ]
  %v.addr.sroa.0.6.i = phi i8 [ 0, %if.end17.sw.bb20.i_crit_edge ], [ %v.addr.sroa.0.5.i, %sw.bb17.i ]
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr, align 1
  br label %run_unpack_s64.exit

run_unpack_s64.exit:                              ; preds = %sw.bb20.i, %if.end17.run_unpack_s64.exit_crit_edge
  %v.addr.sroa.9.0.i = phi i8 [ 0, %if.end17.run_unpack_s64.exit_crit_edge ], [ %19, %sw.bb20.i ]
  %v.addr.sroa.8.1.i = phi i8 [ 0, %if.end17.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.8.0.i, %sw.bb20.i ]
  %v.addr.sroa.7.2.i = phi i8 [ 0, %if.end17.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.7.1.i, %sw.bb20.i ]
  %v.addr.sroa.6.3.i = phi i8 [ 0, %if.end17.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.6.2.i, %sw.bb20.i ]
  %v.addr.sroa.5.4.i = phi i8 [ 0, %if.end17.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.5.3.i, %sw.bb20.i ]
  %v.addr.sroa.4.5.i = phi i8 [ 0, %if.end17.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.4.4.i, %sw.bb20.i ]
  %v.addr.sroa.3.6.i = phi i8 [ 0, %if.end17.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.3.5.i, %sw.bb20.i ]
  %v.addr.sroa.0.7.i = phi i8 [ 0, %if.end17.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.0.6.i, %sw.bb20.i ]
  %v.addr.sroa.9.0.insert.ext.i = zext i8 %v.addr.sroa.9.0.i to i64
  %v.addr.sroa.8.0.insert.ext.i = zext i8 %v.addr.sroa.8.1.i to i64
  %v.addr.sroa.8.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.8.0.insert.ext.i, 8
  %v.addr.sroa.8.0.insert.insert.i = or i64 %v.addr.sroa.8.0.insert.shift.i, %v.addr.sroa.9.0.insert.ext.i
  %v.addr.sroa.7.0.insert.ext.i = zext i8 %v.addr.sroa.7.2.i to i64
  %v.addr.sroa.7.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.7.0.insert.ext.i, 16
  %v.addr.sroa.7.0.insert.insert.i = or i64 %v.addr.sroa.8.0.insert.insert.i, %v.addr.sroa.7.0.insert.shift.i
  %v.addr.sroa.6.0.insert.ext.i = zext i8 %v.addr.sroa.6.3.i to i64
  %v.addr.sroa.6.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.6.0.insert.ext.i, 24
  %v.addr.sroa.6.0.insert.insert.i = or i64 %v.addr.sroa.7.0.insert.insert.i, %v.addr.sroa.6.0.insert.shift.i
  %v.addr.sroa.5.0.insert.ext.i = zext i8 %v.addr.sroa.5.4.i to i64
  %v.addr.sroa.5.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.5.0.insert.ext.i, 32
  %v.addr.sroa.4.0.insert.ext.i = zext i8 %v.addr.sroa.4.5.i to i64
  %v.addr.sroa.4.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.4.0.insert.ext.i, 40
  %v.addr.sroa.4.0.insert.mask.i = or i64 %v.addr.sroa.6.0.insert.insert.i, %v.addr.sroa.5.0.insert.shift.i
  %v.addr.sroa.3.0.insert.ext.i = zext i8 %v.addr.sroa.3.6.i to i64
  %v.addr.sroa.3.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.3.0.insert.ext.i, 48
  %v.addr.sroa.0.0.insert.ext.i = zext i8 %v.addr.sroa.0.7.i to i64
  %v.addr.sroa.0.0.insert.shift.i = shl nuw i64 %v.addr.sroa.0.0.insert.ext.i, 56
  %v.addr.sroa.3.0.insert.mask.masked.i = or i64 %v.addr.sroa.4.0.insert.mask.i, %v.addr.sroa.4.0.insert.shift.i
  %v.addr.sroa.0.0.insert.mask.i = or i64 %v.addr.sroa.3.0.insert.mask.masked.i, %v.addr.sroa.3.0.insert.shift.i
  %v.addr.sroa.0.0.insert.insert.i = or i64 %v.addr.sroa.0.0.insert.mask.i, %v.addr.sroa.0.0.insert.shift.i
  %add.ptr19 = getelementptr i8, ptr %incdec.ptr, i32 %conv13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %v.addr.sroa.0.0.insert.insert.i)
  %tobool20.not = icmp eq i64 %v.addr.sroa.0.0.insert.insert.i, 0
  br i1 %tobool20.not, label %run_unpack_s64.exit.cleanup122_crit_edge, label %if.end22

run_unpack_s64.exit.cleanup122_crit_edge:         ; preds = %run_unpack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.end22:                                         ; preds = %run_unpack_s64.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %tobool23.not = icmp ult i8 %1, 16
  br i1 %tobool23.not, label %if.end22.if.end42_crit_edge, label %if.else

if.end22.if.end42_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %1)
  %cmp26 = icmp ult i8 %1, -112
  br i1 %cmp26, label %if.then28, label %if.else.cleanup122_crit_edge

if.else.cleanup122_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.then28:                                        ; preds = %if.else
  %conv25 = zext i8 %2 to i32
  %sub = add nsw i32 %conv25, -1
  %arrayidx = getelementptr i8, ptr %add.ptr19, i32 %sub
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %.lobit = ashr i8 %21, 7
  %trunc277 = trunc i8 %2 to i4
  %22 = zext i4 %trunc277 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.4)
  switch i4 %trunc277, label %if.then28.run_unpack_s64.exit263_crit_edge [
    i4 -8, label %sw.bb.i191
    i4 7, label %if.then28.sw.bb2.i194_crit_edge
    i4 6, label %if.then28.sw.bb5.i198_crit_edge
    i4 5, label %if.then28.sw.bb8.i203_crit_edge
    i4 4, label %if.then28.sw.bb11.i209_crit_edge
    i4 3, label %if.then28.sw.bb14.i216_crit_edge
    i4 2, label %if.then28.sw.bb17.i224_crit_edge
    i4 1, label %if.then28.sw.bb20.i232_crit_edge
  ]

if.then28.sw.bb20.i232_crit_edge:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i232

if.then28.sw.bb17.i224_crit_edge:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i224

if.then28.sw.bb14.i216_crit_edge:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14.i216

if.then28.sw.bb11.i209_crit_edge:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i209

if.then28.sw.bb8.i203_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i203

if.then28.sw.bb5.i198_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i198

if.then28.sw.bb2.i194_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i194

if.then28.run_unpack_s64.exit263_crit_edge:       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %run_unpack_s64.exit263

sw.bb.i191:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i190 = getelementptr i8, ptr %add.ptr19, i32 7
  %23 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i190, align 1
  br label %sw.bb2.i194

sw.bb2.i194:                                      ; preds = %sw.bb.i191, %if.then28.sw.bb2.i194_crit_edge
  %v.addr.sroa.0.0.i192 = phi i8 [ %.lobit, %if.then28.sw.bb2.i194_crit_edge ], [ %24, %sw.bb.i191 ]
  %arrayidx3.i193 = getelementptr i8, ptr %add.ptr19, i32 6
  %25 = ptrtoint ptr %arrayidx3.i193 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx3.i193, align 1
  br label %sw.bb5.i198

sw.bb5.i198:                                      ; preds = %sw.bb2.i194, %if.then28.sw.bb5.i198_crit_edge
  %v.addr.sroa.3.0.i195 = phi i8 [ %.lobit, %if.then28.sw.bb5.i198_crit_edge ], [ %26, %sw.bb2.i194 ]
  %v.addr.sroa.0.1.i196 = phi i8 [ %.lobit, %if.then28.sw.bb5.i198_crit_edge ], [ %v.addr.sroa.0.0.i192, %sw.bb2.i194 ]
  %arrayidx6.i197 = getelementptr i8, ptr %add.ptr19, i32 5
  %27 = ptrtoint ptr %arrayidx6.i197 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx6.i197, align 1
  br label %sw.bb8.i203

sw.bb8.i203:                                      ; preds = %sw.bb5.i198, %if.then28.sw.bb8.i203_crit_edge
  %v.addr.sroa.4.0.i199 = phi i8 [ %.lobit, %if.then28.sw.bb8.i203_crit_edge ], [ %28, %sw.bb5.i198 ]
  %v.addr.sroa.3.1.i200 = phi i8 [ %.lobit, %if.then28.sw.bb8.i203_crit_edge ], [ %v.addr.sroa.3.0.i195, %sw.bb5.i198 ]
  %v.addr.sroa.0.2.i201 = phi i8 [ %.lobit, %if.then28.sw.bb8.i203_crit_edge ], [ %v.addr.sroa.0.1.i196, %sw.bb5.i198 ]
  %arrayidx9.i202 = getelementptr i8, ptr %add.ptr19, i32 4
  %29 = ptrtoint ptr %arrayidx9.i202 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx9.i202, align 1
  br label %sw.bb11.i209

sw.bb11.i209:                                     ; preds = %sw.bb8.i203, %if.then28.sw.bb11.i209_crit_edge
  %v.addr.sroa.5.0.i204 = phi i8 [ %.lobit, %if.then28.sw.bb11.i209_crit_edge ], [ %30, %sw.bb8.i203 ]
  %v.addr.sroa.4.1.i205 = phi i8 [ %.lobit, %if.then28.sw.bb11.i209_crit_edge ], [ %v.addr.sroa.4.0.i199, %sw.bb8.i203 ]
  %v.addr.sroa.3.2.i206 = phi i8 [ %.lobit, %if.then28.sw.bb11.i209_crit_edge ], [ %v.addr.sroa.3.1.i200, %sw.bb8.i203 ]
  %v.addr.sroa.0.3.i207 = phi i8 [ %.lobit, %if.then28.sw.bb11.i209_crit_edge ], [ %v.addr.sroa.0.2.i201, %sw.bb8.i203 ]
  %arrayidx12.i208 = getelementptr i8, ptr %add.ptr19, i32 3
  %31 = ptrtoint ptr %arrayidx12.i208 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx12.i208, align 1
  br label %sw.bb14.i216

sw.bb14.i216:                                     ; preds = %sw.bb11.i209, %if.then28.sw.bb14.i216_crit_edge
  %v.addr.sroa.6.0.i210 = phi i8 [ %.lobit, %if.then28.sw.bb14.i216_crit_edge ], [ %32, %sw.bb11.i209 ]
  %v.addr.sroa.5.1.i211 = phi i8 [ %.lobit, %if.then28.sw.bb14.i216_crit_edge ], [ %v.addr.sroa.5.0.i204, %sw.bb11.i209 ]
  %v.addr.sroa.4.2.i212 = phi i8 [ %.lobit, %if.then28.sw.bb14.i216_crit_edge ], [ %v.addr.sroa.4.1.i205, %sw.bb11.i209 ]
  %v.addr.sroa.3.3.i213 = phi i8 [ %.lobit, %if.then28.sw.bb14.i216_crit_edge ], [ %v.addr.sroa.3.2.i206, %sw.bb11.i209 ]
  %v.addr.sroa.0.4.i214 = phi i8 [ %.lobit, %if.then28.sw.bb14.i216_crit_edge ], [ %v.addr.sroa.0.3.i207, %sw.bb11.i209 ]
  %arrayidx15.i215 = getelementptr i8, ptr %add.ptr19, i32 2
  %33 = ptrtoint ptr %arrayidx15.i215 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx15.i215, align 1
  br label %sw.bb17.i224

sw.bb17.i224:                                     ; preds = %sw.bb14.i216, %if.then28.sw.bb17.i224_crit_edge
  %v.addr.sroa.7.0.i217 = phi i8 [ %.lobit, %if.then28.sw.bb17.i224_crit_edge ], [ %34, %sw.bb14.i216 ]
  %v.addr.sroa.6.1.i218 = phi i8 [ %.lobit, %if.then28.sw.bb17.i224_crit_edge ], [ %v.addr.sroa.6.0.i210, %sw.bb14.i216 ]
  %v.addr.sroa.5.2.i219 = phi i8 [ %.lobit, %if.then28.sw.bb17.i224_crit_edge ], [ %v.addr.sroa.5.1.i211, %sw.bb14.i216 ]
  %v.addr.sroa.4.3.i220 = phi i8 [ %.lobit, %if.then28.sw.bb17.i224_crit_edge ], [ %v.addr.sroa.4.2.i212, %sw.bb14.i216 ]
  %v.addr.sroa.3.4.i221 = phi i8 [ %.lobit, %if.then28.sw.bb17.i224_crit_edge ], [ %v.addr.sroa.3.3.i213, %sw.bb14.i216 ]
  %v.addr.sroa.0.5.i222 = phi i8 [ %.lobit, %if.then28.sw.bb17.i224_crit_edge ], [ %v.addr.sroa.0.4.i214, %sw.bb14.i216 ]
  %arrayidx18.i223 = getelementptr i8, ptr %add.ptr19, i32 1
  %35 = ptrtoint ptr %arrayidx18.i223 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx18.i223, align 1
  br label %sw.bb20.i232

sw.bb20.i232:                                     ; preds = %sw.bb17.i224, %if.then28.sw.bb20.i232_crit_edge
  %v.addr.sroa.8.0.i225 = phi i8 [ %.lobit, %if.then28.sw.bb20.i232_crit_edge ], [ %36, %sw.bb17.i224 ]
  %v.addr.sroa.7.1.i226 = phi i8 [ %.lobit, %if.then28.sw.bb20.i232_crit_edge ], [ %v.addr.sroa.7.0.i217, %sw.bb17.i224 ]
  %v.addr.sroa.6.2.i227 = phi i8 [ %.lobit, %if.then28.sw.bb20.i232_crit_edge ], [ %v.addr.sroa.6.1.i218, %sw.bb17.i224 ]
  %v.addr.sroa.5.3.i228 = phi i8 [ %.lobit, %if.then28.sw.bb20.i232_crit_edge ], [ %v.addr.sroa.5.2.i219, %sw.bb17.i224 ]
  %v.addr.sroa.4.4.i229 = phi i8 [ %.lobit, %if.then28.sw.bb20.i232_crit_edge ], [ %v.addr.sroa.4.3.i220, %sw.bb17.i224 ]
  %v.addr.sroa.3.5.i230 = phi i8 [ %.lobit, %if.then28.sw.bb20.i232_crit_edge ], [ %v.addr.sroa.3.4.i221, %sw.bb17.i224 ]
  %v.addr.sroa.0.6.i231 = phi i8 [ %.lobit, %if.then28.sw.bb20.i232_crit_edge ], [ %v.addr.sroa.0.5.i222, %sw.bb17.i224 ]
  %37 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr19, align 1
  br label %run_unpack_s64.exit263

run_unpack_s64.exit263:                           ; preds = %sw.bb20.i232, %if.then28.run_unpack_s64.exit263_crit_edge
  %v.addr.sroa.9.0.i233 = phi i8 [ %.lobit, %if.then28.run_unpack_s64.exit263_crit_edge ], [ %38, %sw.bb20.i232 ]
  %v.addr.sroa.8.1.i234 = phi i8 [ %.lobit, %if.then28.run_unpack_s64.exit263_crit_edge ], [ %v.addr.sroa.8.0.i225, %sw.bb20.i232 ]
  %v.addr.sroa.7.2.i235 = phi i8 [ %.lobit, %if.then28.run_unpack_s64.exit263_crit_edge ], [ %v.addr.sroa.7.1.i226, %sw.bb20.i232 ]
  %v.addr.sroa.6.3.i236 = phi i8 [ %.lobit, %if.then28.run_unpack_s64.exit263_crit_edge ], [ %v.addr.sroa.6.2.i227, %sw.bb20.i232 ]
  %v.addr.sroa.5.4.i237 = phi i8 [ %.lobit, %if.then28.run_unpack_s64.exit263_crit_edge ], [ %v.addr.sroa.5.3.i228, %sw.bb20.i232 ]
  %v.addr.sroa.4.5.i238 = phi i8 [ %.lobit, %if.then28.run_unpack_s64.exit263_crit_edge ], [ %v.addr.sroa.4.4.i229, %sw.bb20.i232 ]
  %v.addr.sroa.3.6.i239 = phi i8 [ %.lobit, %if.then28.run_unpack_s64.exit263_crit_edge ], [ %v.addr.sroa.3.5.i230, %sw.bb20.i232 ]
  %v.addr.sroa.0.7.i240 = phi i8 [ %.lobit, %if.then28.run_unpack_s64.exit263_crit_edge ], [ %v.addr.sroa.0.6.i231, %sw.bb20.i232 ]
  %v.addr.sroa.9.0.insert.ext.i241 = zext i8 %v.addr.sroa.9.0.i233 to i64
  %v.addr.sroa.8.0.insert.ext.i242 = zext i8 %v.addr.sroa.8.1.i234 to i64
  %v.addr.sroa.8.0.insert.shift.i243 = shl nuw nsw i64 %v.addr.sroa.8.0.insert.ext.i242, 8
  %v.addr.sroa.8.0.insert.insert.i244 = or i64 %v.addr.sroa.8.0.insert.shift.i243, %v.addr.sroa.9.0.insert.ext.i241
  %v.addr.sroa.7.0.insert.ext.i245 = zext i8 %v.addr.sroa.7.2.i235 to i64
  %v.addr.sroa.7.0.insert.shift.i246 = shl nuw nsw i64 %v.addr.sroa.7.0.insert.ext.i245, 16
  %v.addr.sroa.7.0.insert.insert.i247 = or i64 %v.addr.sroa.8.0.insert.insert.i244, %v.addr.sroa.7.0.insert.shift.i246
  %v.addr.sroa.6.0.insert.ext.i248 = zext i8 %v.addr.sroa.6.3.i236 to i64
  %v.addr.sroa.6.0.insert.shift.i249 = shl nuw nsw i64 %v.addr.sroa.6.0.insert.ext.i248, 24
  %v.addr.sroa.6.0.insert.insert.i250 = or i64 %v.addr.sroa.7.0.insert.insert.i247, %v.addr.sroa.6.0.insert.shift.i249
  %v.addr.sroa.5.0.insert.ext.i251 = zext i8 %v.addr.sroa.5.4.i237 to i64
  %v.addr.sroa.5.0.insert.shift.i252 = shl nuw nsw i64 %v.addr.sroa.5.0.insert.ext.i251, 32
  %v.addr.sroa.4.0.insert.ext.i253 = zext i8 %v.addr.sroa.4.5.i238 to i64
  %v.addr.sroa.4.0.insert.shift.i254 = shl nuw nsw i64 %v.addr.sroa.4.0.insert.ext.i253, 40
  %v.addr.sroa.4.0.insert.mask.i255 = or i64 %v.addr.sroa.6.0.insert.insert.i250, %v.addr.sroa.5.0.insert.shift.i252
  %v.addr.sroa.3.0.insert.ext.i256 = zext i8 %v.addr.sroa.3.6.i239 to i64
  %v.addr.sroa.3.0.insert.shift.i257 = shl nuw nsw i64 %v.addr.sroa.3.0.insert.ext.i256, 48
  %v.addr.sroa.0.0.insert.ext.i258 = zext i8 %v.addr.sroa.0.7.i240 to i64
  %v.addr.sroa.0.0.insert.shift.i259 = shl nuw i64 %v.addr.sroa.0.0.insert.ext.i258, 56
  %v.addr.sroa.3.0.insert.mask.masked.i260 = or i64 %v.addr.sroa.4.0.insert.mask.i255, %v.addr.sroa.4.0.insert.shift.i254
  %v.addr.sroa.0.0.insert.mask.i261 = or i64 %v.addr.sroa.3.0.insert.mask.masked.i260, %v.addr.sroa.3.0.insert.shift.i257
  %v.addr.sroa.0.0.insert.insert.i262 = or i64 %v.addr.sroa.0.0.insert.mask.i261, %v.addr.sroa.0.0.insert.shift.i259
  %add.ptr35 = getelementptr i8, ptr %add.ptr19, i32 %conv25
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %v.addr.sroa.0.0.insert.insert.i262)
  %tobool36.not = icmp eq i64 %v.addr.sroa.0.0.insert.insert.i262, 0
  %add39 = add i64 %v.addr.sroa.0.0.insert.insert.i262, %prev_lcn.0288
  br i1 %tobool36.not, label %run_unpack_s64.exit263.cleanup122_crit_edge, label %run_unpack_s64.exit263.if.end42_crit_edge

run_unpack_s64.exit263.if.end42_crit_edge:        ; preds = %run_unpack_s64.exit263
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

run_unpack_s64.exit263.cleanup122_crit_edge:      ; preds = %run_unpack_s64.exit263
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.end42:                                         ; preds = %run_unpack_s64.exit263.if.end42_crit_edge, %if.end22.if.end42_crit_edge
  %run_buf.addr.1 = phi ptr [ %add.ptr35, %run_unpack_s64.exit263.if.end42_crit_edge ], [ %add.ptr19, %if.end22.if.end42_crit_edge ]
  %prev_lcn.2 = phi i64 [ %add39, %run_unpack_s64.exit263.if.end42_crit_edge ], [ %prev_lcn.0288, %if.end22.if.end42_crit_edge ]
  %lcn.2 = phi i64 [ %add39, %run_unpack_s64.exit263.if.end42_crit_edge ], [ -1, %if.end22.if.end42_crit_edge ]
  %add43 = add i64 %v.addr.sroa.0.0.insert.insert.i, %vcn64.0289
  call void @__sanitizer_cov_trace_cmp8(i64 %add43, i64 %conv45)
  %cmp46 = icmp ugt i64 %add43, %conv45
  br i1 %cmp46, label %if.end42.cleanup122_crit_edge, label %lor.lhs.false

if.end42.cleanup122_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

lor.lhs.false:                                    ; preds = %if.end42
  %add52 = add i64 %lcn.2, %v.addr.sroa.0.0.insert.insert.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add52)
  %cmp53 = icmp ugt i64 %add52, 4294967296
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sbi, align 8
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %40, ptr noundef nonnull @.str.1, i64 noundef %vcn64.0289, i64 noundef %lcn.2, i64 noundef %v.addr.sroa.0.0.insert.insert.i) #9
  br label %cleanup122

if.end56:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %lcn.2)
  %cmp57.not = icmp eq i64 %lcn.2, -1
  br i1 %cmp57.not, label %if.end56.if.end64_crit_edge, label %land.lhs.true

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end56
  %41 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nbits, align 8
  %conv60 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add52, i64 %conv60)
  %cmp61 = icmp ugt i64 %add52, %conv60
  br i1 %cmp61, label %land.lhs.true.cleanup122_crit_edge, label %land.lhs.true.if.end64_crit_edge

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

land.lhs.true.cleanup122_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.end64:                                         ; preds = %land.lhs.true.if.end64_crit_edge, %if.end56.if.end64_crit_edge
  %43 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %magicptr, label %if.else77 [
    i32 0, label %if.end64.cleanup111_crit_edge
    i32 1, label %if.then70
  ]

if.end64.cleanup111_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup111

if.then70:                                        ; preds = %if.end64
  br i1 %cmp57.not, label %if.then70.cleanup111_crit_edge, label %if.then73

if.then70.cleanup111_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup111

if.then73:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %conv74 = trunc i64 %lcn.2 to i32
  %conv75 = trunc i64 %v.addr.sroa.6.0.insert.insert.i to i32
  tail call void @mark_as_free_ex(ptr noundef %sbi, i32 noundef %conv74, i32 noundef %conv75, i1 noundef zeroext true) #9
  br label %cleanup111

if.else77:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_cmp8(i64 %vcn64.0289, i64 %conv78)
  %cmp79.not = icmp ult i64 %vcn64.0289, %conv78
  br i1 %cmp79.not, label %if.else89, label %if.then81

if.then81:                                        ; preds = %if.else77
  %conv82 = trunc i64 %vcn64.0289 to i32
  %conv83 = trunc i64 %lcn.2 to i32
  %conv84 = trunc i64 %v.addr.sroa.6.0.insert.insert.i to i32
  %call86 = tail call zeroext i1 @run_add_entry(ptr noundef nonnull %run, i32 noundef %conv82, i32 noundef %conv83, i32 noundef %conv84, i1 noundef zeroext %cmp)
  br i1 %call86, label %if.then81.cleanup111_crit_edge, label %if.then81.cleanup122_crit_edge

if.then81.cleanup122_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.then81.cleanup111_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup111

if.else89:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_cmp8(i64 %add43, i64 %conv78)
  %cmp91 = icmp ugt i64 %add43, %conv78
  br i1 %cmp91, label %if.then93, label %if.else89.cleanup111_crit_edge

if.else89.cleanup111_crit_edge:                   ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup111

if.then93:                                        ; preds = %if.else89
  %sub95 = sub i64 %conv78, %vcn64.0289
  %add96 = add i64 %lcn.2, %sub95
  %conv97 = trunc i64 %add96 to i32
  %sub98 = sub i64 %v.addr.sroa.6.0.insert.insert.i, %sub95
  %conv99 = trunc i64 %sub98 to i32
  %call101 = tail call zeroext i1 @run_add_entry(ptr noundef nonnull %run, i32 noundef %vcn, i32 noundef %conv97, i32 noundef %conv99, i1 noundef zeroext %cmp)
  br i1 %call101, label %if.then93.cleanup111_crit_edge, label %if.then93.cleanup122_crit_edge

if.then93.cleanup122_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.then93.cleanup111_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup111

cleanup111:                                       ; preds = %if.then93.cleanup111_crit_edge, %if.else89.cleanup111_crit_edge, %if.then81.cleanup111_crit_edge, %if.then73, %if.then70.cleanup111_crit_edge, %if.end64.cleanup111_crit_edge
  %cmp5 = icmp ult ptr %run_buf.addr.1, %add.ptr
  br i1 %cmp5, label %cleanup111.while.body_crit_edge, label %cleanup111.while.end_crit_edge

cleanup111.while.end_crit_edge:                   ; preds = %cleanup111
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup111.while.body_crit_edge:                  ; preds = %cleanup111
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup111.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end4.while.end_crit_edge
  %vcn64.0.lcssa = phi i64 [ %conv, %if.end4.while.end_crit_edge ], [ %vcn64.0289, %while.body.while.end_crit_edge ], [ %add43, %cleanup111.while.end_crit_edge ]
  %run_buf.addr.3 = phi ptr [ %run_buf, %if.end4.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ], [ %run_buf.addr.1, %cleanup111.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %vcn64.0.lcssa, i64 %conv45)
  %cmp118.not = icmp eq i64 %vcn64.0.lcssa, %conv45
  br i1 %cmp118.not, label %if.end121, label %while.end.cleanup122_crit_edge

while.end.cleanup122_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup122

if.end121:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast = ptrtoint ptr %run_buf.addr.3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %run_buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup122

cleanup122:                                       ; preds = %if.end121, %while.end.cleanup122_crit_edge, %if.then93.cleanup122_crit_edge, %if.then81.cleanup122_crit_edge, %land.lhs.true.cleanup122_crit_edge, %if.then55, %if.end42.cleanup122_crit_edge, %run_unpack_s64.exit263.cleanup122_crit_edge, %if.else.cleanup122_crit_edge, %run_unpack_s64.exit.cleanup122_crit_edge, %if.end12.cleanup122_crit_edge, %if.end.cleanup122_crit_edge, %entry.cleanup122_crit_edge
  %retval.6 = phi i32 [ %sub.ptr.sub, %if.end121 ], [ 0, %entry.cleanup122_crit_edge ], [ -22, %if.end.cleanup122_crit_edge ], [ -22, %while.end.cleanup122_crit_edge ], [ -95, %if.then55 ], [ -12, %if.then93.cleanup122_crit_edge ], [ -22, %run_unpack_s64.exit263.cleanup122_crit_edge ], [ -22, %if.end12.cleanup122_crit_edge ], [ -22, %run_unpack_s64.exit.cleanup122_crit_edge ], [ -22, %if.else.cleanup122_crit_edge ], [ -22, %if.end42.cleanup122_crit_edge ], [ -22, %land.lhs.true.cleanup122_crit_edge ], [ -12, %if.then81.cleanup122_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_as_free_ex(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @run_unpack_ex(ptr noundef %run, ptr noundef %sbi, i32 noundef %ino, i32 noundef %svcn, i32 noundef %evcn, i32 noundef %vcn, ptr noundef %run_buf, i32 noundef %run_buf_size) local_unnamed_addr #4 align 64 {
entry:
  %lcn = alloca i32, align 4
  %len = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #9
  %0 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lcn, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4, !annotation !15
  %call = tail call i32 @run_unpack(ptr noundef %run, ptr noundef %sbi, i32 noundef %ino, i32 noundef %svcn, i32 noundef %evcn, i32 noundef %vcn, ptr noundef %run_buf, i32 noundef %run_buf_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup70_crit_edge, label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.end:                                           ; preds = %entry
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28
  %3 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %used, align 8
  %tobool.not = icmp eq ptr %4, null
  %tobool1.not = icmp eq ptr %run, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %cmp3 = icmp eq ptr %run, inttoptr (i32 1 to ptr)
  %or.cond113 = or i1 %cmp3, %or.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ino)
  %cmp6 = icmp eq i32 %ino, 8
  %or.cond114 = or i1 %cmp6, %or.cond113
  br i1 %or.cond114, label %if.end.cleanup70_crit_edge, label %if.end8

if.end.cleanup70_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.end8:                                          ; preds = %if.end
  %call11 = call zeroext i1 @run_lookup_entry(ptr noundef nonnull %run, i32 noundef %svcn, ptr noundef nonnull %lcn, ptr noundef nonnull %len, ptr noundef nonnull %index)
  call void @__sanitizer_cov_trace_cmp4(i32 %svcn, i32 %evcn)
  %cmp12.not140 = icmp ugt i32 %svcn, %evcn
  %ok.0.in.not141 = xor i1 %call11, true
  %brmerge142 = select i1 %cmp12.not140, i1 true, i1 %ok.0.in.not141
  br i1 %brmerge142, label %if.end8.cleanup70.loopexit.split.loop.exit135_crit_edge, label %lor.lhs.false14.lr.ph

if.end8.cleanup70.loopexit.split.loop.exit135_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70.loopexit.split.loop.exit135

lor.lhs.false14.lr.ph:                            ; preds = %if.end8
  %5 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %5)
  %lcn.promoted = load i32, ptr %lcn, align 4
  %flags = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 14
  %rw_lock = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.runs_tree, ptr %run, i32 0, i32 1
  br label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %run_get_entry.exit.lor.lhs.false14_crit_edge, %lor.lhs.false14.lr.ph
  %next_vcn.0144 = phi i32 [ %svcn, %lor.lhs.false14.lr.ph ], [ %add, %run_get_entry.exit.lor.lhs.false14_crit_edge ]
  %vcn.addr.0143 = phi i32 [ %svcn, %lor.lhs.false14.lr.ph ], [ %26, %run_get_entry.exit.lor.lhs.false14_crit_edge ]
  %6 = phi i32 [ %lcn.promoted, %lor.lhs.false14.lr.ph ], [ %28, %run_get_entry.exit.lor.lhs.false14_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %next_vcn.0144, i32 %vcn.addr.0143)
  %cmp15.not = icmp eq i32 %next_vcn.0144, %vcn.addr.0143
  br i1 %cmp15.not, label %if.end17, label %lor.lhs.false14.cleanup70_crit_edge

lor.lhs.false14.cleanup70_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.end17:                                         ; preds = %lor.lhs.false14
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %add = add i32 %8, %next_vcn.0144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp18 = icmp eq i32 %6, -1
  br i1 %cmp18, label %if.end17.for.inc65_crit_edge, label %if.end20

if.end17.for.inc65_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65

if.end20:                                         ; preds = %if.end17
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.for.inc65_crit_edge

if.end20.for.inc65_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65

if.end23:                                         ; preds = %if.end20
  call void @down_read_nested(ptr noundef %rw_lock, i32 noundef 0) #9
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %call24 = call zeroext i1 @wnd_is_used(ptr noundef %used, i32 noundef %6, i32 noundef %12) #9
  call void @up_read(ptr noundef %rw_lock) #9
  br i1 %call24, label %if.end23.for.inc65_crit_edge, label %if.end29

if.end23.for.inc65_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65

if.end29:                                         ; preds = %if.end23
  %call30 = call i32 @ntfs_set_state(ptr noundef %sbi, i32 noundef 2) #9
  %call32 = call i32 @down_write_trylock(ptr noundef %rw_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end29.for.inc65_crit_edge, label %for.cond35.preheader

if.end29.for.inc65_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65

for.cond35.preheader:                             ; preds = %if.end29
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp36128.not = icmp eq i32 %14, 0
  br i1 %cmp36128.not, label %for.cond35.preheader.if.end57.thread_crit_edge, label %for.cond35.preheader.for.body37_crit_edge

for.cond35.preheader.for.body37_crit_edge:        ; preds = %for.cond35.preheader
  br label %for.body37

for.cond35.preheader.if.end57.thread_crit_edge:   ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.thread

for.body37:                                       ; preds = %for.inc.for.body37_crit_edge, %for.cond35.preheader.for.body37_crit_edge
  %len_f.0131 = phi i32 [ %len_f.1, %for.inc.for.body37_crit_edge ], [ 0, %for.cond35.preheader.for.body37_crit_edge ]
  %lcn_f.0130 = phi i32 [ %lcn_f.2, %for.inc.for.body37_crit_edge ], [ 0, %for.cond35.preheader.for.body37_crit_edge ]
  %i.0129 = phi i32 [ %inc, %for.inc.for.body37_crit_edge ], [ 0, %for.cond35.preheader.for.body37_crit_edge ]
  %add38 = add i32 %i.0129, %6
  %call39 = call zeroext i1 @wnd_is_free(ptr noundef %used, i32 noundef %add38, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len_f.0131)
  %tobool41.not = icmp eq i32 %len_f.0131, 0
  br i1 %call39, label %if.then40, label %if.else

if.then40:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select = select i1 %tobool41.not, i32 %add38, i32 %lcn_f.0130
  %add45 = add i32 %len_f.0131, 1
  br label %for.inc

if.else:                                          ; preds = %for.body37
  br i1 %tobool41.not, label %if.else.for.inc_crit_edge, label %if.then47

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then47:                                        ; preds = %if.else
  %call48 = call i32 @wnd_set_used(ptr noundef %used, i32 noundef %lcn_f.0130, i32 noundef %len_f.0131) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then47.for.inc_crit_edge, label %if.end57.thread122

if.then47.for.inc_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end57.thread122:                               ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  call void @up_write(ptr noundef %rw_lock) #9
  br label %cleanup70

for.inc:                                          ; preds = %if.then47.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then40
  %lcn_f.2 = phi i32 [ %spec.select, %if.then40 ], [ %lcn_f.0130, %if.then47.for.inc_crit_edge ], [ %lcn_f.0130, %if.else.for.inc_crit_edge ]
  %len_f.1 = phi i32 [ %add45, %if.then40 ], [ 0, %if.then47.for.inc_crit_edge ], [ 0, %if.else.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0129, 1
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %cmp36 = icmp ult i32 %inc, %16
  br i1 %cmp36, label %for.inc.for.body37_crit_edge, label %for.end

for.inc.for.body37_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len_f.1)
  %tobool54.not = icmp eq i32 %len_f.1, 0
  br i1 %tobool54.not, label %for.end.if.end57.thread_crit_edge, label %if.end57

for.end.if.end57.thread_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.thread

if.end57.thread:                                  ; preds = %for.end.if.end57.thread_crit_edge, %for.cond35.preheader.if.end57.thread_crit_edge
  call void @up_write(ptr noundef %rw_lock) #9
  br label %for.inc65

if.end57:                                         ; preds = %for.end
  %call56 = call i32 @wnd_set_used(ptr noundef %used, i32 noundef %lcn_f.2, i32 noundef %len_f.1) #9
  call void @up_write(ptr noundef %rw_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool59.not = icmp eq i32 %call56, 0
  br i1 %tobool59.not, label %if.end57.for.inc65_crit_edge, label %if.end57.cleanup70_crit_edge

if.end57.cleanup70_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.end57.for.inc65_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65

for.inc65:                                        ; preds = %if.end57.for.inc65_crit_edge, %if.end57.thread, %if.end29.for.inc65_crit_edge, %if.end23.for.inc65_crit_edge, %if.end20.for.inc65_crit_edge, %if.end17.for.inc65_crit_edge
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %inc66 = add i32 %18, 1
  store i32 %inc66, ptr %index, align 4
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %inc66)
  %cmp.not.i = icmp ugt i32 %20, %inc66
  br i1 %cmp.not.i, label %if.end.i, label %for.inc65.run_get_entry.exit.thread_crit_edge

for.inc65.run_get_entry.exit.thread_crit_edge:    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #11
  br label %run_get_entry.exit.thread

if.end.i:                                         ; preds = %for.inc65
  %21 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %run, align 4
  %len1.i = getelementptr %struct.ntfs_run, ptr %22, i32 %inc66, i32 1
  %23 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end.i.run_get_entry.exit.thread_crit_edge, label %run_get_entry.exit

if.end.i.run_get_entry.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %run_get_entry.exit.thread

run_get_entry.exit.thread:                        ; preds = %if.end.i.run_get_entry.exit.thread_crit_edge, %for.inc65.run_get_entry.exit.thread_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %evcn)
  %cmp12.not158 = icmp ugt i32 %add, %evcn
  br label %cleanup70.loopexit.split.loop.exit135

run_get_entry.exit:                               ; preds = %if.end.i
  %add.ptr.i = getelementptr %struct.ntfs_run, ptr %22, i32 %inc66
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %lcn10.i = getelementptr %struct.ntfs_run, ptr %22, i32 %inc66, i32 2
  %27 = ptrtoint ptr %lcn10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lcn10.i, align 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %24, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %evcn)
  %cmp12.not = icmp ugt i32 %add, %evcn
  br i1 %cmp12.not, label %run_get_entry.exit.cleanup70.loopexit.split.loop.exit135_crit_edge, label %run_get_entry.exit.lor.lhs.false14_crit_edge

run_get_entry.exit.lor.lhs.false14_crit_edge:     ; preds = %run_get_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false14

run_get_entry.exit.cleanup70.loopexit.split.loop.exit135_crit_edge: ; preds = %run_get_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70.loopexit.split.loop.exit135

cleanup70.loopexit.split.loop.exit135:            ; preds = %run_get_entry.exit.cleanup70.loopexit.split.loop.exit135_crit_edge, %run_get_entry.exit.thread, %if.end8.cleanup70.loopexit.split.loop.exit135_crit_edge
  %cmp12.not.lcssa = phi i1 [ %cmp12.not140, %if.end8.cleanup70.loopexit.split.loop.exit135_crit_edge ], [ %cmp12.not158, %run_get_entry.exit.thread ], [ %cmp12.not, %run_get_entry.exit.cleanup70.loopexit.split.loop.exit135_crit_edge ]
  %call.mux.le = select i1 %cmp12.not.lcssa, i32 %call, i32 -22
  br label %cleanup70

cleanup70:                                        ; preds = %cleanup70.loopexit.split.loop.exit135, %if.end57.cleanup70_crit_edge, %if.end57.thread122, %lor.lhs.false14.cleanup70_crit_edge, %if.end.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.3 = phi i32 [ %call, %entry.cleanup70_crit_edge ], [ %call, %if.end.cleanup70_crit_edge ], [ %call48, %if.end57.thread122 ], [ %call.mux.le, %cleanup70.loopexit.split.loop.exit135 ], [ %call56, %if.end57.cleanup70_crit_edge ], [ -22, %lor.lhs.false14.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #9
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wnd_is_used(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_state(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wnd_is_free(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wnd_set_used(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @run_get_highest_vcn(i32 noundef %vcn, ptr nocapture noundef readonly %run_buf, ptr nocapture noundef writeonly %highest_vcn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %vcn to i64
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %entry
  %run_buf.addr.0 = phi ptr [ %run_buf, %entry ], [ %add.ptr, %cleanup.while.cond_crit_edge ]
  %vcn64.0 = phi i64 [ %conv, %entry ], [ %add15, %cleanup.while.cond_crit_edge ]
  %0 = ptrtoint ptr %run_buf.addr.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %run_buf.addr.0, align 1
  %and = and i8 %1, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool.not = icmp eq i8 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr i8, ptr %run_buf.addr.0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %and)
  %cmp = icmp ugt i8 %and, 8
  br i1 %cmp, label %while.body.cleanup21_crit_edge, label %lor.lhs.false

while.body.cleanup21_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

lor.lhs.false:                                    ; preds = %while.body
  %2 = lshr i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -113, i8 %1)
  %cmp8 = icmp ugt i8 %1, -113
  br i1 %cmp8, label %lor.lhs.false.cleanup21_crit_edge, label %if.end

lor.lhs.false.cleanup21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.end:                                           ; preds = %lor.lhs.false
  %trunc = trunc i8 %1 to i4
  %3 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.6)
  switch i4 %trunc, label %if.end.run_unpack_s64.exit_crit_edge [
    i4 -8, label %sw.bb.i
    i4 7, label %if.end.sw.bb2.i_crit_edge
    i4 6, label %if.end.sw.bb5.i_crit_edge
    i4 5, label %if.end.sw.bb8.i_crit_edge
    i4 4, label %if.end.sw.bb11.i_crit_edge
    i4 3, label %if.end.sw.bb14.i_crit_edge
    i4 2, label %if.end.sw.bb17.i_crit_edge
    i4 1, label %if.end.sw.bb20.i_crit_edge
  ]

if.end.sw.bb20.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20.i

if.end.sw.bb17.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end.sw.bb14.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14.i

if.end.sw.bb11.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11.i

if.end.sw.bb8.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

if.end.sw.bb5.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

if.end.sw.bb2.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.run_unpack_s64.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %run_unpack_s64.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %run_buf.addr.0, i32 8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %if.end.sw.bb2.i_crit_edge
  %v.addr.sroa.0.0.i = phi i8 [ 0, %if.end.sw.bb2.i_crit_edge ], [ %5, %sw.bb.i ]
  %arrayidx3.i = getelementptr i8, ptr %run_buf.addr.0, i32 7
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb2.i, %if.end.sw.bb5.i_crit_edge
  %v.addr.sroa.3.0.i = phi i8 [ 0, %if.end.sw.bb5.i_crit_edge ], [ %7, %sw.bb2.i ]
  %v.addr.sroa.0.1.i = phi i8 [ 0, %if.end.sw.bb5.i_crit_edge ], [ %v.addr.sroa.0.0.i, %sw.bb2.i ]
  %arrayidx6.i = getelementptr i8, ptr %run_buf.addr.0, i32 6
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6.i, align 1
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.bb5.i, %if.end.sw.bb8.i_crit_edge
  %v.addr.sroa.4.0.i = phi i8 [ 0, %if.end.sw.bb8.i_crit_edge ], [ %9, %sw.bb5.i ]
  %v.addr.sroa.3.1.i = phi i8 [ 0, %if.end.sw.bb8.i_crit_edge ], [ %v.addr.sroa.3.0.i, %sw.bb5.i ]
  %v.addr.sroa.0.2.i = phi i8 [ 0, %if.end.sw.bb8.i_crit_edge ], [ %v.addr.sroa.0.1.i, %sw.bb5.i ]
  %arrayidx9.i = getelementptr i8, ptr %run_buf.addr.0, i32 5
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9.i, align 1
  br label %sw.bb11.i

sw.bb11.i:                                        ; preds = %sw.bb8.i, %if.end.sw.bb11.i_crit_edge
  %v.addr.sroa.5.0.i = phi i8 [ 0, %if.end.sw.bb11.i_crit_edge ], [ %11, %sw.bb8.i ]
  %v.addr.sroa.4.1.i = phi i8 [ 0, %if.end.sw.bb11.i_crit_edge ], [ %v.addr.sroa.4.0.i, %sw.bb8.i ]
  %v.addr.sroa.3.2.i = phi i8 [ 0, %if.end.sw.bb11.i_crit_edge ], [ %v.addr.sroa.3.1.i, %sw.bb8.i ]
  %v.addr.sroa.0.3.i = phi i8 [ 0, %if.end.sw.bb11.i_crit_edge ], [ %v.addr.sroa.0.2.i, %sw.bb8.i ]
  %arrayidx12.i = getelementptr i8, ptr %run_buf.addr.0, i32 4
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12.i, align 1
  br label %sw.bb14.i

sw.bb14.i:                                        ; preds = %sw.bb11.i, %if.end.sw.bb14.i_crit_edge
  %v.addr.sroa.6.0.i = phi i8 [ 0, %if.end.sw.bb14.i_crit_edge ], [ %13, %sw.bb11.i ]
  %v.addr.sroa.5.1.i = phi i8 [ 0, %if.end.sw.bb14.i_crit_edge ], [ %v.addr.sroa.5.0.i, %sw.bb11.i ]
  %v.addr.sroa.4.2.i = phi i8 [ 0, %if.end.sw.bb14.i_crit_edge ], [ %v.addr.sroa.4.1.i, %sw.bb11.i ]
  %v.addr.sroa.3.3.i = phi i8 [ 0, %if.end.sw.bb14.i_crit_edge ], [ %v.addr.sroa.3.2.i, %sw.bb11.i ]
  %v.addr.sroa.0.4.i = phi i8 [ 0, %if.end.sw.bb14.i_crit_edge ], [ %v.addr.sroa.0.3.i, %sw.bb11.i ]
  %arrayidx15.i = getelementptr i8, ptr %run_buf.addr.0, i32 3
  %14 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15.i, align 1
  br label %sw.bb17.i

sw.bb17.i:                                        ; preds = %sw.bb14.i, %if.end.sw.bb17.i_crit_edge
  %v.addr.sroa.7.0.i = phi i8 [ 0, %if.end.sw.bb17.i_crit_edge ], [ %15, %sw.bb14.i ]
  %v.addr.sroa.6.1.i = phi i8 [ 0, %if.end.sw.bb17.i_crit_edge ], [ %v.addr.sroa.6.0.i, %sw.bb14.i ]
  %v.addr.sroa.5.2.i = phi i8 [ 0, %if.end.sw.bb17.i_crit_edge ], [ %v.addr.sroa.5.1.i, %sw.bb14.i ]
  %v.addr.sroa.4.3.i = phi i8 [ 0, %if.end.sw.bb17.i_crit_edge ], [ %v.addr.sroa.4.2.i, %sw.bb14.i ]
  %v.addr.sroa.3.4.i = phi i8 [ 0, %if.end.sw.bb17.i_crit_edge ], [ %v.addr.sroa.3.3.i, %sw.bb14.i ]
  %v.addr.sroa.0.5.i = phi i8 [ 0, %if.end.sw.bb17.i_crit_edge ], [ %v.addr.sroa.0.4.i, %sw.bb14.i ]
  %arrayidx18.i = getelementptr i8, ptr %run_buf.addr.0, i32 2
  %16 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18.i, align 1
  br label %sw.bb20.i

sw.bb20.i:                                        ; preds = %sw.bb17.i, %if.end.sw.bb20.i_crit_edge
  %v.addr.sroa.8.0.i = phi i8 [ 0, %if.end.sw.bb20.i_crit_edge ], [ %17, %sw.bb17.i ]
  %v.addr.sroa.7.1.i = phi i8 [ 0, %if.end.sw.bb20.i_crit_edge ], [ %v.addr.sroa.7.0.i, %sw.bb17.i ]
  %v.addr.sroa.6.2.i = phi i8 [ 0, %if.end.sw.bb20.i_crit_edge ], [ %v.addr.sroa.6.1.i, %sw.bb17.i ]
  %v.addr.sroa.5.3.i = phi i8 [ 0, %if.end.sw.bb20.i_crit_edge ], [ %v.addr.sroa.5.2.i, %sw.bb17.i ]
  %v.addr.sroa.4.4.i = phi i8 [ 0, %if.end.sw.bb20.i_crit_edge ], [ %v.addr.sroa.4.3.i, %sw.bb17.i ]
  %v.addr.sroa.3.5.i = phi i8 [ 0, %if.end.sw.bb20.i_crit_edge ], [ %v.addr.sroa.3.4.i, %sw.bb17.i ]
  %v.addr.sroa.0.6.i = phi i8 [ 0, %if.end.sw.bb20.i_crit_edge ], [ %v.addr.sroa.0.5.i, %sw.bb17.i ]
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr, align 1
  br label %run_unpack_s64.exit

run_unpack_s64.exit:                              ; preds = %sw.bb20.i, %if.end.run_unpack_s64.exit_crit_edge
  %v.addr.sroa.9.0.i = phi i8 [ 0, %if.end.run_unpack_s64.exit_crit_edge ], [ %19, %sw.bb20.i ]
  %v.addr.sroa.8.1.i = phi i8 [ 0, %if.end.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.8.0.i, %sw.bb20.i ]
  %v.addr.sroa.7.2.i = phi i8 [ 0, %if.end.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.7.1.i, %sw.bb20.i ]
  %v.addr.sroa.6.3.i = phi i8 [ 0, %if.end.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.6.2.i, %sw.bb20.i ]
  %v.addr.sroa.5.4.i = phi i8 [ 0, %if.end.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.5.3.i, %sw.bb20.i ]
  %v.addr.sroa.4.5.i = phi i8 [ 0, %if.end.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.4.4.i, %sw.bb20.i ]
  %v.addr.sroa.3.6.i = phi i8 [ 0, %if.end.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.3.5.i, %sw.bb20.i ]
  %v.addr.sroa.0.7.i = phi i8 [ 0, %if.end.run_unpack_s64.exit_crit_edge ], [ %v.addr.sroa.0.6.i, %sw.bb20.i ]
  %v.addr.sroa.9.0.insert.ext.i = zext i8 %v.addr.sroa.9.0.i to i64
  %v.addr.sroa.8.0.insert.ext.i = zext i8 %v.addr.sroa.8.1.i to i64
  %v.addr.sroa.8.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.8.0.insert.ext.i, 8
  %v.addr.sroa.8.0.insert.insert.i = or i64 %v.addr.sroa.8.0.insert.shift.i, %v.addr.sroa.9.0.insert.ext.i
  %v.addr.sroa.7.0.insert.ext.i = zext i8 %v.addr.sroa.7.2.i to i64
  %v.addr.sroa.7.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.7.0.insert.ext.i, 16
  %v.addr.sroa.7.0.insert.insert.i = or i64 %v.addr.sroa.8.0.insert.insert.i, %v.addr.sroa.7.0.insert.shift.i
  %v.addr.sroa.6.0.insert.ext.i = zext i8 %v.addr.sroa.6.3.i to i64
  %v.addr.sroa.6.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.6.0.insert.ext.i, 24
  %v.addr.sroa.6.0.insert.insert.i = or i64 %v.addr.sroa.7.0.insert.insert.i, %v.addr.sroa.6.0.insert.shift.i
  %v.addr.sroa.5.0.insert.ext.i = zext i8 %v.addr.sroa.5.4.i to i64
  %v.addr.sroa.5.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.5.0.insert.ext.i, 32
  %v.addr.sroa.4.0.insert.ext.i = zext i8 %v.addr.sroa.4.5.i to i64
  %v.addr.sroa.4.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.4.0.insert.ext.i, 40
  %v.addr.sroa.4.0.insert.mask.i = or i64 %v.addr.sroa.6.0.insert.insert.i, %v.addr.sroa.5.0.insert.shift.i
  %v.addr.sroa.3.0.insert.ext.i = zext i8 %v.addr.sroa.3.6.i to i64
  %v.addr.sroa.3.0.insert.shift.i = shl nuw nsw i64 %v.addr.sroa.3.0.insert.ext.i, 48
  %v.addr.sroa.0.0.insert.ext.i = zext i8 %v.addr.sroa.0.7.i to i64
  %v.addr.sroa.0.0.insert.shift.i = shl nuw i64 %v.addr.sroa.0.0.insert.ext.i, 56
  %v.addr.sroa.3.0.insert.mask.masked.i = or i64 %v.addr.sroa.4.0.insert.mask.i, %v.addr.sroa.4.0.insert.shift.i
  %v.addr.sroa.0.0.insert.mask.i = or i64 %v.addr.sroa.3.0.insert.mask.masked.i, %v.addr.sroa.3.0.insert.shift.i
  %v.addr.sroa.0.0.insert.insert.i = or i64 %v.addr.sroa.0.0.insert.mask.i, %v.addr.sroa.0.0.insert.shift.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %v.addr.sroa.0.0.insert.insert.i)
  %tobool10.not = icmp eq i64 %v.addr.sroa.0.0.insert.insert.i, 0
  br i1 %tobool10.not, label %run_unpack_s64.exit.cleanup21_crit_edge, label %cleanup

run_unpack_s64.exit.cleanup21_crit_edge:          ; preds = %run_unpack_s64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

cleanup:                                          ; preds = %run_unpack_s64.exit
  %narrow = add nuw nsw i8 %and, %2
  %add = zext i8 %narrow to i32
  %add.ptr = getelementptr i8, ptr %incdec.ptr, i32 %add
  %add15 = add i64 %v.addr.sroa.0.0.insert.insert.i, %vcn64.0
  %cmp16 = icmp ult i64 %add15, 4294967297
  br i1 %cmp16, label %cleanup.while.cond_crit_edge, label %cleanup.cleanup21_crit_edge

cleanup.cleanup21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i64 %vcn64.0, -1
  %20 = ptrtoint ptr %highest_vcn to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %sub, ptr %highest_vcn, align 8
  br label %cleanup21

cleanup21:                                        ; preds = %while.end, %cleanup.cleanup21_crit_edge, %run_unpack_s64.exit.cleanup21_crit_edge, %lor.lhs.false.cleanup21_crit_edge, %while.body.cleanup21_crit_edge
  %retval.2 = phi i32 [ 0, %while.end ], [ -22, %cleanup.cleanup21_crit_edge ], [ -22, %lor.lhs.false.cleanup21_crit_edge ], [ -22, %while.body.cleanup21_crit_edge ], [ -22, %run_unpack_s64.exit.cleanup21_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/run.c", i32 387, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/run.c", i32 947, i32 4}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"auto-init"}
