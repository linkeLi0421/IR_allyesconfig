; ModuleID = '/llk/IR_all_yes/block/holder.c_pt.bc'
source_filename = "../block/holder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bd_link_disk_holder\22, \22a\22\09"
module asm "\09.weak\09__crc_bd_link_disk_holder\09\09\09\09"
module asm "\09.long\09__crc_bd_link_disk_holder\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bd_link_disk_holder:\09\09\09\09\09"
module asm "\09.asciz \09\22bd_link_disk_holder\22\09\09\09\09\09"
module asm "__kstrtabns_bd_link_disk_holder:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bd_unlink_disk_holder\22, \22a\22\09"
module asm "\09.weak\09__crc_bd_unlink_disk_holder\09\09\09\09"
module asm "\09.long\09__crc_bd_unlink_disk_holder\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bd_unlink_disk_holder:\09\09\09\09\09"
module asm "\09.asciz \09\22bd_unlink_disk_holder\22\09\09\09\09\09"
module asm "__kstrtabns_bd_unlink_disk_holder:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bd_holder_disk = type { %struct.list_head, ptr, i32 }

@bd_link_disk_holder.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"block/holder.c\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_bd_link_disk_holder = external dso_local constant [0 x i8], align 1
@__kstrtabns_bd_link_disk_holder = external dso_local constant [0 x i8], align 1
@__ksymtab_bd_link_disk_holder = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bd_link_disk_holder to i32), ptr @__kstrtab_bd_link_disk_holder, ptr @__kstrtabns_bd_link_disk_holder }, section "___ksymtab_gpl+bd_link_disk_holder", align 4
@bd_unlink_disk_holder.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_bd_unlink_disk_holder = external dso_local constant [0 x i8], align 1
@__kstrtabns_bd_unlink_disk_holder = external dso_local constant [0 x i8], align 1
@__ksymtab_bd_unlink_disk_holder = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bd_unlink_disk_holder to i32), ptr @__kstrtab_bd_unlink_disk_holder, ptr @__kstrtabns_bd_unlink_disk_holder }, section "___ksymtab_gpl+bd_unlink_disk_holder", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [18 x i8] c"../block/holder.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 80, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_bd_link_disk_holder, ptr @__ksymtab_bd_unlink_disk_holder, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bd_link_disk_holder(ptr noundef %bdev, ptr noundef %disk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #3
  %bd_holder = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 11
  %0 = ptrtoint ptr %bd_holder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_holder, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b114 = load i1, ptr @bd_link_disk_holder.__already_done, align 1
  br i1 %.b114, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !18

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @bd_link_disk_holder.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #3
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %bd_holder_dir = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 14
  %2 = ptrtoint ptr %bd_holder_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_holder_dir, align 4
  %tobool38.not = icmp eq ptr %3, null
  br i1 %tobool38.not, label %do.end56, label %if.end72.critedge, !prof !19

do.end56:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 9, ptr noundef null) #3
  br label %out_unlock

if.end72.critedge:                                ; preds = %if.end29
  %slave_bdevs.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 17
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end72.critedge
  %holder.0.in.i = phi ptr [ %slave_bdevs.i, %if.end72.critedge ], [ %holder.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %holder.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %holder.0.i = load ptr, ptr %holder.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %holder.0.i, %slave_bdevs.i
  br i1 %cmp.not.i, label %for.cond.i.if.end75_crit_edge, label %for.body.i

for.cond.i.if.end75_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end75

for.body.i:                                       ; preds = %for.cond.i
  %bdev2.i = getelementptr inbounds %struct.bd_holder_disk, ptr %holder.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev2.i, align 4
  %cmp3.i = icmp eq ptr %6, %bdev
  br i1 %cmp3.i, label %bd_find_holder_disk.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

bd_find_holder_disk.exit:                         ; preds = %for.body.i
  %tobool73.not = icmp eq ptr %holder.0.i, null
  br i1 %tobool73.not, label %bd_find_holder_disk.exit.if.end75_crit_edge, label %if.then74

bd_find_holder_disk.exit.if.end75_crit_edge:      ; preds = %bd_find_holder_disk.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end75

if.then74:                                        ; preds = %bd_find_holder_disk.exit
  call void @__sanitizer_cov_trace_pc() #5
  %refcnt = getelementptr inbounds %struct.bd_holder_disk, ptr %holder.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %refcnt, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %refcnt, align 4
  br label %out_unlock

if.end75:                                         ; preds = %bd_find_holder_disk.exit.if.end75_crit_edge, %for.cond.i.if.end75_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 16) #6
  %tobool77.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool77.not, label %if.end75.out_unlock_crit_edge, label %if.end79

