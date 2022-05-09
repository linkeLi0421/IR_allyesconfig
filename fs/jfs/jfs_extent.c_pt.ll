; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_extent.c_pt.bc'
source_filename = "../fs/jfs/jfs_extent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
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
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { ptr }
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
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.pxd_t = type { i32, i32 }
%struct.xad = type { i8, [2 x i8], i8, i32, %struct.pxd_t }
%struct.dbmap = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i64], i64, i8 }
%struct.bmap = type { %struct.dbmap, ptr, %struct.mutex, [128 x %struct.atomic_t], ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"corrupt xtree\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [23 x i8] c"../fs/jfs/jfs_extent.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 378, i32 24 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @extAlloc(ptr noundef %ip, i64 noundef %xlen, i64 noundef %pno, ptr nocapture noundef %xp, i1 noundef zeroext %abnr) local_unnamed_addr #0 align 64 {
entry:
  %daddr.i = alloca i64, align 8
  %nxaddr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nxaddr) #5
  tail call void @txBeginAnon(ptr noundef %1) #5
  %add.ptr.i = getelementptr i8, ptr %ip, i32 -848
  %commit_mutex = getelementptr i8, ptr %ip, i32 -592
  tail call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #5
  %4 = tail call i64 @llvm.smin.i64(i64 %xlen, i64 16777215)
  %l2nbperpage = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %l2nbperpage to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %l2nbperpage, align 2
  %conv = sext i16 %6 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 %pno, %sh_prom
  %loc = getelementptr inbounds %struct.xad, ptr %xp, i32 0, i32 4
  %7 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %loc, align 4
  %9 = shl i32 %8, 24
  %conv.i = zext i32 %9 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 8
  %addr2.i = getelementptr inbounds %struct.xad, ptr %xp, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr2.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %conv1.i = zext i32 %12 to i64
  %add.i = or i64 %shl.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %tobool.not = icmp eq i64 %add.i, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %if.then4

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

if.then4:                                         ; preds = %entry
  %13 = and i32 %8, -256
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %conv7 = zext i32 %14 to i64
  %off1 = getelementptr inbounds %struct.xad, ptr %xp, i32 0, i32 2
  %15 = ptrtoint ptr %off1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %off1, align 1
  %conv8 = zext i8 %16 to i64
  %shl9 = shl nuw nsw i64 %conv8, 32
  %off2 = getelementptr inbounds %struct.xad, ptr %xp, i32 0, i32 3
  %17 = ptrtoint ptr %off2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %off2, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %conv10 = zext i32 %19 to i64
  %or = or i64 %shl9, %conv7
  %add = add nuw nsw i64 %or, %conv10
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shl)
  %cmp11 = icmp eq i64 %add, %shl
  br i1 %cmp11, label %land.lhs.true, label %if.then4.if.end23_crit_edge

if.then4.if.end23_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %xp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %xp, align 4
  %22 = and i8 %21, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %23 = icmp eq i8 %22, 0
  %cmp17 = xor i1 %23, %abnr
  %add20 = add nuw nsw i64 %add.i, %conv7
  %spec.select = select i1 %cmp17, i64 %add20, i64 0
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %if.then4.if.end23_crit_edge
  %xaddr.0 = phi i64 [ 0, %if.then4.if.end23_crit_edge ], [ %spec.select, %land.lhs.true ]
  %sub = add nsw i64 %conv7, -1
  %add22 = add nsw i64 %sub, %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add22)
  %tobool24.not = icmp eq i64 %add22, 0
  br i1 %tobool24.not, label %if.end23.cond.false_crit_edge, label %if.end23.cond.end_crit_edge

