; ModuleID = '/llk/IR_all_yes/fs/adfs/dir_f.c_pt.bc'
source_filename = "../fs/adfs/dir_f.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.adfs_dir_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.adfs_dir = type { ptr, i32, [4 x ptr], ptr, i32, i32, %union.anon.70, %union.anon.71 }
%union.anon.70 = type { ptr }
%union.anon.71 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.adfs_newdirtail = type { i8, [2 x i8], [3 x i8], [19 x i8], [10 x i8], i8, [4 x i8], i8 }
%struct.object_info = type { i32, i32, i32, i32, i32, i8, i32, [260 x i8] }
%struct.dir_context = type { ptr, i64 }
%struct.adfs_direntry = type { [10 x i8], [4 x i8], [4 x i8], [4 x i8], [3 x i8], i8 }
%struct.adfs_dirheader = type { i8, [4 x i8] }

@adfs_f_dir_ops = dso_local constant { %struct.adfs_dir_ops, [32 x i8] } { %struct.adfs_dir_ops { ptr @adfs_f_read, ptr @adfs_f_iterate, ptr @adfs_f_setpos, ptr @adfs_f_getnext, ptr @adfs_f_update, ptr null, ptr null, ptr @adfs_f_commit }, [32 x i8] zeroinitializer }, align 32
@__func__.adfs_f_read = private unnamed_addr constant [12 x i8] c"adfs_f_read\00", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dir %06x is corrupted\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Nick\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Hugo\00", [27 x i8] zeroinitializer }, align 32
@__func__.adfs_f_update = private unnamed_addr constant [14 x i8] c"adfs_f_update\00", align 1
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error reading directory entry\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to locate entry to update\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error: update broke directory\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2048]
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"adfs_f_dir_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 317, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 165, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 131, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 132, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 282, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 286, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 312, i32 21 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [19 x i8] c"../fs/adfs/dir_f.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 312, i32 31 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @adfs_f_dir_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adfs_f_dir_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_f_read(ptr noundef %sb, i32 noundef %indaddr, i32 noundef %size, ptr noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %0 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %1 to i32
  %2 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 2048, label %entry.if.end_crit_edge39
  ]

entry.if.end_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge39
  %call = tail call i32 @adfs_dir_read_buffers(ptr noundef %sb, i32 noundef %indaddr, i32 noundef 2048, ptr noundef %dir) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %bh = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 2
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_data, align 4
  %7 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %7, align 4
  %shr6 = lshr i32 2007, %conv
  %shl8 = shl i32 %shr6, %conv
  %sub9 = sub i32 2007, %shl8
  %arrayidx12 = getelementptr %struct.adfs_dir, ptr %dir, i32 0, i32 2, i32 %shr6
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12, align 4
  %b_data13 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %b_data13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_data13, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 %sub9
  %13 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr14, ptr %13, align 4
  %call15 = tail call fastcc i32 @adfs_f_validate(ptr noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %bad_dir

if.end18:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dirparent = getelementptr inbounds %struct.adfs_newdirtail, ptr %add.ptr14, i32 0, i32 2
  %arrayidx2.i = getelementptr i8, ptr %dirparent, i32 2
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %16 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %arrayidx7.i = getelementptr i8, ptr %dirparent, i32 1
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %18 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 8
  %or10.i = or i32 %shl9.i, %shl4.i
  %19 = ptrtoint ptr %dirparent to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dirparent, align 1
  %conv12.i = zext i8 %20 to i32
  %or13.i = or i32 %or10.i, %conv12.i
  %parent_id = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 5
  %21 = ptrtoint ptr %parent_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or13.i, ptr %parent_id, align 4
  br label %cleanup

bad_dir:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_f_read, ptr noundef nonnull @.str, i32 noundef %indaddr) #8
  tail call void @adfs_dir_relse(ptr noundef %dir) #8
  br label %cleanup

