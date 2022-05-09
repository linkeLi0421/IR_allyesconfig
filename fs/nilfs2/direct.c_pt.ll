; ModuleID = '/llk/IR_all_yes/fs/nilfs2/direct.c_pt.bc'
source_filename = "../fs/nilfs2/direct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nilfs_bmap_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nilfs_bmap = type { %union.anon, %struct.rw_semaphore, ptr, ptr, i64, i64, i32, i32, i16 }
%union.anon = type { [7 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nilfs_direct_node = type { i8, [7 x i8] }
%union.nilfs_bmap_ptr_req = type { %struct.nilfs_palloc_req }
%struct.nilfs_palloc_req = type { i64, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.80 = type { ptr }
%struct.nilfs_binfo_v = type { i64, i64 }
%struct.nilfs_binfo_dat = type { i64, i8, [7 x i8] }

@nilfs_direct_ops = internal constant { %struct.nilfs_bmap_operations, [40 x i8] } { %struct.nilfs_bmap_operations { ptr @nilfs_direct_lookup, ptr @nilfs_direct_lookup_contig, ptr @nilfs_direct_insert, ptr @nilfs_direct_delete, ptr null, ptr @nilfs_direct_propagate, ptr null, ptr @nilfs_direct_assign, ptr null, ptr @nilfs_direct_seek_key, ptr @nilfs_direct_last_key, ptr @nilfs_direct_check_insert, ptr null, ptr @nilfs_direct_gather_data }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\012%s (ino=%lu): invalid key: %llu\00", [62 x i8] zeroinitializer }, align 32
@__func__.nilfs_direct_assign = private unnamed_addr constant [20 x i8] c"nilfs_direct_assign\00", align 1
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012%s (ino=%lu): invalid pointer: %llu\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"nilfs_direct_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 351, i32 43 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 331, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [22 x i8] c"../fs/nilfs2/direct.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 339, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nilfs_direct_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_direct_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_direct_delete_and_convert(ptr noundef %bmap, i64 noundef %key, ptr nocapture noundef readonly %keys, ptr nocapture noundef readonly %ptrs, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_ops, align 4
  %bop_delete = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bop_delete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bop_delete, align 4
  %call = tail call i32 %3(ptr noundef %bmap, i64 noundef %key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %b_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_ops, align 4
  %bop_clear = getelementptr inbounds %struct.nilfs_bmap_operations, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bop_clear to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bop_clear, align 4
  %cmp2.not = icmp eq ptr %7, null
  br i1 %cmp2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %bmap) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %add.ptr.i = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp9 = icmp sgt i32 %n, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end6
  %8 = ptrtoint ptr %keys to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %keys, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp10 = icmp eq i64 %9, 0
  br i1 %cmp10, label %if.then12, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %key)
  %cmp14.not = icmp eq i64 %key, 0
  br i1 %cmp14.not, label %if.then12.for.inc_crit_edge, label %cond.true

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %ptrs to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptrs, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  br label %for.inc

for.inc:                                          ; preds = %cond.true, %if.then12.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end6.for.inc_crit_edge
  %storemerge = phi i64 [ %12, %cond.true ], [ 0, %if.then12.for.inc_crit_edge ], [ 0, %land.lhs.true.for.inc_crit_edge ], [ 0, %if.end6.for.inc_crit_edge ]
  %j.1 = phi i32 [ 1, %cond.true ], [ 1, %if.then12.for.inc_crit_edge ], [ 0, %land.lhs.true.for.inc_crit_edge ], [ 0, %if.end6.for.inc_crit_edge ]
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %storemerge, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %n)
  %cmp9.1 = icmp slt i32 %j.1, %n
  br i1 %cmp9.1, label %land.lhs.true.1, label %for.inc.if.else.1_crit_edge

for.inc.if.else.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx.1 = getelementptr i64, ptr %keys, i32 %j.1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %15)
  %cmp10.1 = icmp eq i64 %15, 1
  br i1 %cmp10.1, label %if.then12.1, label %land.lhs.true.1.if.else.1_crit_edge

land.lhs.true.1.if.else.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.1

if.else.1:                                        ; preds = %land.lhs.true.1.if.else.1_crit_edge, %for.inc.if.else.1_crit_edge
  %arrayidx18.1 = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 2
  %16 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %arrayidx18.1, align 8
  br label %for.inc.1

if.then12.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %key)
  %cmp14.not.1 = icmp eq i64 %key, 1
  br i1 %cmp14.not.1, label %if.then12.1.cond.end.1_crit_edge, label %cond.true.1

if.then12.1.cond.end.1_crit_edge:                 ; preds = %if.then12.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.1

cond.true.1:                                      ; preds = %if.then12.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.1 = getelementptr i64, ptr %ptrs, i32 %j.1
  %17 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx16.1, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  br label %cond.end.1

cond.end.1:                                       ; preds = %cond.true.1, %if.then12.1.cond.end.1_crit_edge
  %cond.1 = phi i64 [ %19, %cond.true.1 ], [ 0, %if.then12.1.cond.end.1_crit_edge ]
  %arrayidx17.1 = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 2
  %20 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %cond.1, ptr %arrayidx17.1, align 8
  %inc.1 = add nuw nsw i32 %j.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %cond.end.1, %if.else.1
  %j.1.1 = phi i32 [ %inc.1, %cond.end.1 ], [ %j.1, %if.else.1 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.1, i32 %n)
  %cmp9.2 = icmp slt i32 %j.1.1, %n
  br i1 %cmp9.2, label %land.lhs.true.2, label %for.inc.1.if.else.2_crit_edge

for.inc.1.if.else.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx.2 = getelementptr i64, ptr %keys, i32 %j.1.1
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %22)
  %cmp10.2 = icmp eq i64 %22, 2
  br i1 %cmp10.2, label %if.then12.2, label %land.lhs.true.2.if.else.2_crit_edge