if.end23.cond.end_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.end23.cond.false_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.false:                                       ; preds = %if.end23.cond.false_crit_edge, %entry.cond.false_crit_edge
  %xaddr.1170 = phi i64 [ %xaddr.0, %if.end23.cond.false_crit_edge ], [ 0, %entry.cond.false_crit_edge ]
  %ixpxd = getelementptr i8, ptr %ip, i32 -832
  %24 = ptrtoint ptr %ixpxd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ixpxd, align 4
  %26 = shl i32 %25, 24
  %conv.i134 = zext i32 %26 to i64
  %shl.i135 = shl nuw nsw i64 %conv.i134, 8
  %addr2.i136 = getelementptr i8, ptr %ip, i32 -828
  %27 = ptrtoint ptr %addr2.i136 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr2.i136, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  %conv1.i137 = zext i32 %29 to i64
  %30 = and i32 %25, -256
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %conv30 = zext i32 %31 to i64
  %add.i138 = add nsw i64 %conv1.i137, -1
  %add31 = add nsw i64 %add.i138, %shl.i135
  %sub32 = add nsw i64 %add31, %conv30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end23.cond.end_crit_edge
  %xaddr.1169 = phi i64 [ %xaddr.1170, %cond.false ], [ %xaddr.0, %if.end23.cond.end_crit_edge ]
  %cond33 = phi i64 [ %sub32, %cond.false ], [ %add22, %if.end23.cond.end_crit_edge ]
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %daddr.i) #5
  %36 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %daddr.i, align 8, !annotation !11
  %nbperpage2.i = getelementptr inbounds %struct.jfs_sb_info, ptr %35, i32 0, i32 10
  %37 = ptrtoint ptr %nbperpage2.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %nbperpage2.i, align 4
  %bmap.i = getelementptr inbounds %struct.jfs_sb_info, ptr %35, i32 0, i32 23
  %39 = ptrtoint ptr %bmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bmap.i, align 4
  %dn_maxfreebud.i = getelementptr inbounds %struct.dbmap, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %dn_maxfreebud.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dn_maxfreebud.i, align 8
  %conv3.i = sext i8 %42 to i32
  %sh_prom.i = zext i32 %conv3.i to i64
  %shl.i140 = shl nuw i64 1, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %shl.i140)
  %cmp.not.i = icmp slt i64 %4, %shl.i140
  %.pre.i = sext i16 %38 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %.pre.i)
  %cmp6.i = icmp sgt i64 %4, %.pre.i
  %43 = tail call i64 @llvm.smax.i64(i64 %shl.i140, i64 %.pre.i) #5
  %spec.select.i = select i1 %cmp6.i, i64 %43, i64 %4
  %nblks.0.i = select i1 %cmp.not.i, i64 %4, i64 %spec.select.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %extRoundDown.exit.i.while.cond.i_crit_edge, %cond.end
  %nb.1.i = phi i64 [ %nblks.0.i, %cond.end ], [ %45, %extRoundDown.exit.i.while.cond.i_crit_edge ]
  %call12.i = call i32 @dbAlloc(ptr noundef %ip, i64 noundef %cond33, i64 noundef %nb.1.i, ptr noundef nonnull %daddr.i) #5
  %44 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.i, label %extBalloc.exit [
    i32 0, label %while.end.i
    i32 -28, label %if.end18.i
  ]

if.end18.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %nb.1.i)
  %tobool.not14.i.i = icmp sgt i64 %nb.1.i, -1
  br i1 %tobool.not14.i.i, label %if.end18.i.for.inc.i.i_crit_edge, label %if.end18.i.extRoundDown.exit.i_crit_edge

if.end18.i.extRoundDown.exit.i_crit_edge:         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %extRoundDown.exit.i

if.end18.i.for.inc.i.i_crit_edge:                 ; preds = %if.end18.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.i.i.for.inc.i.i_crit_edge, %if.end18.i.for.inc.i.i_crit_edge
  %m.016.i.i = phi i64 [ %shr.i.i, %for.inc.i.i.for.inc.i.i_crit_edge ], [ -9223372036854775808, %if.end18.i.for.inc.i.i_crit_edge ]
  %i.015.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.inc.i.i_crit_edge ], [ 0, %if.end18.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %shr.i.i = lshr i64 %m.016.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.015.i.i)
  %cmp.i.i = icmp ult i32 %i.015.i.i, 63
  %and.i.i = and i64 %shr.i.i, %nb.1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.i.i, label %for.inc.i.i.for.inc.i.i_crit_edge, label %for.end.loopexit.i.i

