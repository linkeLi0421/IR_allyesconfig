; ModuleID = '/llk/IR_all_yes/fs/hfsplus/part_tbl.c_pt.bc'
source_filename = "../fs/hfsplus/part_tbl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.old_pmap = type <{ i16, [42 x %struct.old_pmap_entry] }>
%struct.old_pmap_entry = type { i32, i32, i32 }
%struct.new_pmap = type { i16, i16, i32, i32, i32, [32 x i8], [32 x i8] }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Apple_HFS\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 20557, i64 21587]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [25 x i8] c"../fs/hfsplus/part_tbl.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 101, i32 31 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_part_find(ptr noundef %sb, ptr nocapture noundef %part_start, ptr nocapture noundef writeonly %part_size) local_unnamed_addr #0 align 64 {
entry:
  %pm.addr.i = alloca ptr, align 4
  %data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %data, align 4, !annotation !11
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %1 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %entry.if.end8.i_crit_edge, label %land.lhs.true.i.i.i

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

land.lhs.true.i.i.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37, i32 9
  %5 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i.i.i = icmp eq i32 %6, 0
  %.op = and i32 %6, 65535
  %phi.bo = select i1 %tobool2.not.i.i.i, i32 512, i32 %.op
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true.i.i.i, %entry.if.end8.i_crit_edge
  %retval1.0.i.i.i = phi i32 [ 512, %entry.if.end8.i_crit_edge ], [ %phi.bo, %land.lhs.true.i.i.i ]
  %7 = call i32 @llvm.umax.i32(i32 %retval1.0.i.i.i, i32 512)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end8.i
  %8 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %part_start, align 8
  %add = add i64 %9, 1
  %call2 = call i32 @hfsplus_submit_bio(ptr noundef %sb, i64 noundef %add, ptr noundef nonnull %call9.i, ptr noundef nonnull %data, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %13, label %if.end5.out_crit_edge [
    i16 21587, label %sw.bb
    i16 20557, label %sw.bb8
  ]

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb:                                            ; preds = %if.end5
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %part.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %16, i32 0, i32 31
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb
  %i.021.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.old_pmap, ptr %11, i32 0, i32 1, i32 %i.021.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pdSize.i = getelementptr %struct.old_pmap, ptr %11, i32 0, i32 1, i32 %i.021.i, i32 1
  %19 = ptrtoint ptr %pdSize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pdSize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not.i = icmp eq i32 %20, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %pdFSID.i = getelementptr %struct.old_pmap, ptr %11, i32 0, i32 1, i32 %i.021.i, i32 2
  %21 = ptrtoint ptr %pdFSID.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pdFSID.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1413894961, i32 %22)
  %cmp3.i = icmp eq i32 %22, 1413894961
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true2.i.for.inc.i_crit_edge

land.lhs.true2.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %23 = ptrtoint ptr %part.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %part.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp5.i = icmp slt i32 %24, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %i.021.i)
  %cmp7.i = icmp eq i32 %24, %i.021.i
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %if.then.i23, label %land.lhs.true4.i.for.inc.i_crit_edge

land.lhs.true4.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i23:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i32 %18 to i64
  %25 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %part_start, align 8
  %add.i = add i64 %26, %conv.i
  store i64 %add.i, ptr %part_start, align 8
  %27 = ptrtoint ptr %pdSize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pdSize.i, align 4
  %conv10.i = zext i32 %28 to i64
  %29 = ptrtoint ptr %part_size to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv10.i, ptr %part_size, align 8
  br label %out

for.inc.i:                                        ; preds = %land.lhs.true4.i.for.inc.i_crit_edge, %land.lhs.true2.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 42
  br i1 %exitcond.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb8:                                           ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm.addr.i)
  %30 = ptrtoint ptr %pm.addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %11, ptr %pm.addr.i, align 4
  %s_fs_info.i.i24 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %31 = ptrtoint ptr %s_fs_info.i.i24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i.i24, align 16
  %pmMapBlkCnt.i = getelementptr inbounds %struct.new_pmap, ptr %11, i32 0, i32 2
  %33 = ptrtoint ptr %pmMapBlkCnt.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %pmMapBlkCnt.i, align 1
  %35 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %36, i32 0, i32 18
  %37 = ptrtoint ptr %bd_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bd_queue.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i.i, label %sw.bb8.hfsplus_min_io_size.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

sw.bb8.hfsplus_min_io_size.exit.i_crit_edge:      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %hfsplus_min_io_size.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %logical_block_size.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 37, i32 9
  %39 = ptrtoint ptr %logical_block_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %logical_block_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool2.not.i.i.i.i = icmp eq i32 %40, 0
  %.op.i = and i32 %40, 65535
  %phi.bo.i = select i1 %tobool2.not.i.i.i.i, i32 512, i32 %.op.i
  br label %hfsplus_min_io_size.exit.i