land.lhs.true.2.if.else.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.2

if.else.2:                                        ; preds = %land.lhs.true.2.if.else.2_crit_edge, %for.inc.1.if.else.2_crit_edge
  %arrayidx18.2 = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 3
  %23 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %arrayidx18.2, align 8
  br label %for.inc.2

if.then12.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %key)
  %cmp14.not.2 = icmp eq i64 %key, 2
  br i1 %cmp14.not.2, label %if.then12.2.cond.end.2_crit_edge, label %cond.true.2

if.then12.2.cond.end.2_crit_edge:                 ; preds = %if.then12.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.2

cond.true.2:                                      ; preds = %if.then12.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.2 = getelementptr i64, ptr %ptrs, i32 %j.1.1
  %24 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx16.2, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  br label %cond.end.2

cond.end.2:                                       ; preds = %cond.true.2, %if.then12.2.cond.end.2_crit_edge
  %cond.2 = phi i64 [ %26, %cond.true.2 ], [ 0, %if.then12.2.cond.end.2_crit_edge ]
  %arrayidx17.2 = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 3
  %27 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %cond.2, ptr %arrayidx17.2, align 8
  %inc.2 = add nuw nsw i32 %j.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %cond.end.2, %if.else.2
  %j.1.2 = phi i32 [ %inc.2, %cond.end.2 ], [ %j.1.1, %if.else.2 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.2, i32 %n)
  %cmp9.3 = icmp slt i32 %j.1.2, %n
  br i1 %cmp9.3, label %land.lhs.true.3, label %for.inc.2.if.else.3_crit_edge

for.inc.2.if.else.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx.3 = getelementptr i64, ptr %keys, i32 %j.1.2
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %29)
  %cmp10.3 = icmp eq i64 %29, 3
  br i1 %cmp10.3, label %if.then12.3, label %land.lhs.true.3.if.else.3_crit_edge

land.lhs.true.3.if.else.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.3

if.else.3:                                        ; preds = %land.lhs.true.3.if.else.3_crit_edge, %for.inc.2.if.else.3_crit_edge
  %arrayidx18.3 = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 4
  %30 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %arrayidx18.3, align 8
  br label %for.inc.3

if.then12.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %key)
  %cmp14.not.3 = icmp eq i64 %key, 3
  br i1 %cmp14.not.3, label %if.then12.3.cond.end.3_crit_edge, label %cond.true.3

if.then12.3.cond.end.3_crit_edge:                 ; preds = %if.then12.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.3

cond.true.3:                                      ; preds = %if.then12.3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.3 = getelementptr i64, ptr %ptrs, i32 %j.1.2
  %31 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx16.3, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32)
  br label %cond.end.3

cond.end.3:                                       ; preds = %cond.true.3, %if.then12.3.cond.end.3_crit_edge
  %cond.3 = phi i64 [ %33, %cond.true.3 ], [ 0, %if.then12.3.cond.end.3_crit_edge ]
  %arrayidx17.3 = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 4
  %34 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %cond.3, ptr %arrayidx17.3, align 8
  %inc.3 = add nuw nsw i32 %j.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %cond.end.3, %if.else.3
  %j.1.3 = phi i32 [ %inc.3, %cond.end.3 ], [ %j.1.2, %if.else.3 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.3, i32 %n)
  %cmp9.4 = icmp slt i32 %j.1.3, %n
  br i1 %cmp9.4, label %land.lhs.true.4, label %for.inc.3.if.else.4_crit_edge

for.inc.3.if.else.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx.4 = getelementptr i64, ptr %keys, i32 %j.1.3
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %36)
  %cmp10.4 = icmp eq i64 %36, 4
  br i1 %cmp10.4, label %if.then12.4, label %land.lhs.true.4.if.else.4_crit_edge

land.lhs.true.4.if.else.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.4

if.else.4:                                        ; preds = %land.lhs.true.4.if.else.4_crit_edge, %for.inc.3.if.else.4_crit_edge
  %arrayidx18.4 = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 5
  %37 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %arrayidx18.4, align 8
  br label %for.inc.4

if.then12.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %key)
  %cmp14.not.4 = icmp eq i64 %key, 4
  br i1 %cmp14.not.4, label %if.then12.4.cond.end.4_crit_edge, label %cond.true.4

if.then12.4.cond.end.4_crit_edge:                 ; preds = %if.then12.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.4

