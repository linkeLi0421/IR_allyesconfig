; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_bio_io.c_pt.bc'
source_filename = "../fs/xfs/xfs_bio_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.84, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.84 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }

@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_flush_bdev_async(ptr noundef %bio, ptr noundef %bdev, ptr noundef %done) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %queue_flags, align 4
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @complete(ptr noundef %done) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @bio_init(ptr noundef %bio, ptr noundef null, i16 noundef zeroext 0) #3
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %7 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %8, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %9 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %10, %bdev
  br i1 %cmp.not.i, label %if.end.bio_set_dev.exit_crit_edge, label %if.then.i

if.end.bio_set_dev.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv1.i8.i = and i16 %8, -2177
  %11 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end.bio_set_dev.exit_crit_edge
  %12 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bdev, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #3
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %13 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 264193, ptr %bi_opf, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %14 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %done, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %15 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xfs_flush_bdev_async_endio, ptr %bi_end_io, align 8
  tail call void @submit_bio(ptr noundef %bio) #3
  br label %cleanup

cleanup:                                          ; preds = %bio_set_dev.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_flush_bdev_async_endio(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  tail call void @complete(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_rw_bdev(ptr noundef %bdev, i64 noundef %sector, i32 noundef %count, ptr noundef %data, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp = icmp eq i32 %op, 1
  %or.cond = and i1 %cmp, %call
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool2.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool2.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %1(ptr noundef %data, i32 noundef %count) #3
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %add.i = add i32 %count, 4095
  %div1.i = lshr i32 %add.i, 12
  %2 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 256) #3
  %conv3 = trunc i32 %2 to i16
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv3, ptr noundef nonnull @fs_bio_set) #3
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %4, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %6, %bdev
  br i1 %cmp.not.i, label %if.end.bio_set_dev.exit_crit_edge, label %if.then.i71

if.end.bio_set_dev.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %bio_set_dev.exit

if.then.i71:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv1.i8.i = and i16 %4, -2177
  %7 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i71, %if.end.bio_set_dev.exit_crit_edge
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bdev, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #3
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %sector, ptr %bi_iter, align 8
  %10 = or i32 %op, 6144
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bi_opf, align 8
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %bio_set_dev.exit
  %left.0 = phi i32 [ %count, %bio_set_dev.exit ], [ %sub25, %while.end.do.body_crit_edge ]
  %bio.0 = phi ptr [ %call.i, %bio_set_dev.exit ], [ %bio.1.lcssa, %while.end.do.body_crit_edge ]
  %data.addr.0 = phi ptr [ %data, %bio_set_dev.exit ], [ %add.ptr, %while.end.do.body_crit_edge ]
  %call.i72 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %data.addr.0) #3
  br i1 %call.i72, label %if.then.i73, label %if.end.i

if.then.i73:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i = tail call ptr @vmalloc_to_page(ptr noundef %data.addr.0) #3
  %.pre = ptrtoint ptr %data.addr.0 to i32
  br label %kmem_to_page.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %data.addr.0 to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  br label %kmem_to_page.exit

kmem_to_page.exit:                                ; preds = %if.end.i, %if.then.i73
  %.pre-phi = phi i32 [ %.pre, %if.then.i73 ], [ %13, %if.end.i ]
  %retval.0.i = phi ptr [ %call1.i, %if.then.i73 ], [ %add.ptr.i, %if.end.i ]
  %and = and i32 %.pre-phi, 4095
  %sub = sub nuw nsw i32 4096, %and
  %14 = tail call i32 @llvm.umin.i32(i32 %left.0, i32 %sub)
  %call1184 = tail call i32 @bio_add_page(ptr noundef %bio.0, ptr noundef %retval.0.i, i32 noundef %14, i32 noundef %and) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %call1184, i32 %14)
  %cmp12.not85 = icmp eq i32 %call1184, %14
  br i1 %cmp12.not85, label %kmem_to_page.exit.while.end_crit_edge, label %while.body.lr.ph