cleanup:                                          ; preds = %bad_dir, %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %bad_dir ], [ 0, %if.end18 ], [ -5, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_f_iterate(ptr noundef %dir, ptr noundef %ctx) #0 align 64 {
entry:
  %obj = alloca %struct.object_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %obj) #8
  %0 = call ptr @memset(ptr %obj, i32 255, i32 288)
  %pos1 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %pos1, align 8
  %name = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 7
  %name_len = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 79, i64 %2)
  %cmp14 = icmp slt i64 %2, 79
  br i1 %cmp14, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %3 = trunc i64 %2 to i32
  %4 = mul i32 %3, 26
  %conv = add i32 %4, -47
  %indaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.body.lr.ph
  %pos.015 = phi i32 [ %conv, %while.body.lr.ph ], [ %add8, %if.end7.while.body_crit_edge ]
  %call = call fastcc i32 @__adfs_dir_get(ptr noundef %dir, i32 noundef %pos.015, ptr noundef nonnull %obj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name_len, align 4
  %7 = ptrtoint ptr %indaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %indaddr, align 4
  %conv4 = zext i32 %8 to i64
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 8
  %11 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos1, align 8
  %call.i = call i32 %10(ptr noundef %ctx, ptr noundef %name, i32 noundef %6, i64 noundef %12, i64 noundef %conv4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end7, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end7:                                          ; preds = %if.end
  %add8 = add i32 %pos.015, 26
  %13 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pos1, align 8
  %inc = add i64 %14, 1
  store i64 %inc, ptr %pos1, align 8
  %cmp = icmp slt i64 %inc, 79
  br i1 %cmp, label %if.end7.while.body_crit_edge, label %if.end7.while.end_crit_edge

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end7.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %obj) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @adfs_f_setpos(ptr nocapture noundef writeonly %dir, i32 noundef %fpos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %fpos)
  %cmp = icmp ugt i32 %fpos, 76
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul nuw nsw i32 %fpos, 26
  %add = add nuw nsw i32 %mul, 5
  %pos = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 4
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %pos, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_f_getnext(ptr noundef %dir, ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 4
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos, align 4
  %call = tail call fastcc i32 @__adfs_dir_get(ptr noundef %dir, i32 noundef %1, ptr noundef %obj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  %add = add i32 %3, 26
  store i32 %add, ptr %pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_f_update(ptr noundef %dir, ptr nocapture noundef readonly %obj) #0 align 64 {
entry:
  %de = alloca %struct.adfs_direntry, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %de) #8
  %0 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 1
  %1 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 1, i32 3
  %4 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 2
  %5 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 2, i32 2
  %7 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 3
  %9 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 3, i32 1
  %10 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 3, i32 2
  %11 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 3, i32 3
  %12 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 4
  %13 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 4, i32 1
  %14 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 4, i32 2
  %15 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 5
  %indaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 1
  %16 = call ptr @memset(ptr %de, i32 255, i32 26)
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %offset.0 = phi i32 [ -21, %entry ], [ %add, %do.cond.do.body_crit_edge ]
  %add = add i32 %offset.0, 26
  %call = call i32 @adfs_dir_copyfrom(ptr noundef nonnull %de, ptr noundef %dir, i32 noundef %add, i32 noundef 26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dir, align 4
  call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %18, ptr noundef nonnull @__func__.adfs_f_update, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end:                                           ; preds = %do.body
  %19 = ptrtoint ptr %de to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %de, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not = icmp eq i8 %20, 0
  br i1 %tobool1.not, label %if.then2, label %do.cond

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dir, align 4
  call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %22, ptr noundef nonnull @__func__.adfs_f_update, ptr noundef nonnull @.str.4) #8
  br label %cleanup

do.cond:                                          ; preds = %if.end
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %14, align 1
  %conv3.i = zext i8 %24 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %13, align 1
  %conv8.i = zext i8 %26 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 8
  %or10.i = or i32 %shl9.i, %shl4.i
  %27 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %12, align 1
  %conv12.i = zext i8 %28 to i32
  %or13.i = or i32 %or10.i, %conv12.i
  %29 = ptrtoint ptr %indaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %indaddr, align 4
  %cmp.not = icmp eq i32 %or13.i, %30
  br i1 %cmp.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  %loadaddr.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 2
  %31 = ptrtoint ptr %loadaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %loadaddr.i, align 4
  %shr.i.i = lshr i32 %32, 24
  %conv.i.i = trunc i32 %shr.i.i to i8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i.i, ptr %3, align 1
  %shr2.i12.i = lshr i32 %32, 16
  %conv3.i13.i = trunc i32 %shr2.i12.i to i8
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv3.i13.i, ptr %2, align 1
  %shr6.i15.i = lshr i32 %32, 8
  %conv7.i16.i = trunc i32 %shr6.i15.i to i8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv7.i16.i, ptr %1, align 1
  %conv9.i18.i = trunc i32 %32 to i8
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv9.i18.i, ptr %0, align 1
  %execaddr.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 3
  %37 = ptrtoint ptr %execaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %execaddr.i, align 4
  %shr.i19.i = lshr i32 %38, 24
  %conv.i20.i = trunc i32 %shr.i19.i to i8
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i20.i, ptr %7, align 1
  %shr2.i22.i = lshr i32 %38, 16
  %conv3.i23.i = trunc i32 %shr2.i22.i to i8
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv3.i23.i, ptr %6, align 1
  %shr6.i25.i = lshr i32 %38, 8
  %conv7.i26.i = trunc i32 %shr6.i25.i to i8
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv7.i26.i, ptr %5, align 1
  %conv9.i28.i = trunc i32 %38 to i8
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv9.i28.i, ptr %4, align 1
  %size.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 4
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i, align 4
  %shr.i29.i = lshr i32 %44, 24
  %conv.i30.i = trunc i32 %shr.i29.i to i8
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i30.i, ptr %11, align 1
  %shr2.i32.i = lshr i32 %44, 16
  %conv3.i33.i = trunc i32 %shr2.i32.i to i8
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv3.i33.i, ptr %10, align 1
  %shr6.i35.i = lshr i32 %44, 8
  %conv7.i36.i = trunc i32 %shr6.i35.i to i8
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv7.i36.i, ptr %9, align 1
  %conv9.i38.i = trunc i32 %44 to i8
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv9.i38.i, ptr %8, align 1
  %attr.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 5
  %49 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %attr.i, align 4
  %51 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %15, align 1
  %call6 = call i32 @adfs_dir_copyto(ptr noundef %dir, i32 noundef %add, ptr noundef nonnull %de, i32 noundef 26) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then2, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %call6, %do.end ], [ -2, %if.then2 ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %de) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_f_commit(ptr nocapture noundef readonly %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %add = add i8 %4, 1
  store i8 %add, ptr %2, align 1
  %5 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %endmasseq = getelementptr inbounds %struct.adfs_newdirtail, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %endmasseq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %endmasseq, align 1
  %add3 = add i8 %9, 1
  store i8 %add3, ptr %endmasseq, align 1
  %call = tail call fastcc zeroext i8 @adfs_dir_checkbyte(ptr noundef %dir)
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %dircheckbyte = getelementptr inbounds %struct.adfs_newdirtail, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %dircheckbyte to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call, ptr %dircheckbyte, align 1
  %call5 = tail call fastcc i32 @adfs_f_validate(ptr noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dir, align 4
  tail call void (ptr, ptr, ptr, ...) @adfs_msg(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_dir_read_buffers(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adfs_f_validate(ptr nocapture noundef readonly %dir) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %2, align 1
  %endmasseq = getelementptr inbounds %struct.adfs_newdirtail, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %endmasseq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %endmasseq, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.not = icmp eq i8 %7, %9
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %reserved = getelementptr inbounds %struct.adfs_newdirtail, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reserved, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %arrayidx9 = getelementptr %struct.adfs_newdirtail, ptr %5, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %startname = getelementptr inbounds %struct.adfs_dirheader, ptr %2, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %startname, ptr noundef nonnull dereferenceable(4) @.str.1, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %lor.lhs.false12.lor.lhs.false17_crit_edge, label %land.lhs.true

lor.lhs.false12.lor.lhs.false17_crit_edge:        ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false17

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %bcmp39 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %startname, ptr noundef nonnull dereferenceable(4) @.str.2, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp39)
  %tobool16.not = icmp eq i32 %bcmp39, 0
  br i1 %tobool16.not, label %land.lhs.true.lor.lhs.false17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.lor.lhs.false17_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %land.lhs.true.lor.lhs.false17_crit_edge, %lor.lhs.false12.lor.lhs.false17_crit_edge
  %endname = getelementptr inbounds %struct.adfs_newdirtail, ptr %5, i32 0, i32 6
  %bcmp38 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %startname, ptr noundef dereferenceable(4) %endname, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp38)
  %tobool20.not = icmp eq i32 %bcmp38, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call fastcc zeroext i8 @adfs_dir_checkbyte(ptr noundef %dir)
  %dircheckbyte = getelementptr inbounds %struct.adfs_newdirtail, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %dircheckbyte to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dircheckbyte, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call22, i8 %17)
  %cmp25.not = icmp eq i8 %call22, %17
  %spec.select = select i1 %cmp25.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false21, %lor.lhs.false17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %lor.lhs.false17.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -5, %lor.lhs.false7.cleanup_crit_edge ], [ -5, %lor.lhs.false4.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__adfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adfs_dir_relse(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @adfs_dir_checkbyte(ptr nocapture noundef readonly %dir) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bh1 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 2
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dir, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %3 to i32
  br label %do.body

do.body:                                          ; preds = %do.cond7.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add5, %do.cond7.do.body_crit_edge ]
  %last.0 = phi i32 [ -21, %entry ], [ %add, %do.cond7.do.body_crit_edge ]
  %dircheck.0 = phi i32 [ 0, %entry ], [ %xor, %do.cond7.do.body_crit_edge ]
  %add = add i32 %last.0, 26
  %and = and i32 %add, -4
  br label %do.body2

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %do.body
  %i.1 = phi i32 [ %i.0, %do.body ], [ %add5, %do.body2.do.body2_crit_edge ]
  %dircheck.1 = phi i32 [ %dircheck.0, %do.body ], [ %xor, %do.body2.do.body2_crit_edge ]
  %shr = ashr i32 %i.1, %conv
  %shl = shl i32 %shr, %conv
  %sub = sub i32 %i.1, %shl
  %arrayidx = getelementptr ptr, ptr %bh1, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %sub
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %or = tail call i32 @llvm.fshl.i32(i32 %dircheck.1, i32 %dircheck.1, i32 19)
  %xor = xor i32 %10, %or
  %add5 = add i32 %i.1, 4
  %cmp = icmp slt i32 %add5, %and
  br i1 %cmp, label %do.body2.do.body2_crit_edge, label %do.cond7

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.cond7:                                         ; preds = %do.body2
  %shr9 = ashr i32 %add, %conv
  %shl11 = shl i32 %shr9, %conv
  %sub12 = sub i32 %add, %shl11
  %arrayidx14 = getelementptr ptr, ptr %bh1, i32 %shr9
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx14, align 4
  %b_data15 = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %b_data15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data15, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 %sub12
  %15 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr16, align 1
  %cmp18.not = icmp eq i8 %16, 0
  br i1 %cmp18.not, label %do.end20, label %do.cond7.do.body_crit_edge

do.cond7.do.body_crit_edge:                       ; preds = %do.cond7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end20:                                         ; preds = %do.cond7
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %add)
  %cmp21.not = icmp eq i32 %add5, %add
  br i1 %cmp21.not, label %do.end20.if.end_crit_edge, label %if.then

do.end20.if.end_crit_edge:                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.end20
  %shr24 = ashr i32 %add5, %conv
  %shl26 = shl i32 %shr24, %conv
  %sub27 = sub i32 %add5, %shl26
  %arrayidx29 = getelementptr ptr, ptr %bh1, i32 %shr24
  %17 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx29, align 4
  %b_data30 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data30, align 4
  %add.ptr31 = getelementptr i8, ptr %20, i32 %sub27
  %add.ptr32 = getelementptr i8, ptr %add.ptr31, i32 %add
  %idx.neg = sub i32 -4, %i.1
  %add.ptr33 = getelementptr i8, ptr %add.ptr32, i32 %idx.neg
  br label %do.body34

do.body34:                                        ; preds = %do.body34.do.body34_crit_edge, %if.then
  %dircheck.2 = phi i32 [ %xor, %if.then ], [ %xor39, %do.body34.do.body34_crit_edge ]
  %ptr.sroa.0.0 = phi ptr [ %add.ptr31, %if.then ], [ %incdec.ptr, %do.body34.do.body34_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %ptr.sroa.0.0, i32 1
  %21 = ptrtoint ptr %ptr.sroa.0.0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ptr.sroa.0.0, align 1
  %conv35 = zext i8 %22 to i32
  %or38 = tail call i32 @llvm.fshl.i32(i32 %dircheck.2, i32 %dircheck.2, i32 19)
  %xor39 = xor i32 %or38, %conv35
  %cmp41 = icmp ult ptr %incdec.ptr, %add.ptr33
  br i1 %cmp41, label %do.body34.do.body34_crit_edge, label %do.body34.if.end_crit_edge

do.body34.if.end_crit_edge:                       ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body34.do.body34_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.end:                                           ; preds = %do.body34.if.end_crit_edge, %do.end20.if.end_crit_edge
  %dircheck.3 = phi i32 [ %xor, %do.end20.if.end_crit_edge ], [ %xor39, %do.body34.if.end_crit_edge ]
  %shr45 = lshr i32 2008, %conv
  %shl47 = shl i32 %shr45, %conv
  %sub48 = sub i32 2008, %shl47
  %arrayidx50 = getelementptr ptr, ptr %bh1, i32 %shr45
  %23 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx50, align 4
  %b_data51 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %b_data51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data51, align 4
  %add.ptr52 = getelementptr i8, ptr %26, i32 %sub48
  %add.ptr53 = getelementptr i8, ptr %add.ptr52, i32 36
  br label %do.body54

do.body54:                                        ; preds = %do.body54.do.body54_crit_edge, %if.end
  %dircheck.4 = phi i32 [ %dircheck.3, %if.end ], [ %xor59, %do.body54.do.body54_crit_edge ]
  %ptr.sroa.0.1 = phi ptr [ %add.ptr52, %if.end ], [ %incdec.ptr55, %do.body54.do.body54_crit_edge ]
  %incdec.ptr55 = getelementptr i32, ptr %ptr.sroa.0.1, i32 1
  %27 = ptrtoint ptr %ptr.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ptr.sroa.0.1, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %or58 = tail call i32 @llvm.fshl.i32(i32 %dircheck.4, i32 %dircheck.4, i32 19)
  %xor59 = xor i32 %29, %or58
  %cmp61 = icmp ult ptr %incdec.ptr55, %add.ptr53
  br i1 %cmp61, label %do.body54.do.body54_crit_edge, label %do.end63

do.body54.do.body54_crit_edge:                    ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

do.end63:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %shr64 = lshr i32 %xor59, 8
  %xor65 = xor i32 %shr64, %xor59
  %shr66 = lshr i32 %xor59, 16
  %xor67 = xor i32 %xor65, %shr66
  %shr68 = lshr i32 %xor59, 24
  %and70 = xor i32 %xor67, %shr68
  %conv71 = trunc i32 %and70 to i8
  ret i8 %conv71
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__adfs_dir_get(ptr noundef %dir, i32 noundef %pos, ptr noundef %obj) unnamed_addr #0 align 64 {
entry:
  %de = alloca %struct.adfs_direntry, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %de) #8
  %0 = getelementptr inbounds [10 x i8], ptr %de, i32 0, i32 1
  %1 = getelementptr inbounds [10 x i8], ptr %de, i32 0, i32 2
  %2 = getelementptr inbounds [10 x i8], ptr %de, i32 0, i32 3
  %3 = getelementptr inbounds [10 x i8], ptr %de, i32 0, i32 4
  %4 = getelementptr inbounds [10 x i8], ptr %de, i32 0, i32 5
  %5 = getelementptr inbounds [10 x i8], ptr %de, i32 0, i32 6
  %6 = getelementptr inbounds [10 x i8], ptr %de, i32 0, i32 7
  %7 = getelementptr inbounds [10 x i8], ptr %de, i32 0, i32 8
  %8 = getelementptr inbounds [10 x i8], ptr %de, i32 0, i32 9
  %9 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 1
  %10 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 1, i32 1
  %11 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 1, i32 2
  %12 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 1, i32 3
  %13 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 2
  %14 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 2, i32 2
  %16 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 2, i32 3
  %17 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 3
  %18 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 3, i32 1
  %19 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 3, i32 2
  %20 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 3, i32 3
  %21 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 4
  %22 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 4, i32 1
  %23 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 4, i32 2
  %24 = getelementptr inbounds %struct.adfs_direntry, ptr %de, i32 0, i32 5
  %25 = call ptr @memset(ptr %de, i32 255, i32 26)
  %call = call i32 @adfs_dir_copyfrom(ptr noundef nonnull %de, ptr noundef %dir, i32 noundef %pos, i32 noundef 26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %26 = ptrtoint ptr %de to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %de, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not = icmp eq i8 %27, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %27)
  %cmp1.i = icmp ult i8 %27, 32
  br i1 %cmp1.i, label %if.end3.adfs_dir2obj.exit_crit_edge, label %if.end.i

if.end3.adfs_dir2obj.exit_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir2obj.exit

if.end.i:                                         ; preds = %if.end3
  %arrayidx5.i = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 0
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx5.i, align 1
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %30)
  %cmp1.1.i = icmp ult i8 %30, 32
  br i1 %cmp1.1.i, label %if.end.i.adfs_dir2obj.exit_crit_edge, label %if.end.1.i

