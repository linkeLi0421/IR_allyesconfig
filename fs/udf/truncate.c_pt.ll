; ModuleID = '/llk/IR_all_yes/fs/udf/truncate.c_pt.bc'
source_filename = "../fs/udf/truncate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.extent_position = type { ptr, i32, %struct.kernel_lb_addr }
%struct.kernel_lb_addr = type { i32, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.allocExtDesc = type { %struct.tag, i32, i32 }
%struct.tag = type { i16, i16, i8, i8, i16, i16, i16, i32 }
%struct.udf_sb_info = type { ptr, [32 x i8], i16, i16, i32, i32, i32, ptr, i16, %struct.kgid_t, %struct.kuid_t, i16, i16, %struct.rwlock_t, %struct.timespec64, i16, i16, i32, ptr, ptr, %struct.mutex, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@__func__.udf_truncate_tail_extent = private unnamed_addr constant [25 x i8] c"udf_truncate_tail_extent\00", align 1
@.str = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Too long extent after EOF in inode %u: i_size: %lld lbcount: %lld extent %u+%u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Extent after EOF in inode %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/udf/truncate.c\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 255]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 97, i32 5 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 109, i32 5 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [21 x i8] c"../fs/udf/truncate.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 226, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udf_truncate_tail_extent(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %epos = alloca %struct.extent_position, align 4
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %elen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #4
  %0 = call ptr @memset(ptr %epos, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #4
  %1 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %eloc, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #4
  %2 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %elen, align 4, !annotation !16
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %3 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.lshr)
  %cmp = icmp eq i32 %bf.lshr, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  %i_lenExtents = getelementptr i8, ptr %inode, i32 -216
  %6 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_lenExtents, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp1 = icmp eq i64 %5, %7
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp8 = icmp ult i32 %bf.load, 536870912
  br i1 %cmp8, label %if.end4.if.end20_crit_edge, label %if.else

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.lshr)
  %cmp13 = icmp eq i32 %bf.lshr, 1
  br i1 %cmp13, label %if.else.if.end20_crit_edge, label %do.body

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/truncate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #4, !srcloc !17
  unreachable

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.end4.if.end20_crit_edge
  %adsize.0 = phi i32 [ 8, %if.end4.if.end20_crit_edge ], [ 16, %if.else.if.end20_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end20
  %lbcount.0 = phi i64 [ 0, %if.end20 ], [ %add, %while.body.while.cond_crit_edge ]
  %call21 = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call21)
  %cmp22.not = icmp eq i8 %call21, -1
  br i1 %cmp22.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond
  %11 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elen, align 4
  %conv24 = zext i32 %12 to i64
  %add = add i64 %lbcount.0, %conv24
  %13 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size, align 8
  %cmp26 = icmp ugt i64 %add, %14
  br i1 %cmp26, label %if.then28, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

if.then28:                                        ; preds = %while.body
  %sub = sub i64 %add, %14
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize, align 16
  %conv30 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv30)
  %cmp31.not = icmp ult i64 %sub, %conv30
  br i1 %cmp31.not, label %if.then28.if.end36_crit_edge, label %if.then33

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino, align 8
  %21 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eloc, align 8
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %16, ptr noundef nonnull @__func__.udf_truncate_tail_extent, ptr noundef nonnull @.str, i32 noundef %20, i64 noundef %14, i64 noundef %add, i32 noundef %22, i32 noundef %12) #4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then28.if.end36_crit_edge
  %23 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %elen, align 4
  %25 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_size, align 8
  %sub39.neg = sub i64 %26, %add
  %27 = trunc i64 %sub39.neg to i32
  %conv41 = add i32 %24, %27
  %offset = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset, align 4
  %sub42 = sub i32 %29, %adsize.0
  store i32 %sub42, ptr %offset, align 4
  call fastcc void @extent_trunc(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, i8 noundef signext %call21, i32 noundef %24, i32 noundef %conv41)
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 4
  %add44 = add i32 %31, %adsize.0
  store i32 %add44, ptr %offset, align 4
  %call45 = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call45)
  %cmp47.not = icmp eq i8 %call45, -1
  br i1 %cmp47.not, label %if.end36.while.end_crit_edge, label %if.then49

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.then49:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %i_ino51 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino51, align 8
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %33, ptr noundef nonnull @__func__.udf_truncate_tail_extent, ptr noundef nonnull @.str.1, i32 noundef %35) #4
  br label %while.end