cond.true.4:                                      ; preds = %if.then12.4
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.4 = getelementptr i64, ptr %ptrs, i32 %j.1.3
  %38 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx16.4, align 8
  %40 = tail call i64 @llvm.bswap.i64(i64 %39)
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.true.4, %if.then12.4.cond.end.4_crit_edge
  %cond.4 = phi i64 [ %40, %cond.true.4 ], [ 0, %if.then12.4.cond.end.4_crit_edge ]
  %arrayidx17.4 = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 5
  %41 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %cond.4, ptr %arrayidx17.4, align 8
  %inc.4 = add nuw nsw i32 %j.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %cond.end.4, %if.else.4
  %j.1.4 = phi i32 [ %inc.4, %cond.end.4 ], [ %j.1.3, %if.else.4 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.4, i32 %n)
  %cmp9.5 = icmp slt i32 %j.1.4, %n
  br i1 %cmp9.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx.5 = getelementptr i64, ptr %keys, i32 %j.1.4
  %42 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %43)
  %cmp10.5 = icmp ne i64 %43, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %key)
  %cmp14.not.5 = icmp eq i64 %key, 5
  %or.cond = or i1 %cmp10.5, %cmp14.not.5
  br i1 %or.cond, label %land.lhs.true.5.for.inc.5_crit_edge, label %cond.true.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

cond.true.5:                                      ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.5 = getelementptr i64, ptr %ptrs, i32 %j.1.4
  %44 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx16.5, align 8
  %46 = tail call i64 @llvm.bswap.i64(i64 %45)
  br label %for.inc.5

for.inc.5:                                        ; preds = %cond.true.5, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %cond.5.sink = phi i64 [ 0, %land.lhs.true.5.for.inc.5_crit_edge ], [ 0, %for.inc.4.for.inc.5_crit_edge ], [ %46, %cond.true.5 ]
  %arrayidx17.5 = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 6
  %47 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %cond.5.sink, ptr %arrayidx17.5, align 8
  %48 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @nilfs_direct_ops, ptr %b_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.5 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @nilfs_direct_init(ptr nocapture noundef writeonly %bmap) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_ops = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 3
  %0 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nilfs_direct_ops, ptr %b_ops, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nilfs_direct_lookup(ptr nocapture noundef readonly %direct, i64 noundef %key, i32 noundef %level, ptr nocapture noundef writeonly %ptrp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 6, i64 %key)
  %cmp = icmp ult i64 %key, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp1.not = icmp eq i32 %level, 1
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 1
  %idx.ext.i = trunc i64 %key to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp2 = icmp eq i64 %1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #8
  %3 = ptrtoint ptr %ptrp to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %ptrp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_direct_lookup_contig(ptr noundef %direct, i64 noundef %key, ptr nocapture noundef writeonly %ptrp, i32 noundef %maxblocks) #0 align 64 {