if.end.i.adfs_dir2obj.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir2obj.exit

if.end.1.i:                                       ; preds = %if.end.i
  %arrayidx5.1.i = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx5.1.i, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %33)
  %cmp1.2.i = icmp ult i8 %33, 32
  br i1 %cmp1.2.i, label %if.end.1.i.adfs_dir2obj.exit_crit_edge, label %if.end.2.i

if.end.1.i.adfs_dir2obj.exit_crit_edge:           ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir2obj.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  %arrayidx5.2.i = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx5.2.i, align 1
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %36)
  %cmp1.3.i = icmp ult i8 %36, 32
  br i1 %cmp1.3.i, label %if.end.2.i.adfs_dir2obj.exit_crit_edge, label %if.end.3.i

if.end.2.i.adfs_dir2obj.exit_crit_edge:           ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir2obj.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  %arrayidx5.3.i = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 3
  %37 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx5.3.i, align 1
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %39)
  %cmp1.4.i = icmp ult i8 %39, 32
  br i1 %cmp1.4.i, label %if.end.3.i.adfs_dir2obj.exit_crit_edge, label %if.end.4.i

if.end.3.i.adfs_dir2obj.exit_crit_edge:           ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir2obj.exit

if.end.4.i:                                       ; preds = %if.end.3.i
  %arrayidx5.4.i = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 4
  %40 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx5.4.i, align 1
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %42)
  %cmp1.5.i = icmp ult i8 %42, 32
  br i1 %cmp1.5.i, label %if.end.4.i.adfs_dir2obj.exit_crit_edge, label %if.end.5.i