while.end:                                        ; preds = %if.then49, %if.end36.while.end_crit_edge, %while.cond.while.end_crit_edge
  %36 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_size, align 8
  %38 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %i_lenExtents, align 8
  %39 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %epos, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %while.end.cleanup_crit_edge, label %if.then.i

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %40) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @udf_next_aext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_udf_warn(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @extent_trunc(ptr noundef %inode, ptr noundef %epos, ptr noundef %eloc, i8 noundef signext %etype, i32 noundef %elen, i32 noundef %nelen) unnamed_addr #0 align 64 {
entry:
  %neloc = alloca %struct.kernel_lb_addr, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %neloc) #4
  %0 = ptrtoint ptr %neloc to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %neloc, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_blocksize, align 16
  %add = add i32 %4, -1
  %sub = add i32 %add, %elen
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %6 to i32
  %shr = lshr i32 %sub, %conv
  %sub5 = add i32 %add, %nelen
  %shr9 = lshr i32 %sub5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nelen)
  %tobool.not = icmp eq i32 %nelen, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %etype)
  %cmp = icmp eq i8 %etype, 1
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @udf_free_blocks(ptr noundef %2, ptr noundef %inode, ptr noundef %eloc, i32 noundef 0, i32 noundef %shr) #4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %eloc to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %eloc, align 4
  %9 = ptrtoint ptr %neloc to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %neloc, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  %etype.addr.0 = phi i8 [ 2, %if.then12 ], [ %etype, %if.else ]
  %conv1459 = zext i8 %etype.addr.0 to i32
  %shl = shl i32 %conv1459, 30
  %or = or i32 %shl, %nelen
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry.if.end15_crit_edge
  %etype.addr.1 = phi i8 [ %etype.addr.0, %if.end ], [ %etype, %entry.if.end15_crit_edge ]
  %nelen.addr.0 = phi i32 [ %or, %if.end ], [ 0, %entry.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nelen.addr.0, i32 %elen)
  %cmp16.not = icmp eq i32 %nelen.addr.0, %elen
  br i1 %cmp16.not, label %if.end15.if.end35_crit_edge, label %if.then18

if.end15.if.end35_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then18:                                        ; preds = %if.end15
  call void @udf_write_aext(ptr noundef %inode, ptr noundef %epos, ptr noundef nonnull %neloc, i32 noundef %nelen.addr.0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr9)
  %cmp19 = icmp sgt i32 %shr, %shr9
  br i1 %cmp19, label %if.then21, label %if.then18.if.end35_crit_edge

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then21:                                        ; preds = %if.then18
  %10 = zext i8 %etype.addr.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %etype.addr.1, label %if.then21.if.then30_crit_edge [
    i8 0, label %if.then25
    i8 2, label %if.then21.if.end35_crit_edge
  ]

if.then21.if.end35_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then21.if.then30_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #4
  br label %if.then30