for.inc.i.i.for.inc.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.end.loopexit.i.i:                             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo.i.i = sub nsw i32 62, %i.015.i.i
  br label %extRoundDown.exit.i

extRoundDown.exit.i:                              ; preds = %for.end.loopexit.i.i, %if.end18.i.extRoundDown.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 63, %if.end18.i.extRoundDown.exit.i_crit_edge ], [ %phi.bo.i.i, %for.end.loopexit.i.i ]
  %sh_prom.i.i = zext i32 %i.0.lcssa.i.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %sub1.i.i = add i64 %shl.i.i, -1
  %and2.i.i = and i64 %sub1.i.i, %nb.1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool3.not.i.i = icmp eq i64 %and2.i.i, 0
  %shr4.i.i = zext i1 %tobool3.not.i.i to i64
  %cond.i.i = lshr i64 %shl.i.i, %shr4.i.i
  %45 = call i64 @llvm.smin.i64(i64 %nblks.0.i, i64 %cond.i.i) #5
  %cmp27.i = icmp slt i64 %45, %.pre.i
  br i1 %cmp27.i, label %extBalloc.exit.thread176, label %extRoundDown.exit.i.while.cond.i_crit_edge

extRoundDown.exit.i.while.cond.i_crit_edge:       ; preds = %extRoundDown.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

extBalloc.exit.thread176:                         ; preds = %extRoundDown.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %daddr.i) #5
  br label %if.then36

while.end.i:                                      ; preds = %while.cond.i
  %46 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %daddr.i, align 8
  %48 = ptrtoint ptr %nxaddr to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %nxaddr, align 8
  %49 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ip, align 8
  %51 = and i16 %50, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %51)
  %cmp32.i = icmp eq i16 %51, -32768
  br i1 %cmp32.i, label %land.lhs.true34.i, label %while.end.i.extBalloc.exit.thread_crit_edge

while.end.i.extBalloc.exit.thread_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %extBalloc.exit.thread

land.lhs.true34.i:                                ; preds = %while.end.i
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %53)
  %cmp35.i = icmp eq i32 %53, 16
  br i1 %cmp35.i, label %if.then37.i, label %land.lhs.true34.i.extBalloc.exit.thread_crit_edge

land.lhs.true34.i.extBalloc.exit.thread_crit_edge: ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %extBalloc.exit.thread

if.then37.i:                                      ; preds = %land.lhs.true34.i
  %54 = ptrtoint ptr %bmap.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bmap.i, align 4
  %dn_agl2size.i = getelementptr inbounds %struct.dbmap, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %dn_agl2size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dn_agl2size.i, align 4
  %sh_prom40.i = zext i32 %57 to i64
  %shr.i = ashr i64 %47, %sh_prom40.i
  %conv41.i = trunc i64 %shr.i to i32
  %ag_lock.i = getelementptr i8, ptr %ip, i32 -740
  call void @_raw_spin_lock_irq(ptr noundef %ag_lock.i) #5
  %active_ag.i = getelementptr i8, ptr %ip, i32 -749
  %58 = ptrtoint ptr %active_ag.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %active_ag.i, align 1
  %conv42.i = sext i8 %59 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp43.i = icmp eq i8 %59, -1
  br i1 %cmp43.i, label %if.then45.i, label %if.else48.i

if.then45.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.bmap, ptr %40, i32 0, i32 3, i32 %conv41.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #5
  %60 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #5, !srcloc !12
  br label %if.end62.sink.split.i

if.else48.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv42.i, i32 %conv41.i)
  %cmp51.not.i = icmp eq i32 %conv42.i, %conv41.i
  br i1 %cmp51.not.i, label %if.else48.i.if.end62.i_crit_edge, label %if.then53.i