entry:
  %blocknr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocknr) #8
  %0 = ptrtoint ptr %blocknr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %blocknr, align 8, !annotation !16
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %key)
  %cmp = icmp ugt i64 %key, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 1
  %idx.ext.i = trunc i64 %key to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %add.ptr.i, align 8
  %3 = tail call i64 @llvm.bswap.i64(i64 %2) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %direct, i32 0, i32 6
  %4 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp sgt i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end3
  %call6 = tail call ptr @nilfs_bmap_get_dat(ptr noundef %direct) #8
  %call7 = call i32 @nilfs_dat_translate(ptr noundef %call6, i64 noundef %3, ptr noundef nonnull %blocknr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then5.cleanup_crit_edge, label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %blocknr, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end3.if.end11_crit_edge
  %dat.0 = phi ptr [ %call6, %if.end10 ], [ null, %if.end3.if.end11_crit_edge ]
  %ptr.0 = phi i64 [ %7, %if.end10 ], [ %3, %if.end3.if.end11_crit_edge ]
  %conv = sub nuw nsw i32 6, %idx.ext.i
  %8 = call i32 @llvm.umin.i32(i32 %conv, i32 %maxblocks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1465 = icmp ugt i32 %8, 1
  br i1 %cmp1465, label %land.rhs.lr.ph, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end11
  %tobool.not = icmp eq ptr %dat.0, null
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %cnt.066 = phi i32 [ 1, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %conv16 = sext i32 %cnt.066 to i64
  %idx.ext.i62 = add i32 %cnt.066, %idx.ext.i
  %add.ptr.i63 = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i62
  %9 = ptrtoint ptr %add.ptr.i63 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i63, align 8
  %11 = call i64 @llvm.bswap.i64(i64 %10) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp19.not = icmp eq i64 %10, 0
  br i1 %cmp19.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  br i1 %tobool.not, label %for.body.if.end27_crit_edge, label %if.then21

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then21:                                        ; preds = %for.body
  %call22 = call i32 @nilfs_dat_translate(ptr noundef nonnull %dat.0, i64 noundef %11, ptr noundef nonnull %blocknr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then21.cleanup_crit_edge, label %if.end26

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %blocknr, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %for.body.if.end27_crit_edge
  %ptr2.0 = phi i64 [ %13, %if.end26 ], [ %11, %for.body.if.end27_crit_edge ]
  %add29 = add i64 %ptr.0, %conv16
  call void @__sanitizer_cov_trace_cmp8(i64 %ptr2.0, i64 %add29)
  %cmp30.not = icmp eq i64 %ptr2.0, %add29
  br i1 %cmp30.not, label %for.inc, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end27
  %inc = add nuw i32 %cnt.066, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end27.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end11.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 1, %if.end11.for.end_crit_edge ], [ %8, %for.inc.for.end_crit_edge ], [ %cnt.066, %if.end27.for.end_crit_edge ], [ %cnt.066, %land.rhs.for.end_crit_edge ]
  %14 = ptrtoint ptr %ptrp to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %ptr.0, ptr %ptrp, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then21.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cnt.0.lcssa, %for.end ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call7, %if.then5.cleanup_crit_edge ], [ %call22, %if.then21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocknr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_direct_insert(ptr noundef %bmap, i64 noundef %key, i64 noundef %ptr) #0 align 64 {
entry:
  %req = alloca %union.nilfs_bmap_ptr_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req) #8
  %0 = call ptr @memset(ptr %req, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %key)
  %cmp = icmp ugt i64 %key, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 1
  %idx.ext.i = trunc i64 %key to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp1.not = icmp eq i64 %2, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 6
  %3 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end3.nilfs_bmap_prepare_alloc_ptr.exit.thread_crit_edge

if.end3.nilfs_bmap_prepare_alloc_ptr.exit.thread_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_bmap_prepare_alloc_ptr.exit.thread

if.then5:                                         ; preds = %if.end3
  %call.i = tail call i64 @nilfs_bmap_find_target_seq(ptr noundef %bmap, i64 noundef %key) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp.not.i = icmp eq i64 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then5.if.end8_crit_edge

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i64 @nilfs_bmap_find_target_in_group(ptr noundef %bmap) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end.i, %if.then5.if.end8_crit_edge
  %retval.0.i = phi i64 [ %call1.i, %if.end.i ], [ %call.i, %if.then5.if.end8_crit_edge ]
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %retval.0.i, ptr %req, align 8
  %call7 = tail call ptr @nilfs_bmap_get_dat(ptr noundef %bmap) #8
  %tobool.not.i41 = icmp eq ptr %call7, null
  br i1 %tobool.not.i41, label %if.end8.nilfs_bmap_prepare_alloc_ptr.exit.thread_crit_edge, label %nilfs_bmap_prepare_alloc_ptr.exit

if.end8.nilfs_bmap_prepare_alloc_ptr.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_bmap_prepare_alloc_ptr.exit.thread

nilfs_bmap_prepare_alloc_ptr.exit.thread:         ; preds = %if.end8.nilfs_bmap_prepare_alloc_ptr.exit.thread_crit_edge, %if.end3.nilfs_bmap_prepare_alloc_ptr.exit.thread_crit_edge
  %b_last_allocated_ptr.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 5
  %6 = ptrtoint ptr %b_last_allocated_ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %b_last_allocated_ptr.i, align 8
  %inc.i = add i64 %7, 1
  store i64 %inc.i, ptr %b_last_allocated_ptr.i, align 8
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %req, align 8
  br label %if.then10

nilfs_bmap_prepare_alloc_ptr.exit:                ; preds = %if.end8
  %call.i42 = call i32 @nilfs_dat_prepare_alloc(ptr noundef nonnull %call7, ptr noundef nonnull %req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool.not = icmp eq i32 %call.i42, 0
  br i1 %tobool.not, label %nilfs_bmap_prepare_alloc_ptr.exit.if.then10_crit_edge, label %nilfs_bmap_prepare_alloc_ptr.exit.cleanup_crit_edge

nilfs_bmap_prepare_alloc_ptr.exit.cleanup_crit_edge: ; preds = %nilfs_bmap_prepare_alloc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nilfs_bmap_prepare_alloc_ptr.exit.if.then10_crit_edge: ; preds = %nilfs_bmap_prepare_alloc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %nilfs_bmap_prepare_alloc_ptr.exit.if.then10_crit_edge, %nilfs_bmap_prepare_alloc_ptr.exit.thread
  %dat.05665 = phi ptr [ null, %nilfs_bmap_prepare_alloc_ptr.exit.thread ], [ %call7, %nilfs_bmap_prepare_alloc_ptr.exit.if.then10_crit_edge ]
  %tobool.not.i415864 = phi i1 [ true, %nilfs_bmap_prepare_alloc_ptr.exit.thread ], [ false, %nilfs_bmap_prepare_alloc_ptr.exit.if.then10_crit_edge ]
  %conv = trunc i64 %ptr to i32
  %9 = inttoptr i32 %conv to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then10.set_buffer_nilfs_volatile.exit_crit_edge

if.then10.set_buffer_nilfs_volatile.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_nilfs_volatile.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 18, ptr noundef %9) #8
  br label %set_buffer_nilfs_volatile.exit

set_buffer_nilfs_volatile.exit:                   ; preds = %if.then.i, %if.then10.set_buffer_nilfs_volatile.exit_crit_edge
  br i1 %tobool.not.i415864, label %set_buffer_nilfs_volatile.exit.nilfs_bmap_commit_alloc_ptr.exit_crit_edge, label %if.then.i47

set_buffer_nilfs_volatile.exit.nilfs_bmap_commit_alloc_ptr.exit_crit_edge: ; preds = %set_buffer_nilfs_volatile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_bmap_commit_alloc_ptr.exit

if.then.i47:                                      ; preds = %set_buffer_nilfs_volatile.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @nilfs_dat_commit_alloc(ptr noundef nonnull %dat.05665, ptr noundef nonnull %req) #8
  br label %nilfs_bmap_commit_alloc_ptr.exit

nilfs_bmap_commit_alloc_ptr.exit:                 ; preds = %if.then.i47, %set_buffer_nilfs_volatile.exit.nilfs_bmap_commit_alloc_ptr.exit_crit_edge
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %req, align 8
  %15 = call i64 @llvm.bswap.i64(i64 %14) #8
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %add.ptr.i, align 8
  %b_state.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 7
  %17 = ptrtoint ptr %b_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %b_state.i, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %if.then13, label %nilfs_bmap_commit_alloc_ptr.exit.if.end14_crit_edge

nilfs_bmap_commit_alloc_ptr.exit.if.end14_crit_edge: ; preds = %nilfs_bmap_commit_alloc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %nilfs_bmap_commit_alloc_ptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %18, 1
  %19 = ptrtoint ptr %b_state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %b_state.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %nilfs_bmap_commit_alloc_ptr.exit.if.end14_crit_edge
  %20 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp16 = icmp sgt i32 %21, 0
  br i1 %cmp16, label %if.then18, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %b_last_allocated_key.i = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 4
  %22 = ptrtoint ptr %b_last_allocated_key.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %key, ptr %b_last_allocated_key.i, align 8
  %b_last_allocated_ptr.i53 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 5
  %23 = ptrtoint ptr %b_last_allocated_ptr.i53 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %14, ptr %b_last_allocated_ptr.i53, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %24 = ptrtoint ptr %b_inode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_inode, align 8
  call void @nilfs_inode_add_blocks(ptr noundef %25, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %nilfs_bmap_prepare_alloc_ptr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -17, %if.end.cleanup_crit_edge ], [ 0, %if.end19 ], [ %call.i42, %nilfs_bmap_prepare_alloc_ptr.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_direct_delete(ptr noundef %bmap, i64 noundef %key) #0 align 64 {
entry:
  %req = alloca %union.nilfs_bmap_ptr_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req) #8
  %0 = call ptr @memset(ptr %req, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %key)
  %cmp = icmp ugt i64 %key, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 1
  %idx.ext.i = trunc i64 %key to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 6
  %3 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #8
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %req, align 8
  br label %nilfs_bmap_commit_end_ptr.exit

cond.end:                                         ; preds = %if.end
  %call3 = tail call ptr @nilfs_bmap_get_dat(ptr noundef %bmap) #8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #8
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %req, align 8
  %tobool.not.i = icmp eq ptr %call3, null
  br i1 %tobool.not.i, label %cond.end.nilfs_bmap_commit_end_ptr.exit_crit_edge, label %nilfs_bmap_prepare_end_ptr.exit

cond.end.nilfs_bmap_commit_end_ptr.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_bmap_commit_end_ptr.exit

nilfs_bmap_prepare_end_ptr.exit:                  ; preds = %cond.end
  %call.i = call i32 @nilfs_dat_prepare_end(ptr noundef nonnull %call3, ptr noundef nonnull %req) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.i, label %nilfs_bmap_prepare_end_ptr.exit.cleanup_crit_edge

nilfs_bmap_prepare_end_ptr.exit.cleanup_crit_edge: ; preds = %nilfs_bmap_prepare_end_ptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %nilfs_bmap_prepare_end_ptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  %conv.i = zext i1 %cmp.i to i32
  call void @nilfs_dat_commit_end(ptr noundef nonnull %call3, ptr noundef nonnull %req, i32 noundef %conv.i) #8
  br label %nilfs_bmap_commit_end_ptr.exit

nilfs_bmap_commit_end_ptr.exit:                   ; preds = %if.then.i, %cond.end.nilfs_bmap_commit_end_ptr.exit_crit_edge, %cond.end.thread
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %add.ptr.i, align 8
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %16 = ptrtoint ptr %b_inode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_inode, align 8
  call void @nilfs_inode_sub_blocks(ptr noundef %17, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %nilfs_bmap_commit_end_ptr.exit, %nilfs_bmap_prepare_end_ptr.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ 0, %nilfs_bmap_commit_end_ptr.exit ], [ %call.i, %nilfs_bmap_prepare_end_ptr.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_direct_propagate(ptr noundef %bmap, ptr noundef %bh) #0 align 64 {
entry:
  %oldreq = alloca %struct.nilfs_palloc_req, align 8
  %newreq = alloca %struct.nilfs_palloc_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oldreq) #8
  %0 = getelementptr inbounds i8, ptr %oldreq, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %newreq) #8
  %2 = getelementptr inbounds i8, ptr %newreq, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 6
  %4 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @nilfs_bmap_get_dat(ptr noundef %bmap) #8
  %call1 = tail call i64 @nilfs_bmap_data_get_key(ptr noundef %bmap, ptr noundef %bh) #8
  %add.ptr.i.i = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 1
  %idx.ext.i = trunc i64 %call1 to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #8
  %9 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %bh, align 4
  %11 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %12 = ptrtoint ptr %oldreq to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %8, ptr %oldreq, align 8
  %13 = ptrtoint ptr %newreq to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %8, ptr %newreq, align 8
  %call6 = call i32 @nilfs_dat_prepare_update(ptr noundef %call, ptr noundef nonnull %oldreq, ptr noundef nonnull %newreq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then4.cleanup_crit_edge, label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  %14 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp11 = icmp eq i32 %15, 1
  %conv = zext i1 %cmp11 to i32
  call void @nilfs_dat_commit_update(ptr noundef %call, ptr noundef nonnull %oldreq, ptr noundef nonnull %newreq, i32 noundef %conv) #8
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %bh, align 4
  %18 = and i32 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end9.set_buffer_nilfs_volatile.exit_crit_edge

if.end9.set_buffer_nilfs_volatile.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_nilfs_volatile.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 18, ptr noundef %bh) #8
  br label %set_buffer_nilfs_volatile.exit

set_buffer_nilfs_volatile.exit:                   ; preds = %if.then.i, %if.end9.set_buffer_nilfs_volatile.exit_crit_edge
  %19 = ptrtoint ptr %newreq to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %newreq, align 8
  %21 = call i64 @llvm.bswap.i64(i64 %20) #8
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %add.ptr.i, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @nilfs_dat_mark_dirty(ptr noundef %call, i64 noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %set_buffer_nilfs_volatile.exit, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ], [ %call13, %if.else ], [ %call6, %set_buffer_nilfs_volatile.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %newreq) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oldreq) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_direct_assign(ptr noundef %bmap, ptr nocapture noundef readonly %bh, i64 noundef %blocknr, ptr nocapture noundef writeonly %binfo) #0 align 64 {
entry:
  %req.i = alloca %union.nilfs_bmap_ptr_req, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 4
  %call = tail call i64 @nilfs_bmap_data_get_key(ptr noundef %bmap, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %call)
  %cmp = icmp ugt i64 %call, 5
  br i1 %cmp, label %if.then, label %if.end, !prof !17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %b_inode = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %2 = ptrtoint ptr %b_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nilfs_direct_assign, i32 noundef %7, i64 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.nilfs_direct_node, ptr %bmap, i32 1
  %idx.ext.i = trunc i64 %call to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp4 = icmp eq i64 %9, 0
  br i1 %cmp4, label %if.then11, label %if.end16, !prof !17

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %b_inode12 = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 2
  %11 = ptrtoint ptr %b_inode12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_inode12, align 8
  %i_sb13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb13, align 4
  %i_ino15 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino15, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nilfs_direct_assign, i32 noundef %16, i64 noundef 0) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %b_ptr_type = getelementptr inbounds %struct.nilfs_bmap, ptr %bmap, i32 0, i32 6
  %17 = ptrtoint ptr %b_ptr_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %b_ptr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp17 = icmp sgt i32 %18, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end16
  %call.i = tail call ptr @nilfs_bmap_get_dat(ptr noundef %bmap) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i) #8
  %19 = getelementptr inbounds i8, ptr %req.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 255, i32 16)
  %21 = ptrtoint ptr %req.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %10, ptr %req.i, align 8
  %call1.i = call i32 @nilfs_dat_prepare_start(ptr noundef %call.i, ptr noundef nonnull %req.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %cond.true.nilfs_direct_assign_v.exit_crit_edge

cond.true.nilfs_direct_assign_v.exit_crit_edge:   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %nilfs_direct_assign_v.exit

if.then.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @nilfs_dat_commit_start(ptr noundef %call.i, ptr noundef nonnull %req.i, i64 noundef %blocknr) #8
  %22 = ptrtoint ptr %binfo to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %9, ptr %binfo, align 8
  %23 = call i64 @llvm.bswap.i64(i64 %call) #8
  %bi_blkoff.i = getelementptr inbounds %struct.nilfs_binfo_v, ptr %binfo, i32 0, i32 1
  %24 = ptrtoint ptr %bi_blkoff.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %bi_blkoff.i, align 8
  br label %nilfs_direct_assign_v.exit

nilfs_direct_assign_v.exit:                       ; preds = %if.then.i, %cond.true.nilfs_direct_assign_v.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i) #8
  br label %cleanup