hfsplus_min_io_size.exit.i:                       ; preds = %land.lhs.true.i.i.i.i, %sw.bb8.hfsplus_min_io_size.exit.i_crit_edge
  %retval1.0.i.i.i.i = phi i32 [ 512, %sw.bb8.hfsplus_min_io_size.exit.i_crit_edge ], [ %phi.bo.i, %land.lhs.true.i.i.i.i ]
  %41 = call i32 @llvm.umax.i32(i32 %retval1.0.i.i.i.i, i32 512) #6
  %part.i25 = getelementptr inbounds %struct.hfsplus_sb_info, ptr %32, i32 0, i32 31
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call9.i to i32
  %smax.i = call i32 @llvm.smax.i32(i32 %34, i32 1) #6
  %42 = add nsw i32 %smax.i, -1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %hfsplus_min_io_size.exit.i
  %i.0.i = phi i32 [ 0, %hfsplus_min_io_size.exit.i ], [ %inc.i33, %do.cond.i.do.body.i_crit_edge ]
  %43 = ptrtoint ptr %pm.addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pm.addr.i, align 4
  %pmPartType.i = getelementptr inbounds %struct.new_pmap, ptr %44, i32 0, i32 6
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(9) %pmPartType.i, ptr noundef nonnull dereferenceable(9) @.str, i32 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i26 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i30, label %do.body.i.if.end.i35_crit_edge

do.body.i.if.end.i35_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i35

land.lhs.true.i30:                                ; preds = %do.body.i
  %45 = ptrtoint ptr %part.i25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %part.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i27 = icmp slt i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %i.0.i)
  %cmp5.i28 = icmp eq i32 %46, %i.0.i
  %or.cond.i29 = select i1 %cmp.i27, i1 true, i1 %cmp5.i28
  br i1 %or.cond.i29, label %if.then.i32, label %land.lhs.true.i30.if.end.i35_crit_edge

land.lhs.true.i30.if.end.i35_crit_edge:           ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i35

if.then.i32:                                      ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #8
  %pmPyPartStart.i = getelementptr inbounds %struct.new_pmap, ptr %44, i32 0, i32 3
  %47 = ptrtoint ptr %pmPyPartStart.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %pmPyPartStart.i, align 1
  %conv7.i = zext i32 %48 to i64
  %49 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %part_start, align 8
  %add.i31 = add i64 %50, %conv7.i
  store i64 %add.i31, ptr %part_start, align 8
  %pmPartBlkCnt.i = getelementptr inbounds %struct.new_pmap, ptr %44, i32 0, i32 4
  %51 = ptrtoint ptr %pmPartBlkCnt.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %pmPartBlkCnt.i, align 1
  %conv8.i = zext i32 %52 to i64
  %53 = ptrtoint ptr %part_size to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv8.i, ptr %part_size, align 8
  br label %hfs_parse_new_pmap.exit

if.end.i35:                                       ; preds = %land.lhs.true.i30.if.end.i35_crit_edge, %do.body.i.if.end.i35_crit_edge
  %inc.i33 = add nuw nsw i32 %i.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %42)
  %exitcond.not.i34 = icmp eq i32 %i.0.i, %42
  br i1 %exitcond.not.i34, label %if.end.i35.hfs_parse_new_pmap.exit_crit_edge, label %if.end12.i

if.end.i35.hfs_parse_new_pmap.exit_crit_edge:     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %hfs_parse_new_pmap.exit

if.end12.i:                                       ; preds = %if.end.i35
  %add.ptr.i = getelementptr i8, ptr %44, i32 512
  %54 = ptrtoint ptr %pm.addr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i, ptr %pm.addr.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %41)
  %cmp13.not.i = icmp slt i32 %sub.ptr.sub.i, %41
  br i1 %cmp13.not.i, label %if.end12.i.do.cond.i_crit_edge, label %if.then15.i

if.end12.i.do.cond.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.i

if.then15.i:                                      ; preds = %if.end12.i
  %55 = ptrtoint ptr %part_start to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %part_start, align 8
  %narrow.i = add nuw i32 %i.0.i, 2
  %add16.i = zext i32 %narrow.i to i64
  %add18.i = add i64 %56, %add16.i
  %call19.i = call i32 @hfsplus_submit_bio(ptr noundef %sb, i64 noundef %add18.i, ptr noundef nonnull %call9.i, ptr noundef nonnull %pm.addr.i, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then15.i.do.cond.i_crit_edge, label %if.then15.i.hfs_parse_new_pmap.exit_crit_edge

if.then15.i.hfs_parse_new_pmap.exit_crit_edge:    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hfs_parse_new_pmap.exit

if.then15.i.do.cond.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then15.i.do.cond.i_crit_edge, %if.end12.i.do.cond.i_crit_edge
  %57 = ptrtoint ptr %pm.addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pm.addr.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %58, align 1
  %cmp25.i = icmp eq i16 %60, 20557
  br i1 %cmp25.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.hfs_parse_new_pmap.exit_crit_edge

do.cond.i.hfs_parse_new_pmap.exit_crit_edge:      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hfs_parse_new_pmap.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

hfs_parse_new_pmap.exit:                          ; preds = %do.cond.i.hfs_parse_new_pmap.exit_crit_edge, %if.then15.i.hfs_parse_new_pmap.exit_crit_edge, %if.end.i35.hfs_parse_new_pmap.exit_crit_edge, %if.then.i32
  %retval.0.i = phi i32 [ 0, %if.then.i32 ], [ -2, %if.end.i35.hfs_parse_new_pmap.exit_crit_edge ], [ %call19.i, %if.then15.i.hfs_parse_new_pmap.exit_crit_edge ], [ -2, %do.cond.i.hfs_parse_new_pmap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm.addr.i)
  br label %out

out:                                              ; preds = %hfs_parse_new_pmap.exit, %for.inc.i.out_crit_edge, %if.then.i23, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %res.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %retval.0.i, %hfs_parse_new_pmap.exit ], [ -2, %if.end5.out_crit_edge ], [ 0, %if.then.i23 ], [ -2, %for.inc.i.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out ], [ -12, %if.end8.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_submit_bio(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/part_tbl.c", i32 101, i32 31}
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