if.else48.i.if.end62.i_crit_edge:                 ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i

if.then53.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx56.i = getelementptr %struct.bmap, ptr %40, i32 0, i32 3, i32 %conv42.i
  %call.i.i108.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx56.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %arrayidx56.i, i32 1, i32 3, i32 1) #5
  %61 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx56.i, ptr %arrayidx56.i, i32 1, ptr elementtype(i32) %arrayidx56.i) #5, !srcloc !13
  %arrayidx58.i = getelementptr %struct.bmap, ptr %40, i32 0, i32 3, i32 %conv41.i
  %call.i.i109.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx58.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %arrayidx58.i, i32 1, i32 3, i32 1) #5
  %62 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx58.i, ptr %arrayidx58.i, i32 1, ptr elementtype(i32) %arrayidx58.i) #5, !srcloc !12
  br label %if.end62.sink.split.i

if.end62.sink.split.i:                            ; preds = %if.then53.i, %if.then45.i
  %conv59.i = trunc i64 %shr.i to i8
  %63 = ptrtoint ptr %active_ag.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv59.i, ptr %active_ag.i, align 1
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end62.sink.split.i, %if.else48.i.if.end62.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %ag_lock.i) #5
  br label %extBalloc.exit.thread

extBalloc.exit.thread:                            ; preds = %if.end62.i, %land.lhs.true34.i.extBalloc.exit.thread_crit_edge, %while.end.i.extBalloc.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %daddr.i) #5
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %64 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i142 = zext i8 %65 to i64
  %shl.i143 = shl i64 %nb.1.i, %sh_prom.i142
  %call.i.i.i144 = call i32 @__dquot_alloc_space(ptr noundef %ip, i64 noundef %shl.i143, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i144)
  %tobool.not.i.i145 = icmp eq i32 %call.i.i.i144, 0
  br i1 %tobool.not.i.i145, label %if.end46, label %if.then42

extBalloc.exit:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %daddr.i) #5
  br label %if.then36

if.then36:                                        ; preds = %extBalloc.exit, %extBalloc.exit.thread176
  %retval.0.i180 = phi i32 [ -28, %extBalloc.exit.thread176 ], [ %call12.i, %extBalloc.exit ]
  call void @mutex_unlock(ptr noundef %commit_mutex) #5
  br label %cleanup

if.then42:                                        ; preds = %extBalloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %nxaddr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %nxaddr, align 8
  %call43 = call i32 @dbFree(ptr noundef %ip, i64 noundef %67, i64 noundef %nb.1.i) #5
  call void @mutex_unlock(ptr noundef %commit_mutex) #5
  br label %cleanup

if.end46:                                         ; preds = %extBalloc.exit.thread
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #5
  %cond49 = select i1 %abnr, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %xaddr.1169)
  %tobool50.not = icmp eq i64 %xaddr.1169, 0
  br i1 %tobool50.not, label %if.end46.if.else_crit_edge, label %land.lhs.true51

if.end46.if.else_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true51:                                  ; preds = %if.end46
  %68 = ptrtoint ptr %nxaddr to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %nxaddr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %xaddr.1169, i64 %69)
  %cmp52 = icmp eq i64 %xaddr.1169, %69
  br i1 %cmp52, label %if.then54, label %land.lhs.true51.if.else_crit_edge

land.lhs.true51.if.else_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #7
  %conv55 = trunc i64 %nb.1.i to i32
  %call56 = call i32 @xtExtend(i16 noundef zeroext 0, ptr noundef %ip, i64 noundef %shl, i32 noundef %conv55, i32 noundef 0) #5
  br label %if.end59