if.then30:                                        ; preds = %if.then25, %if.then21.if.then30_crit_edge
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %sub32 = sub i32 %shr, %shr9
  call void @udf_free_blocks(ptr noundef %12, ptr noundef %inode, ptr noundef %eloc, i32 noundef %shr9, i32 noundef %sub32) #4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.then21.if.end35_crit_edge, %if.then18.if.end35_crit_edge, %if.end15.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %neloc) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_udf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udf_discard_prealloc(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %neloc.i = alloca %struct.kernel_lb_addr, align 8
  %epos = alloca %struct.extent_position, align 8
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %elen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #4
  %0 = ptrtoint ptr %epos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %epos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #4
  %1 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %eloc, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #4
  %2 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %elen, align 4, !annotation !16
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %3 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.lshr)
  %cmp = icmp eq i32 %bf.lshr, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  %i_lenExtents = getelementptr i8, ptr %inode, i32 -216
  %6 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_lenExtents, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp1 = icmp eq i64 %5, %7
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp5 = icmp ult i32 %bf.load, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.lshr)
  %cmp10 = icmp eq i32 %bf.lshr, 1
  %. = select i1 %cmp10, i32 -16, i32 0
  %adsize.0.neg = select i1 %cmp5, i32 -8, i32 %.
  %block = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %i_location = getelementptr i8, ptr %inode, i32 -240
  %8 = ptrtoint ptr %i_location to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_location, align 8
  %10 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %block, align 8
  %call1580 = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call1580)
  %cmp16.not81 = icmp eq i8 %call1580, -1
  br i1 %cmp16.not81, label %if.end.if.end51_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %call1583 = phi i8 [ %call15, %while.body.while.body_crit_edge ], [ %call1580, %if.end.while.body_crit_edge ]
  %lbcount.082 = phi i64 [ %add, %while.body.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %11 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elen, align 4
  %conv18 = zext i32 %12 to i64
  %add = add i64 %lbcount.082, %conv18
  %call15 = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1) #4
  %cmp16.not = icmp eq i8 %call15, -1
  br i1 %cmp16.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call1583)
  %cmp20 = icmp eq i8 %call1583, 1
  br i1 %cmp20, label %if.then22, label %while.end.if.end51_crit_edge

while.end.if.end51_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then22:                                        ; preds = %while.end
  %offset = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %sub = add i32 %14, %adsize.0.neg
  store i32 %sub, ptr %offset, align 4
  %15 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %elen, align 4
  %conv23 = zext i32 %16 to i64
  %sub24 = sub i64 %add, %conv23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %neloc.i) #4
  %17 = ptrtoint ptr %neloc.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %neloc.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize.i, align 16
  %add.i = add i32 %21, -1
  %sub.i = add i32 %add.i, %16
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %23 to i32
  %shr.i = lshr i32 %sub.i, %conv.i
  %shr9.i = lshr i32 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp16.not.i = icmp eq i32 %16, 0
  br i1 %cmp16.not.i, label %if.then22.extent_trunc.exit_crit_edge, label %if.then18.i

if.then22.extent_trunc.exit_crit_edge:            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %extent_trunc.exit

if.then18.i:                                      ; preds = %if.then22
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %neloc.i, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr9.i)
  %cmp19.i = icmp sgt i32 %shr.i, %shr9.i
  br i1 %cmp19.i, label %if.then30.i, label %if.then18.i.extent_trunc.exit_crit_edge

if.then18.i.extent_trunc.exit_crit_edge:          ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extent_trunc.exit

if.then30.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i, align 4
  %sub32.i = sub i32 %shr.i, %shr9.i
  call void @udf_free_blocks(ptr noundef %25, ptr noundef %inode, ptr noundef nonnull %eloc, i32 noundef %shr9.i, i32 noundef %sub32.i) #4
  br label %extent_trunc.exit

extent_trunc.exit:                                ; preds = %if.then30.i, %if.then18.i.extent_trunc.exit_crit_edge, %if.then22.extent_trunc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %neloc.i) #4
  %26 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %epos, align 8
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %if.then25, label %if.else29

if.then25:                                        ; preds = %extent_trunc.exit
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset, align 4
  %30 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i = load i32, ptr %i_alloc_type, align 8
  %31 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then25.udf_file_entry_alloc_offset.exit_crit_edge

if.then25.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %if.then25
  %32 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool4.not.i = icmp eq i32 %32, 0
  %i_lenEAttr7.i = getelementptr i8, ptr %inode, i32 -224
  %33 = ptrtoint ptr %i_lenEAttr7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_lenEAttr7.i, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i78 = add i32 %34, 216
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %add8.i = add i32 %34, 176
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %if.then25.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i78, %if.then5.i ], [ %add8.i, %if.else6.i ], [ 40, %if.then25.udf_file_entry_alloc_offset.exit_crit_edge ]
  %sub28 = sub i32 %29, %retval.0.i
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  %35 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub28, ptr %i_lenAlloc, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #4
  br label %if.end51