if.end75.out_unlock_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_unlock

if.end79:                                         ; preds = %if.end75
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %bdev80 = getelementptr inbounds %struct.bd_holder_disk, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %bdev80 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bdev, ptr %bdev80, align 8
  %refcnt81 = getelementptr inbounds %struct.bd_holder_disk, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %refcnt81 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %refcnt81, align 4
  %slave_dir = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 16
  %14 = ptrtoint ptr %slave_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slave_dir, align 8
  %tobool82.not = icmp eq ptr %15, null
  br i1 %tobool82.not, label %if.end79.if.end88_crit_edge, label %if.then83

if.end79.if.end88_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end88

if.then83:                                        ; preds = %if.end79
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 10
  %16 = ptrtoint ptr %bd_device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_device.i, align 4
  %call1.i.i = tail call i32 @sysfs_create_link(ptr noundef nonnull %15, ptr noundef %bd_device.i, ptr noundef %17) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then83.if.then86_crit_edge

if.then83.if.then86_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then86

if.end.i:                                         ; preds = %if.then83
  %18 = ptrtoint ptr %bd_holder_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_holder_dir, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %20 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %part0.i, align 4
  %bd_device1.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %bd_device1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bd_device1.i, align 4
  %call1.i17.i = tail call i32 @sysfs_create_link(ptr noundef %19, ptr noundef %bd_device1.i, ptr noundef %23) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool4.not.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end88_crit_edge, label %if.then5.i

if.end.i.if.end88_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end88

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %slave_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slave_dir, align 8
  %26 = ptrtoint ptr %bd_device.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_device.i, align 4
  tail call void @sysfs_remove_link(ptr noundef %25, ptr noundef %27) #3
  br label %if.then86

if.then86:                                        ; preds = %if.then5.i, %if.then83.if.then86_crit_edge
  %retval.0.i115.ph = phi i32 [ %call1.i17.i, %if.then5.i ], [ %call1.i.i, %if.then83.if.then86_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %out_unlock

if.end88:                                         ; preds = %if.end.i.if.end88_crit_edge, %if.end79.if.end88_crit_edge
  %28 = ptrtoint ptr %slave_bdevs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slave_bdevs.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %slave_bdevs.i, ptr noundef %29) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end88.list_add.exit_crit_edge

if.end88.list_add.exit_crit_edge:                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %call7.i.i, align 8
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %slave_bdevs.i, ptr %prev.i, align 4
  %33 = ptrtoint ptr %slave_bdevs.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i.i, ptr %slave_bdevs.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end88.list_add.exit_crit_edge
  %34 = ptrtoint ptr %bd_holder_dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bd_holder_dir, align 4
  %call91 = tail call ptr @kobject_get(ptr noundef %35) #3
  br label %out_unlock