if.else:                                          ; preds = %land.lhs.true51.if.else_crit_edge, %if.end46.if.else_crit_edge
  %conv57 = trunc i64 %nb.1.i to i32
  %call58 = call i32 @xtInsert(i16 noundef zeroext 0, ptr noundef %ip, i32 noundef %cond49, i64 noundef %shl, i32 noundef %conv57, ptr noundef nonnull %nxaddr, i32 noundef 0) #5
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then54
  %rc.0 = phi i32 [ %call56, %if.then54 ], [ %call58, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool60.not = icmp eq i32 %rc.0, 0
  %70 = ptrtoint ptr %nxaddr to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %nxaddr, align 8
  br i1 %tobool60.not, label %if.end65, label %if.then61

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %call62 = call i32 @dbFree(ptr noundef %ip, i64 noundef %71, i64 noundef %nb.1.i) #5
  %72 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i148 = zext i8 %73 to i64
  %shl.i149 = shl i64 %nb.1.i, %sh_prom.i148
  call void @__dquot_free_space(ptr noundef %ip, i64 noundef %shl.i149, i32 noundef 0) #5
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 1) #5
  call void @mutex_unlock(ptr noundef %commit_mutex) #5
  br label %cleanup

if.end65:                                         ; preds = %if.end59
  %sum.shift.i = lshr i64 %71, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i151 = and i32 %conv7.i, 255
  %conv3.i152 = trunc i64 %71 to i32
  %74 = call i32 @llvm.bswap.i32(i32 %conv3.i152) #5
  %75 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %addr2.i, align 4
  %conv68 = trunc i64 %nb.1.i to i32
  %and1.i = and i32 %conv68, 16777215
  %76 = call i32 @llvm.bswap.i32(i32 %and1.i) #5
  %or.i155 = or i32 %conv.i151, %76
  %77 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or.i155, ptr %loc, align 4
  %shr = lshr i64 %shl, 32
  %conv69 = trunc i64 %shr to i8
  %off170 = getelementptr inbounds %struct.xad, ptr %xp, i32 0, i32 2
  %78 = ptrtoint ptr %off170 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv69, ptr %off170, align 1
  %conv72 = trunc i64 %shl to i32
  %79 = call i32 @llvm.bswap.i32(i32 %conv72)
  %off273 = getelementptr inbounds %struct.xad, ptr %xp, i32 0, i32 3
  %80 = ptrtoint ptr %off273 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %off273, align 4
  %conv74 = trunc i32 %cond49 to i8
  %81 = ptrtoint ptr %xp to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv74, ptr %xp, align 4
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 7) #5
  call void @mutex_unlock(ptr noundef %commit_mutex) #5
  %cflag = getelementptr i8, ptr %ip, i32 -768
  %call79 = call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %cflag) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end65.cleanup_crit_edge, label %if.then81

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then81:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %call82 = call i32 @jfs_commit_inode(ptr noundef %ip, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %if.end65.cleanup_crit_edge, %if.then61, %if.then42, %if.then36
  %retval.0 = phi i32 [ %retval.0.i180, %if.then36 ], [ %call.i.i.i144, %if.then42 ], [ %rc.0, %if.then61 ], [ 0, %if.then81 ], [ 0, %if.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nxaddr) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @txBeginAnon(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbFree(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtExtend(i16 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtInsert(i16 noundef zeroext, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jfs_commit_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @extHint(ptr noundef %ip, i64 noundef %offset, ptr nocapture noundef %xp) local_unnamed_addr #0 align 64 {
entry:
  %xaddr = alloca i64, align 8
  %xlen = alloca i32, align 4
  %xflag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %nbperpage1 = getelementptr inbounds %struct.jfs_sb_info, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %nbperpage1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nbperpage1, align 4
  %conv = sext i16 %5 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xaddr) #5
  %6 = ptrtoint ptr %xaddr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %xaddr, align 8, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen) #5
  %7 = ptrtoint ptr %xlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %xlen, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xflag) #5
  %8 = ptrtoint ptr %xflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %xflag, align 4, !annotation !11
  %loc = getelementptr inbounds %struct.xad, ptr %xp, i32 0, i32 4
  %9 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %loc, align 4
  %and.i = and i32 %10, -256
  store i32 %and.i, ptr %loc, align 4
  %addr2.i = getelementptr inbounds %struct.xad, ptr %xp, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %addr2.i, align 4
  %and = and i64 %offset, -4096
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %l2bsize = getelementptr inbounds %struct.jfs_sb_info, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %l2bsize to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %l2bsize, align 2
  %conv3 = sext i16 %15 to i32
  %sh_prom = zext i32 %conv3 to i64
  %shr = ashr i64 %and, %sh_prom
  %conv4 = sext i16 %5 to i64
  %sub = sub i64 %shr, %conv4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %call7 = call i32 @xtLookup(ptr noundef %ip, i64 noundef %sub, i64 noundef %conv4, ptr noundef nonnull %xflag, ptr noundef nonnull %xaddr, ptr noundef nonnull %xlen, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %16 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %land.lhs.true.out_crit_edge, label %if.then10

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp11.not = icmp eq i32 %17, %conv
  br i1 %cmp11.not, label %if.then10.if.end15_crit_edge, label %if.then13

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ...) @jfs_error(ptr noundef %19, ptr noundef nonnull @.str) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10.if.end15_crit_edge
  %rc.0 = phi i32 [ -5, %if.then13 ], [ 0, %if.then10.if.end15_crit_edge ]
  %20 = ptrtoint ptr %xaddr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %xaddr, align 8
  %sum.shift.i = lshr i64 %21, 32
  %conv7.i = trunc i64 %sum.shift.i to i32
  %conv.i = and i32 %conv7.i, 255
  %conv3.i = trunc i64 %21 to i32
  %22 = call i32 @llvm.bswap.i32(i32 %conv3.i) #5
  %23 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %addr2.i, align 4
  %24 = ptrtoint ptr %xlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xlen, align 4
  %and1.i = and i32 %25, 16777215
  %26 = call i32 @llvm.bswap.i32(i32 %and1.i) #5
  %or.i43 = or i32 %26, %conv.i
  %27 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i43, ptr %loc, align 4
  %shr18 = lshr i64 %sub, 32
  %conv19 = trunc i64 %shr18 to i8
  %off1 = getelementptr inbounds %struct.xad, ptr %xp, i32 0, i32 2
  %28 = ptrtoint ptr %off1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv19, ptr %off1, align 1
  %conv21 = trunc i64 %sub to i32
  %29 = call i32 @llvm.bswap.i32(i32 %conv21)
  %off2 = getelementptr inbounds %struct.xad, ptr %xp, i32 0, i32 3
  %30 = ptrtoint ptr %off2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %off2, align 4
  %31 = ptrtoint ptr %xflag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xflag, align 4
  %33 = trunc i32 %32 to i8
  %conv23 = and i8 %33, 8
  %34 = ptrtoint ptr %xp to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv23, ptr %xp, align 4
  br label %out

out:                                              ; preds = %if.end15, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %rc.0, %if.end15 ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xflag) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xaddr) #5
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtLookup(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jfs_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @extRecord(ptr noundef %ip, ptr noundef %xp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  tail call void @txBeginAnon(ptr noundef %1) #5
  %commit_mutex = getelementptr i8, ptr %ip, i32 -592
  tail call void @mutex_lock_nested(ptr noundef %commit_mutex, i32 noundef 0) #5
  %call1 = tail call i32 @xtUpdate(i16 noundef zeroext 0, ptr noundef %ip, ptr noundef %xp) #5
  tail call void @mutex_unlock(ptr noundef %commit_mutex) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xtUpdate(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbAlloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_extent.c", i32 378, i32 24}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{i64 2148667309, i64 2148667335, i64 2148667364, i64 2148667398, i64 2148667429, i64 2148667452}
!13 = !{i64 2148669774, i64 2148669800, i64 2148669829, i64 2148669863, i64 2148669894, i64 2148669917}