if.else29:                                        ; preds = %extent_trunc.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %36 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_data, align 4
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset, align 4
  %sub32 = add i32 %39, -24
  %40 = call i32 @llvm.bswap.i32(i32 %sub32)
  %lengthAllocDescs = getelementptr inbounds %struct.allocExtDesc, ptr %37, i32 0, i32 2
  %41 = ptrtoint ptr %lengthAllocDescs to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %lengthAllocDescs, align 1
  %42 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %s_flags.i, align 4
  %48 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool34.not = icmp eq i32 %48, 0
  br i1 %tobool34.not, label %if.else29.if.end48_crit_edge, label %lor.lhs.false35

if.else29.if.end48_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

lor.lhs.false35:                                  ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #6
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %45, i32 0, i32 16
  %49 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %s_udfrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %50)
  %cmp39 = icmp ugt i16 %50, 512
  %spec.select = select i1 %cmp39, i32 %39, i32 24
  br label %if.end48

if.end48:                                         ; preds = %lor.lhs.false35, %if.else29.if.end48_crit_edge
  %.sink88 = phi i32 [ %39, %if.else29.if.end48_crit_edge ], [ %spec.select, %lor.lhs.false35 ]
  %51 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data, align 4
  call void @udf_update_tag(ptr noundef %52, i32 noundef %.sink88) #4
  %53 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %epos, align 8
  call void @mark_buffer_dirty_inode(ptr noundef %54, ptr noundef %inode) #4
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %udf_file_entry_alloc_offset.exit, %while.end.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %lbcount.1 = phi i64 [ %sub24, %if.end48 ], [ %sub24, %udf_file_entry_alloc_offset.exit ], [ %add, %while.end.if.end51_crit_edge ], [ 0, %if.end.if.end51_crit_edge ]
  %55 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %lbcount.1, ptr %i_lenExtents, align 8
  %56 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %epos, align 8
  %tobool.not.i79 = icmp eq ptr %57, null
  br i1 %tobool.not.i79, label %if.end51.cleanup_crit_edge, label %if.then.i

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %57) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end51.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_update_tag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_truncate_extents(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %neloc.i = alloca %struct.kernel_lb_addr, align 8
  %epos = alloca %struct.extent_position, align 4
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %neloc = alloca %struct.kernel_lb_addr, align 8
  %elen = alloca i32, align 4
  %offset = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #4
  %0 = call ptr @memset(ptr %epos, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #4
  %1 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %eloc, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %neloc) #4
  %2 = ptrtoint ptr %neloc to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %neloc, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #4
  %3 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %elen, align 4, !annotation !16
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %9 to i64
  %shr = ashr i64 %7, %sh_prom
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %offset, align 8, !annotation !16
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %11 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp = icmp ult i32 %bf.load, 536870912
  br i1 %cmp, label %entry.if.end12_crit_edge, label %if.else

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.else:                                          ; preds = %entry
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp5 = icmp eq i32 %bf.lshr.mask, 536870912
  br i1 %cmp5, label %if.else.if.end12_crit_edge, label %do.body

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/truncate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #4, !srcloc !18
  unreachable

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %entry.if.end12_crit_edge
  %adsize.0 = phi i32 [ 8, %entry.if.end12_crit_edge ], [ 16, %if.else.if.end12_crit_edge ]
  %call13 = call signext i8 @inode_bmap(ptr noundef %inode, i64 noundef %shr, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset) #4
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset, align 8
  %14 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom16 = zext i8 %15 to i64
  %shl = shl i64 %13, %sh_prom16
  %16 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %19, -1
  %conv18 = zext i32 %sub to i64
  %and = and i64 %17, %conv18
  %add = add i64 %and, %shl
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call13)
  %cmp20 = icmp eq i8 %call13, -1
  br i1 %cmp20, label %if.then22, label %if.end47

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %tobool.not = icmp eq i64 %add, 0
  br i1 %tobool.not, label %if.then22.cleanup_crit_edge, label %do.end34, !prof !19

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end34:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 226, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end47:                                         ; preds = %if.end12
  %offset48 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %20 = ptrtoint ptr %offset48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset48, align 4
  %sub49 = sub i32 %21, %adsize.0
  store i32 %sub49, ptr %offset48, align 4
  %22 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %elen, align 4
  %conv50 = trunc i64 %add to i32
  call fastcc void @extent_trunc(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, i8 noundef signext %call13, i32 noundef %23, i32 noundef %conv50)
  %24 = ptrtoint ptr %offset48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset48, align 4
  %add52 = add i32 %25, %adsize.0
  store i32 %add52, ptr %offset48, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %tobool53.not = icmp eq i64 %add, 0
  %.add52 = select i1 %tobool53.not, i32 %25, i32 %add52
  %26 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %epos, align 4
  %tobool60.not = icmp eq ptr %27, null
  br i1 %tobool60.not, label %if.then61, label %if.else64