cond.false:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i64 @llvm.bswap.i64(i64 %blocknr) #8
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %add.ptr.i, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %call) #8
  %28 = ptrtoint ptr %binfo to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %binfo, align 8
  %bi_level.i = getelementptr inbounds %struct.nilfs_binfo_dat, ptr %binfo, i32 0, i32 1
  %29 = ptrtoint ptr %bi_level.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bi_level.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %nilfs_direct_assign_v.exit, %if.then11, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then11 ], [ %call1.i, %nilfs_direct_assign_v.exit ], [ 0, %cond.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_direct_seek_key(ptr nocapture noundef readonly %direct, i64 noundef %start, ptr nocapture noundef writeonly %keyp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 6, i64 %start)
  %cmp6 = icmp ult i64 %start, 6
  br i1 %cmp6, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 1
  %idx.ext.i = trunc i64 %start to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp1.not = icmp eq i64 %1, 0
  br i1 %cmp1.not, label %for.inc, label %for.body.lr.ph.if.then_crit_edge

for.body.lr.ph.if.then_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.body.5.if.then_crit_edge, %for.body.4.if.then_crit_edge, %for.body.3.if.then_crit_edge, %for.body.2.if.then_crit_edge, %for.body.1.if.then_crit_edge, %for.body.lr.ph.if.then_crit_edge
  %key.07.lcssa = phi i64 [ %start, %for.body.lr.ph.if.then_crit_edge ], [ %inc, %for.body.1.if.then_crit_edge ], [ %inc.1, %for.body.2.if.then_crit_edge ], [ %inc.2, %for.body.3.if.then_crit_edge ], [ %inc.3, %for.body.4.if.then_crit_edge ], [ %inc.4, %for.body.5.if.then_crit_edge ]
  %2 = ptrtoint ptr %keyp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %key.07.lcssa, ptr %keyp, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %start)
  %cmp = icmp ult i64 %start, 5
  br i1 %cmp, label %for.body.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  %inc = add nuw nsw i64 %start, 1
  %idx.ext.i.1 = trunc i64 %inc to i32
  %add.ptr.i.1 = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i.1
  %3 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp1.not.1 = icmp eq i64 %4, 0
  br i1 %cmp1.not.1, label %for.inc.1, label %for.body.1.if.then_crit_edge