kmem_to_page.exit.while.end_crit_edge:            ; preds = %kmem_to_page.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %kmem_to_page.exit
  %add.i74 = add i32 %left.0, 4095
  %div1.i75 = lshr i32 %add.i74, 12
  %15 = tail call i32 @llvm.umin.i32(i32 %div1.i75, i32 256) #3
  %conv15 = trunc i32 %15 to i16
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %bio.186 = phi ptr [ %bio.0, %while.body.lr.ph ], [ %call.i76, %while.body.while.body_crit_edge ]
  %call.i76 = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv15, ptr noundef nonnull @fs_bio_set) #3
  %bi_flags.i.i77 = getelementptr inbounds %struct.bio, ptr %call.i76, i32 0, i32 3
  %16 = ptrtoint ptr %bi_flags.i.i77 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bi_flags.i.i77, align 4
  %conv1.i.i78 = and i16 %17, -2049
  store i16 %conv1.i.i78, ptr %bi_flags.i.i77, align 4
  %bi_bdev.i79 = getelementptr inbounds %struct.bio, ptr %bio.186, i32 0, i32 1
  %18 = ptrtoint ptr %bi_bdev.i79 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_bdev.i79, align 4
  %bi_bdev1.i = getelementptr inbounds %struct.bio, ptr %call.i76, i32 0, i32 1
  %20 = ptrtoint ptr %bi_bdev1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %bi_bdev1.i, align 4
  tail call void @bio_clone_blkg_association(ptr noundef %call.i76, ptr noundef %bio.186) #3
  %bi_iter17 = getelementptr inbounds %struct.bio, ptr %bio.186, i32 0, i32 8
  %21 = ptrtoint ptr %bi_iter17 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bi_iter17, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio.186, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %24, 9
  %conv20 = zext i32 %shr to i64
  %add = add i64 %22, %conv20
  %bi_iter21 = getelementptr inbounds %struct.bio, ptr %call.i76, i32 0, i32 8
  %25 = ptrtoint ptr %bi_iter21 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add, ptr %bi_iter21, align 8
  %bi_opf23 = getelementptr inbounds %struct.bio, ptr %bio.186, i32 0, i32 2
  %26 = ptrtoint ptr %bi_opf23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_opf23, align 8
  %bi_opf24 = getelementptr inbounds %struct.bio, ptr %call.i76, i32 0, i32 2
  %28 = ptrtoint ptr %bi_opf24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %bi_opf24, align 8
  tail call void @bio_chain(ptr noundef %bio.186, ptr noundef %call.i76) #3
  tail call void @submit_bio(ptr noundef %bio.186) #3
  %call11 = tail call i32 @bio_add_page(ptr noundef %call.i76, ptr noundef %retval.0.i, i32 noundef %14, i32 noundef %and) #3
  %cmp12.not = icmp eq i32 %call11, %14
  br i1 %cmp12.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %kmem_to_page.exit.while.end_crit_edge
  %bio.1.lcssa = phi ptr [ %bio.0, %kmem_to_page.exit.while.end_crit_edge ], [ %call.i76, %while.body.while.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %data.addr.0, i32 %14
  %sub25 = sub i32 %left.0, %14
  %cmp26.not = icmp eq i32 %sub25, 0
  br i1 %cmp26.not, label %do.end, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %while.end
  %call28 = tail call i32 @submit_bio_wait(ptr noundef %bio.1.lcssa) #3
  tail call void @bio_put(ptr noundef %bio.1.lcssa) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp31 = icmp eq i32 %op, 0
  %or.cond70 = and i1 %cmp31, %call
  br i1 %or.cond70, label %if.then33, label %do.end.if.end34_crit_edge

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then33:                                        ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %29 = load i32, ptr @cacheid, align 4
  %and2.i.i80 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i80)
  %tobool2.not.i81 = icmp eq i32 %and2.i.i80, 0
  br i1 %tobool2.not.i81, label %if.then33.if.end34_crit_edge, label %if.then.i82

if.then33.if.end34_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then.i82:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %30(ptr noundef %add.ptr, i32 noundef %count) #3
  br label %if.end34

if.end34:                                         ; preds = %if.then.i82, %if.then33.if.end34_crit_edge, %do.end.if.end34_crit_edge
  ret i32 %call28
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_clone_blkg_association(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