if.then61:                                        ; preds = %if.end47
  %28 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i = load i32, ptr %i_alloc_type, align 8
  %29 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then61.udf_file_entry_alloc_offset.exit_crit_edge

if.then61.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #6
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %if.then61
  %30 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool4.not.i = icmp eq i32 %30, 0
  %i_lenEAttr7.i = getelementptr i8, ptr %inode, i32 -224
  %31 = ptrtoint ptr %i_lenEAttr7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_lenEAttr7.i, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add i32 %32, 216
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %add8.i = add i32 %32, 176
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %if.then61.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then5.i ], [ %add8.i, %if.else6.i ], [ 40, %if.then61.udf_file_entry_alloc_offset.exit_crit_edge ]
  %sub63 = sub i32 %.add52, %retval.0.i
  br label %if.end66

if.else64:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %sub65 = add i32 %.add52, -24
  br label %if.end66

if.end66:                                         ; preds = %if.else64, %udf_file_entry_alloc_offset.exit
  %lenalloc.1 = phi i32 [ %sub65, %if.else64 ], [ %sub63, %udf_file_entry_alloc_offset.exit ]
  %block = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %33 = call i32 @llvm.bswap.i32(i32 %lenalloc.1) #4
  %add.i220 = add i32 %lenalloc.1, 24
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %if.end66
  %indirect_ext_len.0.ph = phi i32 [ 0, %if.end66 ], [ %indirect_ext_len.0.ph.be, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %extent_trunc.exit, %while.cond.outer
  %call67 = call signext i8 @udf_current_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 0) #4
  %34 = zext i8 %call67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %call67, label %if.else125 [
    i8 -1, label %while.end
    i8 3, label %if.then74
  ]

if.then74:                                        ; preds = %while.cond
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %neloc, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indirect_ext_len.0.ph)
  %tobool75.not = icmp eq i32 %indirect_ext_len.0.ph, 0
  %35 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %epos, align 4
  %tobool100.not = icmp eq ptr %36, null
  br i1 %tobool75.not, label %if.else98, label %do.body77

do.body77:                                        ; preds = %if.then74
  br i1 %tobool100.not, label %do.body89, label %do.end97, !prof !20

do.body89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/truncate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 249, 0\0A.popsection", ""() #4, !srcloc !21
  unreachable

do.end97:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #6
  call void @udf_free_blocks(ptr noundef %5, ptr noundef null, ptr noundef %block, i32 noundef 0, i32 noundef %indirect_ext_len.0.ph) #4
  br label %if.end104

if.else98:                                        ; preds = %if.then74
  br i1 %tobool100.not, label %if.then101, label %if.else102

if.then101:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %lenalloc.1, ptr %i_lenAlloc, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #4
  br label %if.end104

