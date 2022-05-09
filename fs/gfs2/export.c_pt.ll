; ModuleID = '/llk/IR_all_yes/fs/gfs2/export.c_pt.bc'
source_filename = "../fs/gfs2/export.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
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
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.72 = type { ptr }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.get_name_filldir = type { %struct.dir_context, %struct.gfs2_inum_host, ptr }
%struct.dir_context = type { ptr, i64 }
%struct.gfs2_inum_host = type { i64, i64 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@gfs2_export_ops = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @gfs2_encode_fh, ptr @gfs2_fh_to_dentry, ptr @gfs2_fh_to_parent, ptr @gfs2_get_name, ptr @gfs2_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@gfs2_qdotdot = external dso_local global %struct.qstr, align 8
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"gfs2_export_ops\00", align 1
@___asan_gen_.3 = private constant [20 x i8] c"../fs/gfs2/export.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 189, i32 32 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @gfs2_export_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfs2_encode_fh(ptr noundef readonly %inode, ptr nocapture noundef writeonly %p, ptr nocapture noundef %len, ptr noundef readonly %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %tobool.not = icmp eq ptr %parent, null
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %len, align 4
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp = icmp slt i32 %.pr, 8
  br i1 %cmp, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp1 = icmp slt i32 %.pr, 4
  br i1 %cmp1, label %if.else.cleanup.sink.split_crit_edge, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.else.if.end3_crit_edge, %land.lhs.true.if.end3_crit_edge
  %i_no_formal_ino = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 2
  %3 = ptrtoint ptr %i_no_formal_ino to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_no_formal_ino, align 8
  %shr = lshr i64 %4, 32
  %conv = trunc i64 %shr to i32
  %5 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %p, align 4
  %6 = load i64, ptr %i_no_formal_ino, align 8
  %conv5 = trunc i64 %6 to i32
  %arrayidx6 = getelementptr i32, ptr %p, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %arrayidx6, align 4
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %8 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_no_addr, align 8
  %shr7 = lshr i64 %9, 32
  %conv8 = trunc i64 %shr7 to i32
  %arrayidx9 = getelementptr i32, ptr %p, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv8, ptr %arrayidx9, align 4
  %11 = load i64, ptr %i_no_addr, align 8
  %conv12 = trunc i64 %11 to i32
  %arrayidx13 = getelementptr i32, ptr %p, i32 3
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv12, ptr %arrayidx13, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %len, align 4
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %lor.lhs.false

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i, align 8
  %cmp16 = icmp eq ptr %17, %inode
  br i1 %cmp16, label %lor.lhs.false.cleanup_crit_edge, label %if.end19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %i_no_formal_ino21 = getelementptr inbounds %struct.gfs2_inode, ptr %parent, i32 0, i32 2
  %18 = ptrtoint ptr %i_no_formal_ino21 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_no_formal_ino21, align 8
  %shr22 = lshr i64 %19, 32
  %conv23 = trunc i64 %shr22 to i32
  %arrayidx24 = getelementptr i32, ptr %p, i32 4
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv23, ptr %arrayidx24, align 4
  %21 = load i64, ptr %i_no_formal_ino21, align 8
  %conv27 = trunc i64 %21 to i32
  %arrayidx28 = getelementptr i32, ptr %p, i32 5
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv27, ptr %arrayidx28, align 4
  %i_no_addr29 = getelementptr inbounds %struct.gfs2_inode, ptr %parent, i32 0, i32 1
  %23 = ptrtoint ptr %i_no_addr29 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_no_addr29, align 8
  %shr30 = lshr i64 %24, 32
  %conv31 = trunc i64 %shr30 to i32
  %arrayidx32 = getelementptr i32, ptr %p, i32 6
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv31, ptr %arrayidx32, align 4
  %26 = load i64, ptr %i_no_addr29, align 8
  %conv35 = trunc i64 %26 to i32
  %arrayidx36 = getelementptr i32, ptr %p, i32 7
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv35, ptr %arrayidx36, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end19, %if.else.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 8, %if.end19 ], [ 8, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 4, %if.else.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 8, %if.end19 ], [ 255, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 255, %if.else.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %lor.lhs.false.cleanup_crit_edge ], [ 4, %if.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gfs2_fh_to_dentry(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fh_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fh_type, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 8, label %entry.sw.bb_crit_edge15
    i32 10, label %entry.sw.bb_crit_edge16
  ]

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fh_len)
  %cmp = icmp slt i32 %fh_len, 4
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %1 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fid, align 4
  %conv = zext i32 %2 to i64
  %shl = shl nuw i64 %conv, 32
  %arrayidx1 = getelementptr i32, ptr %fid, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %conv2 = zext i32 %4 to i64
  %or = or i64 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %tobool.not.i = icmp eq i64 %or, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %arrayidx4 = getelementptr i32, ptr %fid, i32 2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %conv5 = zext i32 %6 to i64
  %shl6 = shl nuw i64 %conv5, 32
  %arrayidx7 = getelementptr i32, ptr %fid, i32 3
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  %conv8 = zext i32 %8 to i64
  %or10 = or i64 %shl6, %conv8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %call2.i = tail call ptr @gfs2_lookup_by_inum(ptr noundef %10, i64 noundef %or10, i64 noundef %or, i32 noundef 3) #6
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call ptr @d_obtain_alias(ptr noundef %call2.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %sw.bb.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call7.i, %if.end6.i ], [ inttoptr (i32 -116 to ptr), %if.end.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gfs2_fh_to_parent(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fh_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %fh_type, label %entry.cleanup_crit_edge [
    i32 8, label %entry.sw.bb_crit_edge
    i32 10, label %entry.sw.bb_crit_edge15
  ]

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %fh_len)
  %cmp = icmp slt i32 %fh_len, 8
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %arrayidx = getelementptr i32, ptr %fid, i32 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %2 to i64
  %shl = shl nuw i64 %conv, 32
  %arrayidx1 = getelementptr i32, ptr %fid, i32 5
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %conv2 = zext i32 %4 to i64
  %or = or i64 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %tobool.not.i = icmp eq i64 %or, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %arrayidx4 = getelementptr i32, ptr %fid, i32 6
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %conv5 = zext i32 %6 to i64
  %shl6 = shl nuw i64 %conv5, 32
  %arrayidx7 = getelementptr i32, ptr %fid, i32 7
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  %conv8 = zext i32 %8 to i64
  %or10 = or i64 %shl6, %conv8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %call2.i = tail call ptr @gfs2_lookup_by_inum(ptr noundef %10, i64 noundef %or10, i64 noundef %or, i32 noundef 3) #6
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call ptr @d_obtain_alias(ptr noundef %call2.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %sw.bb.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call7.i, %if.end6.i ], [ inttoptr (i32 -116 to ptr), %if.end.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_get_name(ptr nocapture noundef readonly %parent, ptr noundef %name, ptr nocapture noundef readonly %child) #1 align 64 {
entry:
  %gnfd = alloca %struct.get_name_filldir, align 8
  %gh = alloca %struct.gfs2_holder, align 4
  %f_ra = alloca %struct.file_ra_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i37 = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i37 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i37, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %gnfd) #6
  %4 = call ptr @memset(ptr %gnfd, i32 0, i32 40)
  %5 = ptrtoint ptr %gnfd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @get_name_filldir, ptr %gnfd, align 8
  %name2 = getelementptr inbounds %struct.get_name_filldir, ptr %gnfd, i32 0, i32 2
  %6 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %name2, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #6
  %7 = call ptr @memset(ptr %gh, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %f_ra) #6
  %8 = call ptr @memset(ptr %f_ra, i32 0, i32 32)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp = icmp ne i16 %11, 16384
  %tobool4.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %name, align 1
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_no_addr, align 8
  %inum = getelementptr inbounds %struct.get_name_filldir, ptr %gnfd, i32 0, i32 1
  %no_addr = getelementptr inbounds %struct.get_name_filldir, ptr %gnfd, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %no_addr to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %no_addr, align 8
  %i_no_formal_ino = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %i_no_formal_ino to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_no_formal_ino, align 8
  %18 = ptrtoint ptr %inum to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %inum, align 8
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_gl, align 4
  %21 = tail call ptr @llvm.returnaddress(i32 0) #6
  %22 = ptrtoint ptr %21 to i32
  call void @__gfs2_holder_init(ptr noundef %20, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %22) #6
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end13, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call15 = call i32 @gfs2_dir_read(ptr noundef nonnull %1, ptr noundef nonnull %gnfd, ptr noundef nonnull %f_ra) #6
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp eq i8 %24, 0
  %spec.select = select i1 %tobool17.not, i32 -2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end13.cleanup_crit_edge, %gfs2_glock_nq_init.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %gfs2_glock_nq_init.exit ], [ %call15, %if.end13.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f_ra) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %gnfd) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gfs2_get_parent(ptr nocapture noundef readonly %child) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call ptr @gfs2_lookupi(ptr noundef %1, ptr noundef nonnull @gfs2_qdotdot, i32 noundef 1) #6
  %call2 = tail call ptr @d_obtain_alias(ptr noundef %call1) #6
  ret ptr %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_lookup_by_inum(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_name_filldir(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %name, i32 noundef %length, i64 noundef %offset, i64 noundef %inum, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %no_addr = getelementptr inbounds %struct.get_name_filldir, ptr %ctx, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %no_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %no_addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %inum)
  %cmp.not = icmp eq i64 %1, %inum
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name2 = getelementptr inbounds %struct.get_name_filldir, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2, align 8
  %4 = call ptr @memcpy(ptr %3, ptr %name, i32 %length)
  %5 = load ptr, ptr %name2, align 8
  %arrayidx = getelementptr i8, ptr %5, i32 %length
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_dir_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_lookupi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @gfs2_export_ops, !1, !"gfs2_export_ops", i1 false, i1 false}
!1 = !{!"../fs/gfs2/export.c", i32 189, i32 32}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