if.end.4.i.adfs_dir2obj.exit_crit_edge:           ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir2obj.exit

if.end.5.i:                                       ; preds = %if.end.4.i
  %arrayidx5.5.i = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 5
  %43 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx5.5.i, align 1
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %45)
  %cmp1.6.i = icmp ult i8 %45, 32
  br i1 %cmp1.6.i, label %if.end.5.i.adfs_dir2obj.exit_crit_edge, label %if.end.6.i

if.end.5.i.adfs_dir2obj.exit_crit_edge:           ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir2obj.exit

if.end.6.i:                                       ; preds = %if.end.5.i
  %arrayidx5.6.i = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 6
  %46 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx5.6.i, align 1
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %48)
  %cmp1.7.i = icmp ult i8 %48, 32
  br i1 %cmp1.7.i, label %if.end.6.i.adfs_dir2obj.exit_crit_edge, label %if.end.7.i

if.end.6.i.adfs_dir2obj.exit_crit_edge:           ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir2obj.exit

if.end.7.i:                                       ; preds = %if.end.6.i
  %arrayidx5.7.i = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 7
  %49 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx5.7.i, align 1
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %51)
  %cmp1.8.i = icmp ult i8 %51, 32
  br i1 %cmp1.8.i, label %if.end.7.i.adfs_dir2obj.exit_crit_edge, label %if.end.8.i