if.else102:                                       ; preds = %if.else98
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i, align 16
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %36, i32 0, i32 5
  %42 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data.i, align 4
  %lengthAllocDescs.i = getelementptr inbounds %struct.allocExtDesc, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %lengthAllocDescs.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %33, ptr %lengthAllocDescs.i, align 1
  %45 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %s_flags.i.i, align 4
  %48 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i219 = icmp eq i32 %48, 0
  br i1 %tobool.not.i219, label %if.else102.if.then.i_crit_edge, label %lor.lhs.false.i

if.else102.if.then.i_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else102
  %s_udfrev.i = getelementptr inbounds %struct.udf_sb_info, ptr %41, i32 0, i32 16
  %49 = ptrtoint ptr %s_udfrev.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %s_udfrev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %50)
  %cmp.i = icmp ugt i16 %50, 512
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.udf_update_alloc_ext_desc.exit_crit_edge

lor.lhs.false.i.udf_update_alloc_ext_desc.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %udf_update_alloc_ext_desc.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else102.if.then.i_crit_edge
  br label %udf_update_alloc_ext_desc.exit

udf_update_alloc_ext_desc.exit:                   ; preds = %if.then.i, %lor.lhs.false.i.udf_update_alloc_ext_desc.exit_crit_edge
  %len.0.i = phi i32 [ %add.i220, %if.then.i ], [ 24, %lor.lhs.false.i.udf_update_alloc_ext_desc.exit_crit_edge ]
  %51 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data.i, align 4
  call void @udf_update_tag(ptr noundef %52, i32 noundef %len.0.i) #4
  %53 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %epos, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %54, ptr noundef %inode) #4
  br label %if.end104

if.end104:                                        ; preds = %udf_update_alloc_ext_desc.exit, %if.then101, %do.end97
  %55 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %epos, align 4
  %tobool.not.i221 = icmp eq ptr %56, null
  br i1 %tobool.not.i221, label %if.end104.brelse.exit_crit_edge, label %if.then.i222

if.end104.brelse.exit_crit_edge:                  ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit

if.then.i222:                                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %56) #4
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i222, %if.end104.brelse.exit_crit_edge
  %57 = ptrtoint ptr %offset48 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 24, ptr %offset48, align 4
  %58 = ptrtoint ptr %eloc to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %eloc, align 8
  %60 = ptrtoint ptr %block to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %block, align 4
  %61 = lshr i64 %59, 32
  %62 = trunc i64 %61 to i32
  %63 = lshr i64 %59, 16
  %64 = trunc i64 %63 to i16
  %call.i = call i32 @udf_get_pblock(ptr noundef %5, i32 noundef %62, i16 noundef zeroext %64, i32 noundef 0) #4
  %call109 = call ptr @udf_tread(ptr noundef %5, i32 noundef %call.i) #4
  %65 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call109, ptr %epos, align 4
  %tobool112.not = icmp eq ptr %call109, null
  br i1 %tobool112.not, label %brelse.exit.cleanup_crit_edge, label %if.end114

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end114:                                        ; preds = %brelse.exit
  %66 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %elen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool115.not = icmp eq i32 %67, 0
  br i1 %tobool115.not, label %if.end114.while.cond.outer.backedge_crit_edge, label %if.then116

if.end114.while.cond.outer.backedge_crit_edge:    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.outer.backedge

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_blocksize, align 16
  %add118 = add i32 %67, -1
  %sub119 = add i32 %add118, %69
  %70 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %s_blocksize_bits, align 4
  %conv121 = zext i8 %71 to i32
  %shr122 = lshr i32 %sub119, %conv121
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then116, %if.end114.while.cond.outer.backedge_crit_edge
  %indirect_ext_len.0.ph.be = phi i32 [ 1, %if.end114.while.cond.outer.backedge_crit_edge ], [ %shr122, %if.then116 ]
  br label %while.cond.outer