for.body.1.if.then_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %start)
  %cmp.1 = icmp ult i64 %start, 4
  br i1 %cmp.1, label %for.body.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  %inc.1 = add nuw nsw i64 %start, 2
  %idx.ext.i.2 = trunc i64 %inc.1 to i32
  %add.ptr.i.2 = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i.2
  %5 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp1.not.2 = icmp eq i64 %6, 0
  br i1 %cmp1.not.2, label %for.inc.2, label %for.body.2.if.then_crit_edge

for.body.2.if.then_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %start)
  %cmp.2 = icmp ult i64 %start, 3
  br i1 %cmp.2, label %for.body.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  %inc.2 = add nuw nsw i64 %start, 3
  %idx.ext.i.3 = trunc i64 %inc.2 to i32
  %add.ptr.i.3 = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i.3
  %7 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp1.not.3 = icmp eq i64 %8, 0
  br i1 %cmp1.not.3, label %for.inc.3, label %for.body.3.if.then_crit_edge

for.body.3.if.then_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %start)
  %cmp.3 = icmp ult i64 %start, 2
  br i1 %cmp.3, label %for.body.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.4:                                       ; preds = %for.inc.3
  %inc.3 = add nuw nsw i64 %start, 4
  %idx.ext.i.4 = trunc i64 %inc.3 to i32
  %add.ptr.i.4 = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i.4
  %9 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp1.not.4 = icmp eq i64 %10, 0
  br i1 %cmp1.not.4, label %for.inc.4, label %for.body.4.if.then_crit_edge