if.end.7.i.adfs_dir2obj.exit_crit_edge:           ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir2obj.exit

if.end.8.i:                                       ; preds = %if.end.7.i
  %arrayidx5.8.i = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 8
  %52 = ptrtoint ptr %arrayidx5.8.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx5.8.i, align 1
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %54)
  %cmp1.9.i = icmp ult i8 %54, 32
  br i1 %cmp1.9.i, label %if.end.8.i.adfs_dir2obj.exit_crit_edge, label %if.end.9.i

if.end.8.i.adfs_dir2obj.exit_crit_edge:           ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir2obj.exit

if.end.9.i:                                       ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.9.i = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 9
  %55 = ptrtoint ptr %arrayidx5.9.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx5.9.i, align 1
  br label %adfs_dir2obj.exit

adfs_dir2obj.exit:                                ; preds = %if.end.9.i, %if.end.8.i.adfs_dir2obj.exit_crit_edge, %if.end.7.i.adfs_dir2obj.exit_crit_edge, %if.end.6.i.adfs_dir2obj.exit_crit_edge, %if.end.5.i.adfs_dir2obj.exit_crit_edge, %if.end.4.i.adfs_dir2obj.exit_crit_edge, %if.end.3.i.adfs_dir2obj.exit_crit_edge, %if.end.2.i.adfs_dir2obj.exit_crit_edge, %if.end.1.i.adfs_dir2obj.exit_crit_edge, %if.end.i.adfs_dir2obj.exit_crit_edge, %if.end3.adfs_dir2obj.exit_crit_edge
  %name_len.0.lcssa.i = phi i32 [ 0, %if.end3.adfs_dir2obj.exit_crit_edge ], [ 1, %if.end.i.adfs_dir2obj.exit_crit_edge ], [ 2, %if.end.1.i.adfs_dir2obj.exit_crit_edge ], [ 3, %if.end.2.i.adfs_dir2obj.exit_crit_edge ], [ 4, %if.end.3.i.adfs_dir2obj.exit_crit_edge ], [ 5, %if.end.4.i.adfs_dir2obj.exit_crit_edge ], [ 6, %if.end.5.i.adfs_dir2obj.exit_crit_edge ], [ 7, %if.end.6.i.adfs_dir2obj.exit_crit_edge ], [ 8, %if.end.7.i.adfs_dir2obj.exit_crit_edge ], [ 9, %if.end.8.i.adfs_dir2obj.exit_crit_edge ], [ 10, %if.end.9.i ]
  %name_len6.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 6
  %56 = ptrtoint ptr %name_len6.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %name_len.0.lcssa.i, ptr %name_len6.i, align 4
  %57 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %23, align 1
  %conv3.i.i = zext i8 %58 to i32
  %shl4.i.i = shl nuw nsw i32 %conv3.i.i, 16
  %59 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %22, align 1
  %conv8.i.i = zext i8 %60 to i32
  %shl9.i.i = shl nuw nsw i32 %conv8.i.i, 8
  %or10.i.i = or i32 %shl9.i.i, %shl4.i.i
  %61 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %21, align 1
  %conv12.i.i = zext i8 %62 to i32
  %or13.i.i = or i32 %or10.i.i, %conv12.i.i
  %indaddr.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 1
  %63 = ptrtoint ptr %indaddr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or13.i.i, ptr %indaddr.i, align 4
  %64 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %12, align 1
  %conv.i.i = zext i8 %65 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %66 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %11, align 1
  %conv3.i32.i = zext i8 %67 to i32
  %shl4.i33.i = shl nuw nsw i32 %conv3.i32.i, 16
  %or5.i.i = or i32 %shl4.i33.i, %shl.i.i
  %68 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %10, align 1
  %conv8.i35.i = zext i8 %69 to i32
  %shl9.i36.i = shl nuw nsw i32 %conv8.i35.i, 8
  %or10.i37.i = or i32 %or5.i.i, %shl9.i36.i
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %9, align 1
  %conv12.i38.i = zext i8 %71 to i32
  %or13.i39.i = or i32 %or10.i37.i, %conv12.i38.i
  %loadaddr.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 2
  %72 = ptrtoint ptr %loadaddr.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or13.i39.i, ptr %loadaddr.i, align 4
  %73 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %16, align 1
  %conv.i41.i = zext i8 %74 to i32
  %shl.i42.i = shl nuw i32 %conv.i41.i, 24
  %75 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %15, align 1
  %conv3.i44.i = zext i8 %76 to i32
  %shl4.i45.i = shl nuw nsw i32 %conv3.i44.i, 16
  %or5.i46.i = or i32 %shl4.i45.i, %shl.i42.i
  %77 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %14, align 1
  %conv8.i48.i = zext i8 %78 to i32
  %shl9.i49.i = shl nuw nsw i32 %conv8.i48.i, 8
  %or10.i50.i = or i32 %or5.i46.i, %shl9.i49.i
  %79 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %13, align 1
  %conv12.i51.i = zext i8 %80 to i32
  %or13.i52.i = or i32 %or10.i50.i, %conv12.i51.i
  %execaddr.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 3
  %81 = ptrtoint ptr %execaddr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or13.i52.i, ptr %execaddr.i, align 4
  %82 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %20, align 1
  %conv.i54.i = zext i8 %83 to i32
  %shl.i55.i = shl nuw i32 %conv.i54.i, 24
  %84 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %19, align 1
  %conv3.i57.i = zext i8 %85 to i32
  %shl4.i58.i = shl nuw nsw i32 %conv3.i57.i, 16
  %or5.i59.i = or i32 %shl4.i58.i, %shl.i55.i
  %86 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %18, align 1
  %conv8.i61.i = zext i8 %87 to i32
  %shl9.i62.i = shl nuw nsw i32 %conv8.i61.i, 8
  %or10.i63.i = or i32 %or5.i59.i, %shl9.i62.i
  %88 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %17, align 1
  %conv12.i64.i = zext i8 %89 to i32
  %or13.i65.i = or i32 %or10.i63.i, %conv12.i64.i
  %size.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 4
  %90 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or13.i65.i, ptr %size.i, align 4
  %91 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %24, align 1
  %attr.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 5
  %93 = ptrtoint ptr %attr.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %attr.i, align 4
  call void @adfs_object_fixup(ptr noundef %dir, ptr noundef %obj) #8
  br label %cleanup

cleanup:                                          ; preds = %adfs_dir2obj.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %adfs_dir2obj.exit ], [ %call, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %de) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_dir_copyfrom(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adfs_object_fixup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_dir_copyto(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @adfs_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @adfs_f_dir_ops, !1, !"adfs_f_dir_ops", i1 false, i1 false}
!1 = !{!"../fs/adfs/dir_f.c", i32 317, i32 27}
!2 = !{ptr @__func__.adfs_f_read, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/adfs/dir_f.c", i32 165, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/adfs/dir_f.c", i32 131, i32 32}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/adfs/dir_f.c", i32 132, i32 32}
!9 = !{ptr @__func__.adfs_f_update, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/adfs/dir_f.c", i32 282, i32 4}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/adfs/dir_f.c", i32 286, i32 4}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/adfs/dir_f.c", i32 312, i32 21}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/adfs/dir_f.c", i32 312, i32 31}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