if.else125:                                       ; preds = %while.cond
  %72 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %elen, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %neloc.i) #4
  %74 = ptrtoint ptr %neloc.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %neloc.i, align 8
  %75 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_blocksize.i, align 16
  %add.i224 = add i32 %78, -1
  %sub.i = add i32 %add.i224, %73
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 2
  %79 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %80 to i32
  %shr.i = lshr i32 %sub.i, %conv.i
  %shr9.i = lshr i32 %add.i224, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp16.not.i = icmp eq i32 %73, 0
  br i1 %cmp16.not.i, label %if.else125.extent_trunc.exit_crit_edge, label %if.then18.i

if.else125.extent_trunc.exit_crit_edge:           ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #6
  br label %extent_trunc.exit

if.then18.i:                                      ; preds = %if.else125
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %neloc.i, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr9.i)
  %cmp19.i = icmp sgt i32 %shr.i, %shr9.i
  br i1 %cmp19.i, label %if.then21.i, label %if.then18.i.extent_trunc.exit_crit_edge

if.then18.i.extent_trunc.exit_crit_edge:          ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extent_trunc.exit

if.then21.i:                                      ; preds = %if.then18.i
  %81 = zext i8 %call67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %call67, label %if.then21.i.if.then30.i_crit_edge [
    i8 0, label %if.then25.i
    i8 2, label %if.then21.i.extent_trunc.exit_crit_edge
  ]

if.then21.i.extent_trunc.exit_crit_edge:          ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %extent_trunc.exit

if.then21.i.if.then30.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30.i

if.then25.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #4
  br label %if.then30.i

if.then30.i:                                      ; preds = %if.then25.i, %if.then21.i.if.then30.i_crit_edge
  %82 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i_sb, align 4
  %sub32.i = sub i32 %shr.i, %shr9.i
  call void @udf_free_blocks(ptr noundef %83, ptr noundef %inode, ptr noundef nonnull %eloc, i32 noundef %shr9.i, i32 noundef %sub32.i) #4
  br label %extent_trunc.exit

extent_trunc.exit:                                ; preds = %if.then30.i, %if.then21.i.extent_trunc.exit_crit_edge, %if.then18.i.extent_trunc.exit_crit_edge, %if.else125.extent_trunc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %neloc.i) #4
  %84 = ptrtoint ptr %offset48 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset48, align 4
  %add127 = add i32 %85, %adsize.0
  store i32 %add127, ptr %offset48, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indirect_ext_len.0.ph)
  %tobool129.not = icmp eq i32 %indirect_ext_len.0.ph, 0
  %86 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %epos, align 4
  %tobool155.not = icmp eq ptr %87, null
  br i1 %tobool129.not, label %if.else153, label %do.body131

do.body131:                                       ; preds = %while.end
  br i1 %tobool155.not, label %do.body143, label %do.end151, !prof !20

do.body143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/truncate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

do.end151:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #6
  call void @udf_free_blocks(ptr noundef %5, ptr noundef null, ptr noundef %block, i32 noundef 0, i32 noundef %indirect_ext_len.0.ph) #4
  br label %if.end160

if.else153:                                       ; preds = %while.end
  br i1 %tobool155.not, label %if.then156, label %if.else158

if.then156:                                       ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %lenalloc.1, ptr %i_lenAlloc, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #4
  br label %if.end160

if.else158:                                       ; preds = %if.else153
  %89 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i226 = getelementptr inbounds %struct.super_block, ptr %90, i32 0, i32 33
  %91 = ptrtoint ptr %s_fs_info.i.i226 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info.i.i226, align 16
  %b_data.i227 = getelementptr inbounds %struct.buffer_head, ptr %87, i32 0, i32 5
  %93 = ptrtoint ptr %b_data.i227 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %b_data.i227, align 4
  %lengthAllocDescs.i228 = getelementptr inbounds %struct.allocExtDesc, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %lengthAllocDescs.i228 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %33, ptr %lengthAllocDescs.i228, align 1
  %96 = load ptr, ptr %s_fs_info.i.i226, align 16
  %s_flags.i.i229 = getelementptr inbounds %struct.udf_sb_info, ptr %96, i32 0, i32 17
  %97 = ptrtoint ptr %s_flags.i.i229 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %s_flags.i.i229, align 4
  %99 = and i32 %98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i230 = icmp eq i32 %99, 0
  br i1 %tobool.not.i230, label %if.else158.if.then.i235_crit_edge, label %lor.lhs.false.i233