out_unlock:                                       ; preds = %list_add.exit, %if.then86, %if.end75.out_unlock_crit_edge, %if.then74, %do.end56
  %ret.1 = phi i32 [ 0, %if.then74 ], [ %retval.0.i115.ph, %if.then86 ], [ 0, %list_add.exit ], [ 0, %do.end56 ], [ -12, %if.end75.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #3
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bd_unlink_disk_holder(ptr noundef readonly %bdev, ptr noundef %disk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #3
  %slave_bdevs.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 17
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %holder.0.in.i = phi ptr [ %slave_bdevs.i, %entry ], [ %holder.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %holder.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %holder.0.i = load ptr, ptr %holder.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %holder.0.i, %slave_bdevs.i
  br i1 %cmp.not.i, label %for.cond.i.land.rhs_crit_edge, label %for.body.i

for.cond.i.land.rhs_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

for.body.i:                                       ; preds = %for.cond.i
  %bdev2.i = getelementptr inbounds %struct.bd_holder_disk, ptr %holder.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %bdev2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bdev2.i, align 4
  %cmp3.i = icmp eq ptr %2, %bdev
  br i1 %cmp3.i, label %bd_find_holder_disk.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

bd_find_holder_disk.exit:                         ; preds = %for.body.i
  %cmp = icmp eq ptr %holder.0.i, null
  br i1 %cmp, label %bd_find_holder_disk.exit.land.rhs_crit_edge, label %land.lhs.true.critedge

bd_find_holder_disk.exit.land.rhs_crit_edge:      ; preds = %bd_find_holder_disk.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

land.rhs:                                         ; preds = %bd_find_holder_disk.exit.land.rhs_crit_edge, %for.cond.i.land.rhs_crit_edge
  %.b54 = load i1, ptr @bd_unlink_disk_holder.__already_done, align 1
  br i1 %.b54, label %land.rhs.if.end41_crit_edge, label %if.then, !prof !18

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @bd_unlink_disk_holder.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #3
  br label %if.end41

land.lhs.true.critedge:                           ; preds = %bd_find_holder_disk.exit
  %refcnt = getelementptr inbounds %struct.bd_holder_disk, ptr %holder.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcnt, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool36.not = icmp eq i32 %dec, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true.critedge.if.end41_crit_edge

land.lhs.true.critedge.if.end41_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then37:                                        ; preds = %land.lhs.true.critedge
  %slave_dir = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 16
  %5 = ptrtoint ptr %slave_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slave_dir, align 8
  %tobool38.not = icmp eq ptr %6, null
  br i1 %tobool38.not, label %if.then37.if.end40_crit_edge, label %if.then39

if.then37.if.end40_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 10
  %7 = ptrtoint ptr %bd_device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bd_device.i, align 4
  tail call void @sysfs_remove_link(ptr noundef nonnull %6, ptr noundef %8) #3
  %bd_holder_dir.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 14
  %9 = ptrtoint ptr %bd_holder_dir.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_holder_dir.i, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  %11 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %part0.i, align 4
  %bd_device1.i = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %bd_device1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd_device1.i, align 4
  tail call void @sysfs_remove_link(ptr noundef %10, ptr noundef %14) #3
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then37.if.end40_crit_edge
  %bd_holder_dir = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 14
  %15 = ptrtoint ptr %bd_holder_dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_holder_dir, align 4
  tail call void @kobject_put(ptr noundef %16) #3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %holder.0.i) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end40.list_del_init.exit_crit_edge

if.end40.list_del_init.exit_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %holder.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %holder.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %holder.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end40.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %holder.0.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %holder.0.i, ptr %holder.0.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %holder.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %holder.0.i, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef nonnull %holder.0.i) #3
  br label %if.end41

if.end41:                                         ; preds = %list_del_init.exit, %land.lhs.true.critedge.if.end41_crit_edge, %if.then, %land.rhs.if.end41_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bd_register_pending_holders(ptr noundef %disk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %open_mutex = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #3
  %slave_bdevs = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 17
  %slave_dir.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 16
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %if.end.i.for.cond_crit_edge, %entry
  %holder.0.in = phi ptr [ %slave_bdevs, %entry ], [ %holder.0, %if.end.i.for.cond_crit_edge ]
  %0 = ptrtoint ptr %holder.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %holder.0 = load ptr, ptr %holder.0.in, align 4
  %cmp.not = icmp eq ptr %holder.0, %slave_bdevs
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %bdev = getelementptr inbounds %struct.bd_holder_disk, ptr %holder.0, i32 0, i32 1
  %1 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bdev, align 4
  %3 = ptrtoint ptr %slave_dir.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slave_dir.i, align 8
  %bd_device.i = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 10
  %5 = ptrtoint ptr %bd_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd_device.i, align 4
  %call1.i.i = tail call i32 @sysfs_create_link(ptr noundef %4, ptr noundef %bd_device.i, ptr noundef %6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.for.cond12.preheader_crit_edge

for.body.for.cond12.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond12.preheader

if.end.i:                                         ; preds = %for.body
  %bd_holder_dir.i = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 14
  %7 = ptrtoint ptr %bd_holder_dir.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bd_holder_dir.i, align 4
  %9 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part0.i, align 4
  %bd_device1.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %bd_device1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_device1.i, align 4
  %call1.i17.i = tail call i32 @sysfs_create_link(ptr noundef %8, ptr noundef %bd_device1.i, ptr noundef %12) #3
  %tobool4.not.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool4.not.i, label %if.end.i.for.cond_crit_edge, label %if.then5.i

if.end.i.for.cond_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %slave_dir.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slave_dir.i, align 8
  %15 = ptrtoint ptr %bd_device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_device.i, align 4
  tail call void @sysfs_remove_link(ptr noundef %14, ptr noundef %16) #3
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %if.then5.i, %for.body.for.cond12.preheader_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i17.i, %if.then5.i ], [ %call1.i.i, %for.body.for.cond12.preheader_crit_edge ]
  %holder.1.in48 = getelementptr inbounds %struct.list_head, ptr %holder.0, i32 0, i32 1
  %17 = ptrtoint ptr %holder.1.in48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %holder.149 = load ptr, ptr %holder.1.in48, align 4
  %cmp15.not50 = icmp eq ptr %holder.149, %slave_bdevs
  br i1 %cmp15.not50, label %for.cond12.preheader.cleanup_crit_edge, label %for.cond12.preheader.for.body17_crit_edge

for.cond12.preheader.for.body17_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body17

for.cond12.preheader.cleanup_crit_edge:           ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond12.preheader.for.body17_crit_edge
  %holder.151 = phi ptr [ %holder.1, %for.body17.for.body17_crit_edge ], [ %holder.149, %for.cond12.preheader.for.body17_crit_edge ]
  %bdev18 = getelementptr inbounds %struct.bd_holder_disk, ptr %holder.151, i32 0, i32 1
  %18 = ptrtoint ptr %bdev18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev18, align 4
  %20 = ptrtoint ptr %slave_dir.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slave_dir.i, align 8
  %bd_device.i43 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  %22 = ptrtoint ptr %bd_device.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bd_device.i43, align 4
  tail call void @sysfs_remove_link(ptr noundef %21, ptr noundef %23) #3
  %bd_holder_dir.i44 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 14
  %24 = ptrtoint ptr %bd_holder_dir.i44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bd_holder_dir.i44, align 4
  %26 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %part0.i, align 4
  %bd_device1.i46 = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %bd_device1.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bd_device1.i46, align 4
  tail call void @sysfs_remove_link(ptr noundef %25, ptr noundef %29) #3
  %holder.1.in = getelementptr inbounds %struct.list_head, ptr %holder.151, i32 0, i32 1
  %30 = ptrtoint ptr %holder.1.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %holder.1 = load ptr, ptr %holder.1.in, align 4
  %cmp15.not = icmp eq ptr %holder.1, %slave_bdevs
  br i1 %cmp15.not, label %for.body17.cleanup_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body17

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.body17.cleanup_crit_edge, %for.cond12.preheader.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %for.cond12.preheader.cleanup_crit_edge ], [ %retval.0.i.ph, %for.body17.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../block/holder.c", i32 80, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_bd_link_disk_holder, !4, !"__ksymtab_bd_link_disk_holder", i1 false, i1 false}
!4 = !{!"../block/holder.c", i32 120, i32 1}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../block/holder.c", i32 145, i32 7}
!7 = !{ptr @__ksymtab_bd_unlink_disk_holder, !8, !"__ksymtab_bd_unlink_disk_holder", i1 false, i1 false}
!8 = !{!"../block/holder.c", i32 154, i32 1}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