for.body.4.if.then_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.4:                                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start)
  %cmp.4 = icmp eq i64 %start, 0
  br i1 %cmp.4, label %for.body.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.5:                                       ; preds = %for.inc.4
  %inc.4 = add nuw nsw i64 %start, 5
  %idx.ext.i.5 = trunc i64 %inc.4 to i32
  %add.ptr.i.5 = getelementptr i64, ptr %add.ptr.i.i, i32 %idx.ext.i.5
  %11 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp1.not.5 = icmp eq i64 %12, 0
  br i1 %cmp1.not.5, label %for.body.5.cleanup_crit_edge, label %for.body.5.if.then_crit_edge

for.body.5.if.then_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.5.cleanup_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.body.5.cleanup_crit_edge ], [ -2, %for.inc.4.cleanup_crit_edge ], [ -2, %for.inc.3.cleanup_crit_edge ], [ -2, %for.inc.2.cleanup_crit_edge ], [ -2, %for.inc.1.cleanup_crit_edge ], [ -2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_direct_last_key(ptr nocapture noundef readonly %direct, ptr nocapture noundef writeonly %keyp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 1
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp1.not = icmp eq i64 %1, 0
  %spec.select = select i1 %cmp1.not, i64 6, i64 0
  %add.ptr.i.1 = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 2
  %2 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp1.not.1 = icmp eq i64 %3, 0
  %spec.select.1 = select i1 %cmp1.not.1, i64 %spec.select, i64 1
  %add.ptr.i.2 = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 3
  %4 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp1.not.2 = icmp eq i64 %5, 0
  %spec.select.2 = select i1 %cmp1.not.2, i64 %spec.select.1, i64 2
  %add.ptr.i.3 = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 4
  %6 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp1.not.3 = icmp eq i64 %7, 0
  %spec.select.3 = select i1 %cmp1.not.3, i64 %spec.select.2, i64 3
  %add.ptr.i.4 = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 5
  %8 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp1.not.4 = icmp eq i64 %9, 0
  %spec.select.4 = select i1 %cmp1.not.4, i64 %spec.select.3, i64 4
  %add.ptr.i.5 = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 6
  %10 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.i.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp1.not.5 = icmp eq i64 %11, 0
  %spec.select.5 = select i1 %cmp1.not.5, i64 %spec.select.4, i64 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 6, i64 %spec.select.5)
  %cmp2 = icmp eq i64 %spec.select.5, 6
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %keyp to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %spec.select.5, ptr %keyp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nilfs_direct_check_insert(ptr nocapture noundef readnone %bmap, i64 noundef %key) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %key)
  %cmp = icmp ugt i64 %key, 5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_direct_gather_data(ptr nocapture noundef readonly %direct, ptr nocapture noundef writeonly %keys, ptr nocapture noundef writeonly %ptrs, i32 noundef %nitems) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %nitems, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp117.not = icmp eq i32 %0, 0
  br i1 %cmp117.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 1
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp3.not = icmp eq i64 %2, 0
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i64 @llvm.bswap.i64(i64 %2) #8
  %4 = ptrtoint ptr %keys to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %keys, align 8
  %5 = ptrtoint ptr %ptrs to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %3, ptr %ptrs, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ 1, %if.then5 ], [ 0, %for.body.for.inc_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp1 = icmp ugt i32 %0, 1
  br i1 %cmp1, label %for.body.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %add.ptr.i.1 = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 2
  %6 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp3.not.1 = icmp eq i64 %7, 0
  br i1 %cmp3.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.then5.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #8
  %arrayidx.1 = getelementptr i64, ptr %keys, i32 %n.1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1, ptr %arrayidx.1, align 8
  %arrayidx6.1 = getelementptr i64, ptr %ptrs, i32 %n.1
  %10 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %8, ptr %arrayidx6.1, align 8
  %inc.1 = add nuw nsw i32 %n.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.body.1.for.inc.1_crit_edge
  %n.1.1 = phi i32 [ %inc.1, %if.then5.1 ], [ %n.1, %for.body.1.for.inc.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp1.1 = icmp ugt i32 %0, 2
  br i1 %cmp1.1, label %for.body.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %add.ptr.i.2 = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 3
  %11 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp3.not.2 = icmp eq i64 %12, 0
  br i1 %cmp3.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.then5.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #8
  %arrayidx.2 = getelementptr i64, ptr %keys, i32 %n.1.1
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 2, ptr %arrayidx.2, align 8
  %arrayidx6.2 = getelementptr i64, ptr %ptrs, i32 %n.1.1
  %15 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %13, ptr %arrayidx6.2, align 8
  %inc.2 = add nsw i32 %n.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %for.body.2.for.inc.2_crit_edge
  %n.1.2 = phi i32 [ %inc.2, %if.then5.2 ], [ %n.1.1, %for.body.2.for.inc.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp1.2 = icmp ugt i32 %0, 3
  br i1 %cmp1.2, label %for.body.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %add.ptr.i.3 = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 4
  %16 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp3.not.3 = icmp eq i64 %17, 0
  br i1 %cmp3.not.3, label %for.body.3.for.inc.3_crit_edge, label %if.then5.3

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then5.3:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #8
  %arrayidx.3 = getelementptr i64, ptr %keys, i32 %n.1.2
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 3, ptr %arrayidx.3, align 8
  %arrayidx6.3 = getelementptr i64, ptr %ptrs, i32 %n.1.2
  %20 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %18, ptr %arrayidx6.3, align 8
  %inc.3 = add nsw i32 %n.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then5.3, %for.body.3.for.inc.3_crit_edge
  %n.1.3 = phi i32 [ %inc.3, %if.then5.3 ], [ %n.1.2, %for.body.3.for.inc.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp1.3 = icmp ugt i32 %0, 4
  br i1 %cmp1.3, label %for.body.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.4:                                       ; preds = %for.inc.3
  %add.ptr.i.4 = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 5
  %21 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.i.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp3.not.4 = icmp eq i64 %22, 0
  br i1 %cmp3.not.4, label %for.body.4.for.inc.4_crit_edge, label %if.then5.4

for.body.4.for.inc.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then5.4:                                       ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #8
  %arrayidx.4 = getelementptr i64, ptr %keys, i32 %n.1.3
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 4, ptr %arrayidx.4, align 8
  %arrayidx6.4 = getelementptr i64, ptr %ptrs, i32 %n.1.3
  %25 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %23, ptr %arrayidx6.4, align 8
  %inc.4 = add i32 %n.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then5.4, %for.body.4.for.inc.4_crit_edge
  %n.1.4 = phi i32 [ %inc.4, %if.then5.4 ], [ %n.1.3, %for.body.4.for.inc.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %cmp1.4 = icmp ugt i32 %0, 5
  br i1 %cmp1.4, label %for.body.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.5:                                       ; preds = %for.inc.4
  %add.ptr.i.5 = getelementptr %struct.nilfs_direct_node, ptr %direct, i32 6
  %26 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr.i.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp3.not.5 = icmp eq i64 %27, 0
  br i1 %cmp3.not.5, label %for.body.5.for.end_crit_edge, label %if.then5.5

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then5.5:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #8
  %arrayidx.5 = getelementptr i64, ptr %keys, i32 %n.1.4
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 5, ptr %arrayidx.5, align 8
  %arrayidx6.5 = getelementptr i64, ptr %ptrs, i32 %n.1.4
  %30 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %28, ptr %arrayidx6.5, align 8
  %inc.5 = add i32 %n.1.4, 1
  br label %for.end

for.end:                                          ; preds = %if.then5.5, %for.body.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %n.1, %for.inc.for.end_crit_edge ], [ %n.1.1, %for.inc.1.for.end_crit_edge ], [ %n.1.2, %for.inc.2.for.end_crit_edge ], [ %n.1.3, %for.inc.3.for.end_crit_edge ], [ %n.1.4, %for.inc.4.for.end_crit_edge ], [ %inc.5, %if.then5.5 ], [ %n.1.4, %for.body.5.for.end_crit_edge ]
  ret i32 %n.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_bmap_get_dat(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_translate(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_inode_add_blocks(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nilfs_bmap_find_target_seq(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nilfs_bmap_find_target_in_group(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_prepare_alloc(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_commit_alloc(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_inode_sub_blocks(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_prepare_end(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_commit_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nilfs_bmap_data_get_key(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_prepare_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_commit_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_mark_dirty(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_prepare_start(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dat_commit_start(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @nilfs_direct_ops, !1, !"nilfs_direct_ops", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/direct.c", i32 351, i32 43}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/direct.c", i32 331, i32 3}
!4 = !{ptr @__func__.nilfs_direct_assign, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/nilfs2/direct.c", i32 339, i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"auto-init"}
!17 = !{!"branch_weights", i32 1, i32 2000}