if.else158.if.then.i235_crit_edge:                ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i235

lor.lhs.false.i233:                               ; preds = %if.else158
  %s_udfrev.i231 = getelementptr inbounds %struct.udf_sb_info, ptr %92, i32 0, i32 16
  %100 = ptrtoint ptr %s_udfrev.i231 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %s_udfrev.i231, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %101)
  %cmp.i232 = icmp ugt i16 %101, 512
  br i1 %cmp.i232, label %lor.lhs.false.i233.if.then.i235_crit_edge, label %lor.lhs.false.i233.udf_update_alloc_ext_desc.exit238_crit_edge

lor.lhs.false.i233.udf_update_alloc_ext_desc.exit238_crit_edge: ; preds = %lor.lhs.false.i233
  call void @__sanitizer_cov_trace_pc() #6
  br label %udf_update_alloc_ext_desc.exit238

lor.lhs.false.i233.if.then.i235_crit_edge:        ; preds = %lor.lhs.false.i233
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i235

if.then.i235:                                     ; preds = %lor.lhs.false.i233.if.then.i235_crit_edge, %if.else158.if.then.i235_crit_edge
  br label %udf_update_alloc_ext_desc.exit238

udf_update_alloc_ext_desc.exit238:                ; preds = %if.then.i235, %lor.lhs.false.i233.udf_update_alloc_ext_desc.exit238_crit_edge
  %len.0.i236 = phi i32 [ %add.i220, %if.then.i235 ], [ 24, %lor.lhs.false.i233.udf_update_alloc_ext_desc.exit238_crit_edge ]
  %102 = ptrtoint ptr %b_data.i227 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %b_data.i227, align 4
  call void @udf_update_tag(ptr noundef %103, i32 noundef %len.0.i236) #4
  %104 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %epos, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %105, ptr noundef %inode) #4
  br label %if.end160

if.end160:                                        ; preds = %udf_update_alloc_ext_desc.exit238, %if.then156, %do.end151
  %106 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %i_size, align 8
  %i_lenExtents = getelementptr i8, ptr %inode, i32 -216
  %108 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %i_lenExtents, align 8
  %109 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %epos, align 4
  %tobool.not.i239 = icmp eq ptr %110, null
  br i1 %tobool.not.i239, label %if.end160.cleanup_crit_edge, label %if.then.i240

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i240:                                     ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %110) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i240, %if.end160.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge, %do.end34, %if.then22.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end34 ], [ 0, %if.then22.cleanup_crit_edge ], [ 0, %if.end160.cleanup_crit_edge ], [ 0, %if.then.i240 ], [ -5, %brelse.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %neloc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @inode_bmap(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @udf_current_aext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_write_aext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_free_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tread(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__func__.udf_truncate_tail_extent, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/udf/truncate.c", i32 97, i32 5}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/udf/truncate.c", i32 109, i32 5}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/udf/truncate.c", i32 226, i32 3}
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
!17 = !{i64 2153893019, i64 2153893500, i64 2153893056, i64 2153893112, i64 2153893146, i64 2153893170, i64 2153893211, i64 2153893232, i64 2153893260, i64 2153893294}
!18 = !{i64 2153895237, i64 2153895719, i64 2153895274, i64 2153895330, i64 2153895364, i64 2153895388, i64 2153895429, i64 2153895450, i64 2153895478, i64 2153895512}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2153897306, i64 2153897788, i64 2153897343, i64 2153897399, i64 2153897433, i64 2153897457, i64 2153897498, i64 2153897519, i64 2153897547, i64 2153897581}
!22 = !{i64 2153898886, i64 2153899368, i64 2153898923, i64 2153898979, i64 2153899013, i64 2153899037, i64 2153899078, i64 2153899099, i64 2153899127, i64 2153899161}
