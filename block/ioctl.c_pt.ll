; ModuleID = '/llk/IR_all_yes/block/ioctl.c_pt.bc'
source_filename = "../block/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pr_clear = type { i64, i32, i32 }
%struct.pr_reservation = type { i64, i32, i32 }
%struct.pr_registration = type { i64, i64, i32, i32 }
%struct.blkpg_partition = type { i64, i64, i32, [64 x i8], [64 x i8] }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.blkpg_ioctl_arg = type { i32, i32, i32, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.49 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.49 = type { %struct.work_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.83 = type { ptr }
%struct.pr_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pr_preempt = type { i64, i64, i32, i32 }

@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"block/ioctl.c\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [45 x i64] [i64 43, i64 32, i64 769, i64 4701, i64 4702, i64 4703, i64 4704, i64 4705, i64 4706, i64 4707, i64 4708, i64 4709, i64 4711, i64 4712, i64 4713, i64 4724, i64 4725, i64 4726, i64 4727, i64 4728, i64 4729, i64 4730, i64 4731, i64 4732, i64 4733, i64 4734, i64 4735, i64 1074008689, i64 1074795139, i64 1074795142, i64 1074795143, i64 1074795144, i64 1074819273, i64 1074819274, i64 1074819277, i64 1075343560, i64 1075343563, i64 1075343564, i64 2147750512, i64 2147750514, i64 2147750532, i64 2147750533, i64 2148012672, i64 3222278786, i64 3225948787]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.6 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 174, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [17 x i8] c"../block/ioctl.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 58, i32 6 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkdev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %c.i.i = alloca %struct.pr_clear, align 8
  %rsv.i277.i = alloca %struct.pr_reservation, align 8
  %rsv.i.i = alloca %struct.pr_reservation, align 8
  %reg.i.i = alloca %struct.pr_registration, align 8
  %range.i.i = alloca [2 x i64], align 8
  %bdev.addr.i = alloca ptr, align 4
  %p.i.i = alloca %struct.blkpg_partition, align 8
  %geo.i = alloca %struct.hd_geometry, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @I_BDEV(ptr noundef %3) #5
  %4 = inttoptr i32 %arg to ptr
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %5 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_mode, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %and1 = and i32 %6, -65
  %and = lshr i32 %8, 5
  %9 = and i32 %and, 64
  %mode.0 = or i32 %9, %and1
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.if.end30_crit_edge [
    i32 769, label %sw.bb
    i32 4713, label %sw.bb3
    i32 4707, label %entry.sw.bb5_crit_edge
    i32 4709, label %entry.sw.bb5_crit_edge144
    i32 4704, label %sw.bb10
    i32 -2147216784, label %sw.bb16
    i32 1074008689, label %sw.bb19
    i32 -2147216782, label %sw.bb21
    i32 -1069018509, label %sw.bb24
    i32 4705, label %sw.bb.i
    i32 4701, label %sw.bb1.i
    i32 4727, label %sw.bb3.i
    i32 4733, label %sw.bb5.i
    i32 4735, label %sw.bb7.i
    i32 -2146954624, label %sw.bb9.i
    i32 -1072688510, label %sw.bb11.i
    i32 1074795139, label %entry.sw.bb13.i_crit_edge
    i32 1074795142, label %entry.sw.bb13.i_crit_edge145
    i32 1074795143, label %entry.sw.bb13.i_crit_edge146
    i32 1074795144, label %entry.sw.bb13.i_crit_edge147
    i32 -2147216764, label %sw.bb15.i
    i32 -2147216763, label %sw.bb18.i
    i32 4702, label %sw.bb22.i
    i32 4712, label %sw.bb26.i
    i32 4731, label %sw.bb29.i
    i32 4728, label %sw.bb32.i
    i32 4729, label %sw.bb35.i
    i32 4730, label %sw.bb38.i
    i32 4732, label %sw.bb41.i
    i32 4711, label %sw.bb43.i
    i32 4734, label %sw.bb50.i
    i32 4706, label %entry.sw.bb55.i_crit_edge
    i32 4708, label %entry.sw.bb55.i_crit_edge148
    i32 4703, label %sw.bb58.i
    i32 4724, label %entry.sw.bb67.i_crit_edge
    i32 4725, label %entry.sw.bb67.i_crit_edge149
    i32 4726, label %entry.sw.bb67.i_crit_edge150
    i32 1075343560, label %sw.bb69.i
    i32 1074819273, label %sw.bb71.i
    i32 1074819274, label %sw.bb73.i
    i32 1075343563, label %sw.bb75.i
    i32 1075343564, label %sw.bb77.i
    i32 1074819277, label %sw.bb79.i
  ]

entry.sw.bb67.i_crit_edge150:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb67.i

entry.sw.bb67.i_crit_edge149:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb67.i

entry.sw.bb67.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb67.i

entry.sw.bb55.i_crit_edge148:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb55.i

entry.sw.bb55.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb55.i

entry.sw.bb13.i_crit_edge147:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge146:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge145:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

entry.sw.bb5_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

sw.bb:                                            ; preds = %entry
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %11 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_disk.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %geo.i) #5
  %13 = getelementptr inbounds %struct.hd_geometry, ptr %geo.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not.i = icmp eq i32 %arg, 0
  br i1 %tobool.not.i, label %sw.bb.blkdev_getgeo.exit_crit_edge, label %if.end.i

sw.bb.blkdev_getgeo.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_getgeo.exit

if.end.i:                                         ; preds = %sw.bb
  %fops.i = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 8
  %14 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fops.i, align 8
  %getgeo.i = getelementptr inbounds %struct.block_device_operations, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %getgeo.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %getgeo.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %if.end.i.blkdev_getgeo.exit_crit_edge, label %if.end3.i

if.end.i.blkdev_getgeo.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_getgeo.exit

if.end3.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %geo.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %geo.i, align 8
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %call, align 8
  %conv.i = trunc i64 %20 to i32
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %13, align 4
  %call6.i = call i32 %17(ptr noundef %call, ptr noundef nonnull %geo.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then.i.i, label %if.end3.i.blkdev_getgeo.exit_crit_edge

if.end3.i.blkdev_getgeo.exit_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_getgeo.exit

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #5
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %if.then.i.i.blkdev_getgeo.exit_crit_edge, label %if.end.i.i.i

if.then.i.i.blkdev_getgeo.exit_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_getgeo.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 8, i32 -1226833920) #8, !srcloc !19
  %asmresult.i.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.blkdev_getgeo.exit_crit_edge

if.end.i.i.i.blkdev_getgeo.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_getgeo.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %geo.i, i32 noundef 8) #5
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %4, ptr noundef nonnull %geo.i, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool11.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool11.not.i, i32 0, i32 -14
  br label %blkdev_getgeo.exit

blkdev_getgeo.exit:                               ; preds = %copy_to_user.exit.i, %if.end.i.i.i.blkdev_getgeo.exit_crit_edge, %if.then.i.i.blkdev_getgeo.exit_crit_edge, %if.end3.i.blkdev_getgeo.exit_crit_edge, %if.end.i.blkdev_getgeo.exit_crit_edge, %sw.bb.blkdev_getgeo.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.bb.blkdev_getgeo.exit_crit_edge ], [ -25, %if.end.i.blkdev_getgeo.exit_crit_edge ], [ %call6.i, %if.end3.i.blkdev_getgeo.exit_crit_edge ], [ -14, %if.then.i.i.blkdev_getgeo.exit_crit_edge ], [ -14, %if.end.i.i.i.blkdev_getgeo.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %geo.i) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 58) #5
  %23 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !20
  %and.i.i = and i32 %25, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %26 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #5, !srcloc !23
  %asmresult.i = extractvalue { i32, i32 } %26, 0
  %asmresult2.i = extractvalue { i32, i32 } %26, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i77 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i77, label %lor.lhs.false.i, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb3
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 58) #5
  %data.i = getelementptr inbounds %struct.blkpg_ioctl_arg, ptr %4, i32 0, i32 3
  %27 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i20.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i20.i to ptr
  %cpu_domain.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i21.i) #3, !srcloc !20
  %and.i22.i = and i32 %29, -13
  %or.i23.i = or i32 %and.i22.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i23.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %30 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %data.i, i32 -1226833921) #5, !srcloc !24
  %asmresult13.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult13.i)
  %tobool16.not.i = icmp eq i32 %asmresult13.i, 0
  br i1 %tobool16.not.i, label %if.end.i78, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i78:                                       ; preds = %lor.lhs.false.i
  %asmresult14.i = extractvalue { i32, i32 } %30, 1
  %31 = inttoptr i32 %asmresult14.i to ptr
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %32 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bd_disk.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %p.i.i) #5
  %34 = call ptr @memset(ptr %p.i.i, i32 255, i32 152)
  %call.i.i = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call.i.i, label %if.end59.i.i.i.i, label %if.end.i78.blkpg_do_ioctl.exit.i_crit_edge

if.end.i78.blkpg_do_ioctl.exit.i_crit_edge:       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkpg_do_ioctl.exit.i

if.end59.i.i.i.i:                                 ; preds = %if.end.i78
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #5
  %call.i.i.i.i79 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i.i79, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 152, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !26

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p.i.i, i32 noundef 152) #5
  %36 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #3, !srcloc !20
  %and.i.i.i.i.i.i = and i32 %38, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %p.i.i, ptr noundef %31, i32 noundef 152) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end3.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !26

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i40.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 152, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 152, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 152, %res.0.i.i40.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %p.i.i, i32 %sub.i.i.i.i
  %39 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i40.i.i)
  br label %blkpg_do_ioctl.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i.i.i
  %bd_partno.i.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 15
  %40 = ptrtoint ptr %bd_partno.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bd_partno.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.i.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool.i.not.i.i, label %if.end6.i.i, label %if.end3.i.i.blkpg_do_ioctl.exit.i_crit_edge

if.end3.i.i.blkpg_do_ioctl.exit.i_crit_edge:      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkpg_do_ioctl.exit.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  %pno.i.i = getelementptr inbounds %struct.blkpg_partition, ptr %p.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %pno.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pno.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i.i = icmp slt i32 %43, 1
  br i1 %cmp.i.i, label %if.end6.i.i.blkpg_do_ioctl.exit.i_crit_edge, label %if.end8.i.i

if.end6.i.i.blkpg_do_ioctl.exit.i_crit_edge:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkpg_do_ioctl.exit.i

if.end8.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult2.i)
  %cmp9.i.i = icmp eq i32 %asmresult2.i, 2
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call12.i.i = call i32 @bdev_del_partition(ptr noundef %33, i32 noundef %43) #5
  br label %blkpg_do_ioctl.exit.i

if.end13.i.i:                                     ; preds = %if.end8.i.i
  %44 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %p.i.i, align 8
  %shr.i.i = ashr i64 %45, 9
  %length15.i.i = getelementptr inbounds %struct.blkpg_partition, ptr %p.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %length15.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %length15.i.i, align 8
  %shr16.i.i = ashr i64 %47, 9
  %48 = zext i32 %asmresult2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %asmresult2.i, label %if.end13.i.i.blkpg_do_ioctl.exit.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 3, label %sw.bb24.i.i
  ]

if.end13.i.i.blkpg_do_ioctl.exit.i_crit_edge:     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkpg_do_ioctl.exit.i

sw.bb.i.i:                                        ; preds = %if.end13.i.i
  %bd_queue.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %49 = ptrtoint ptr %bd_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bd_queue.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i.i, label %sw.bb.i.i.bdev_logical_block_size.exit.i.i_crit_edge, label %land.lhs.true.i.i37.i.i

sw.bb.i.i.bdev_logical_block_size.exit.i.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_logical_block_size.exit.i.i

land.lhs.true.i.i37.i.i:                          ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %logical_block_size.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 37, i32 9
  %51 = ptrtoint ptr %logical_block_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %logical_block_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool2.not.i.i.i.i = icmp eq i32 %52, 0
  %.op.i.i = add i32 %52, -1
  %phi.bo.i.i = select i1 %tobool2.not.i.i.i.i, i32 511, i32 %.op.i.i
  br label %bdev_logical_block_size.exit.i.i

bdev_logical_block_size.exit.i.i:                 ; preds = %land.lhs.true.i.i37.i.i, %sw.bb.i.i.bdev_logical_block_size.exit.i.i_crit_edge
  %retval1.0.i.i.i.i = phi i32 [ 511, %sw.bb.i.i.bdev_logical_block_size.exit.i.i_crit_edge ], [ %phi.bo.i.i, %land.lhs.true.i.i37.i.i ]
  %conv.i.i = zext i32 %retval1.0.i.i.i.i to i64
  %and.i24.i = and i64 %45, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i24.i)
  %tobool19.not.i.i = icmp eq i64 %and.i24.i, 0
  br i1 %tobool19.not.i.i, label %if.end21.i.i, label %bdev_logical_block_size.exit.i.i.blkpg_do_ioctl.exit.i_crit_edge

bdev_logical_block_size.exit.i.i.blkpg_do_ioctl.exit.i_crit_edge: ; preds = %bdev_logical_block_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkpg_do_ioctl.exit.i

if.end21.i.i:                                     ; preds = %bdev_logical_block_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i.i = call i32 @bdev_add_partition(ptr noundef %33, i32 noundef %43, i64 noundef %shr.i.i, i64 noundef %shr16.i.i) #5
  br label %blkpg_do_ioctl.exit.i

sw.bb24.i.i:                                      ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call26.i.i = call i32 @bdev_resize_partition(ptr noundef %33, i32 noundef %43, i64 noundef %shr.i.i, i64 noundef %shr16.i.i) #5
  br label %blkpg_do_ioctl.exit.i

blkpg_do_ioctl.exit.i:                            ; preds = %sw.bb24.i.i, %if.end21.i.i, %bdev_logical_block_size.exit.i.i.blkpg_do_ioctl.exit.i_crit_edge, %if.end13.i.i.blkpg_do_ioctl.exit.i_crit_edge, %if.then10.i.i, %if.end6.i.i.blkpg_do_ioctl.exit.i_crit_edge, %if.end3.i.i.blkpg_do_ioctl.exit.i_crit_edge, %if.then11.i.i.i.i, %if.end.i78.blkpg_do_ioctl.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call12.i.i, %if.then10.i.i ], [ %call26.i.i, %sw.bb24.i.i ], [ %call23.i.i, %if.end21.i.i ], [ -13, %if.end.i78.blkpg_do_ioctl.exit.i_crit_edge ], [ -22, %if.end3.i.i.blkpg_do_ioctl.exit.i_crit_edge ], [ -22, %if.end6.i.i.blkpg_do_ioctl.exit.i_crit_edge ], [ -22, %bdev_logical_block_size.exit.i.i.blkpg_do_ioctl.exit.i_crit_edge ], [ -22, %if.end13.i.i.blkpg_do_ioctl.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %p.i.i) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool6.not = icmp eq i32 %arg, 0
  br i1 %tobool6.not, label %sw.bb5.cleanup_crit_edge, label %if.end8

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %53 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bd_disk, align 8
  %bdi = getelementptr inbounds %struct.gendisk, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bdi, align 4
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %ra_pages to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ra_pages, align 4
  %59 = shl i32 %58, 3
  %div76 = and i32 %59, 8388600
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 185) #5
  %60 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i81 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i81 to ptr
  %cpu_domain.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i82) #3, !srcloc !20
  %and.i.i83 = and i32 %62, -13
  %or.i.i84 = or i32 %and.i.i83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i84) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %63 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %4, i32 %div76, i32 -1226833921) #5, !srcloc !27
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %bd_nr_sectors.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 1
  %64 = ptrtoint ptr %bd_nr_sectors.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %bd_nr_sectors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %65)
  %cmp = icmp ugt i64 %65, 4294967295
  br i1 %cmp, label %sw.bb10.cleanup_crit_edge, label %if.end13

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i64 %65 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 190) #5
  %66 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i86 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i86 to ptr
  %cpu_domain.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i87) #3, !srcloc !20
  %and.i.i88 = and i32 %68, -13
  %or.i.i89 = or i32 %and.i.i88, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i89) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %69 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %conv, i32 -1226833921) #5, !srcloc !28
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 7
  %70 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bd_inode.i, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 20
  %72 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %i_blkbits.i, align 2
  %conv.i90 = zext i8 %73 to i32
  %shl.i = shl nuw i32 1, %conv.i90
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 175) #5
  %74 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i91 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i91 to ptr
  %cpu_domain.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 4
  %76 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i92) #3, !srcloc !20
  %and.i.i93 = and i32 %76, -13
  %or.i.i94 = or i32 %and.i.i93, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i94) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %77 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %shl.i, i32 -1226833921) #5, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bdev.addr.i)
  %78 = ptrtoint ptr %bdev.addr.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call, ptr %bdev.addr.i, align 4
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call.i, label %if.end.i96, label %sw.bb19.blkdev_bszset.exit_crit_edge

sw.bb19.blkdev_bszset.exit_crit_edge:             ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_bszset.exit

if.end.i96:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not.i95 = icmp eq i32 %arg, 0
  br i1 %tobool.not.i95, label %if.end.i96.blkdev_bszset.exit_crit_edge, label %if.end2.i

if.end.i96.blkdev_bszset.exit_crit_edge:          ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_bszset.exit

if.end2.i:                                        ; preds = %if.end.i96
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 424) #5
  %79 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i97 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i97 to ptr
  %cpu_domain.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 4
  %81 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i98) #3, !srcloc !20
  %and.i.i99 = and i32 %81, -13
  %or.i.i100 = or i32 %and.i.i99, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i100) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %82 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %4, i32 -1226833921) #5, !srcloc !30
  %asmresult.i101 = extractvalue { i32, i32 } %82, 0
  %asmresult4.i = extractvalue { i32, i32 } %82, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i101)
  %tobool6.not.i = icmp eq i32 %asmresult.i101, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end2.i.blkdev_bszset.exit_crit_edge

if.end2.i.blkdev_bszset.exit_crit_edge:           ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_bszset.exit

if.end8.i:                                        ; preds = %if.end2.i
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  %83 = ptrtoint ptr %bdev.addr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bdev.addr.i, align 4
  br i1 %tobool9.not.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call i32 @set_blocksize(ptr noundef %84, i32 noundef %asmresult4.i) #5
  br label %blkdev_bszset.exit

if.end12.i:                                       ; preds = %if.end8.i
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bd_dev.i, align 4
  %or.i = or i32 %mode.0, 128
  %call13.i = call ptr @blkdev_get_by_dev(i32 noundef %86, i32 noundef %or.i, ptr noundef nonnull %bdev.addr.i) #5
  %cmp.i.i102 = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i102, label %if.end12.i.blkdev_bszset.exit_crit_edge, label %if.end16.i

if.end12.i.blkdev_bszset.exit_crit_edge:          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_bszset.exit

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %bdev.addr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bdev.addr.i, align 4
  %call17.i = call i32 @set_blocksize(ptr noundef %88, i32 noundef %asmresult4.i) #5
  %89 = ptrtoint ptr %bdev.addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bdev.addr.i, align 4
  call void @blkdev_put(ptr noundef %90, i32 noundef %or.i) #5
  br label %blkdev_bszset.exit

blkdev_bszset.exit:                               ; preds = %if.end16.i, %if.end12.i.blkdev_bszset.exit_crit_edge, %if.then10.i, %if.end2.i.blkdev_bszset.exit_crit_edge, %if.end.i96.blkdev_bszset.exit_crit_edge, %sw.bb19.blkdev_bszset.exit_crit_edge
  %retval.0.i103 = phi i32 [ %call11.i, %if.then10.i ], [ %call17.i, %if.end16.i ], [ -13, %sw.bb19.blkdev_bszset.exit_crit_edge ], [ -22, %if.end.i96.blkdev_bszset.exit_crit_edge ], [ -14, %if.end2.i.blkdev_bszset.exit_crit_edge ], [ -16, %if.end12.i.blkdev_bszset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bdev.addr.i)
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 1
  %91 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i104 = shl i64 %92, 9
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 195) #5
  %93 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i105 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i105 to ptr
  %cpu_domain.i.i.i106 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 4
  %95 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i106) #3, !srcloc !20
  %and.i.i107 = and i32 %95, -13
  %or.i.i108 = or i32 %and.i.i107, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i108) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %96 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i64 %shl.i104, i32 -1226833921) #5, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call i32 @blk_trace_ioctl(ptr noundef %call, i32 noundef -1069018509, ptr noundef %4) #5
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  %call.i.i109 = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call.i.i109, label %if.end.i.i, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i.i = tail call i32 @fsync_bdev(ptr noundef %call) #5
  tail call void @invalidate_bdev(ptr noundef %call) #5
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  %call.i148.i = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call.i148.i, label %if.end.i149.i, label %sw.bb1.i.cleanup_crit_edge

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i149.i:                                    ; preds = %sw.bb1.i
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 338) #5
  %97 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 4
  %99 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #3, !srcloc !20
  %and.i.i.i = and i32 %99, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %100 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #5, !srcloc !32
  %asmresult.i.i = extractvalue { i32, i32 } %100, 0
  %asmresult2.i.i = extractvalue { i32, i32 } %100, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.end.i149.i.cleanup_crit_edge

if.end.i149.i.cleanup_crit_edge:                  ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i.i:                                      ; preds = %if.end.i149.i
  %bd_disk.i.i110 = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %101 = ptrtoint ptr %bd_disk.i.i110 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bd_disk.i.i110, align 8
  %fops.i.i = getelementptr inbounds %struct.gendisk, ptr %102, i32 0, i32 8
  %103 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fops.i.i, align 8
  %set_read_only.i.i = getelementptr inbounds %struct.block_device_operations, ptr %104, i32 0, i32 9
  %105 = ptrtoint ptr %set_read_only.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %set_read_only.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %106, null
  br i1 %tobool6.not.i.i, label %if.end5.i.i.if.end16.i.i_crit_edge, label %if.then7.i.i

if.end5.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult2.i.i)
  %tobool11.i.i = icmp ne i32 %asmresult2.i.i, 0
  %call12.i.i111 = tail call i32 %106(ptr noundef %call, i1 noundef zeroext %tobool11.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i111)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i111, 0
  br i1 %tobool13.not.i.i, label %if.then7.i.i.if.end16.i.i_crit_edge, label %if.then7.i.i.blkdev_common_ioctl.exit_crit_edge

if.then7.i.i.blkdev_common_ioctl.exit_crit_edge:  ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_common_ioctl.exit

if.then7.i.i.if.end16.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then7.i.i.if.end16.i.i_crit_edge, %if.end5.i.i.if.end16.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult2.i.i)
  %tobool17.i.i = icmp ne i32 %asmresult2.i.i, 0
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 4
  %frombool.i.i = zext i1 %tobool17.i.i to i8
  %107 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %frombool.i.i, ptr %bd_read_only.i.i, align 8
  br label %cleanup

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call fastcc i32 @blk_ioctl_discard(ptr noundef %call, i32 noundef %mode.0, i32 noundef %arg, i32 noundef 0) #5
  br label %blkdev_common_ioctl.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i112 = tail call fastcc i32 @blk_ioctl_discard(ptr noundef %call, i32 noundef %mode.0, i32 noundef %arg, i32 noundef 1) #5
  br label %blkdev_common_ioctl.exit

sw.bb7.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range.i.i) #5
  %108 = getelementptr inbounds [2 x i64], ptr %range.i.i, i32 0, i32 1
  %bd_inode.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 7
  %109 = call ptr @memset(ptr %range.i.i, i32 255, i32 16)
  %110 = ptrtoint ptr %bd_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bd_inode.i.i, align 4
  %and.i.i113 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i113)
  %tobool.not.i151.i = icmp eq i32 %and.i.i113, 0
  br i1 %tobool.not.i151.i, label %sw.bb7.i.blk_ioctl_zeroout.exit.i_crit_edge, label %if.end.i152.i

sw.bb7.i.blk_ioctl_zeroout.exit.i_crit_edge:      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_ioctl_zeroout.exit.i

if.end.i152.i:                                    ; preds = %sw.bb7.i
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #5
  %call.i.i.i.i114 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i.i114, label %if.end.i152.i.if.then11.i.i.i.i128_crit_edge, label %land.lhs.true.i.i.i.i117

if.end.i152.i.if.then11.i.i.i.i128_crit_edge:     ; preds = %if.end.i152.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i128

land.lhs.true.i.i.i.i117:                         ; preds = %if.end.i152.i
  %112 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i.i.i115 = extractvalue { i32, i32 } %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i115)
  %cmp.i6.i.i.i116 = icmp eq i32 %asmresult.i.i.i.i115, 0
  br i1 %cmp.i6.i.i.i116, label %if.end.i.i.i.i125, label %land.lhs.true.i.i.i.i117.if.then11.i.i.i.i128_crit_edge, !prof !26

land.lhs.true.i.i.i.i117.if.then11.i.i.i.i128_crit_edge: ; preds = %land.lhs.true.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i128

if.end.i.i.i.i125:                                ; preds = %land.lhs.true.i.i.i.i117
  %call.i.i.i.i.i118 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range.i.i, i32 noundef 16) #5
  %113 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i.i.i119 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i.i.i.i119 to ptr
  %cpu_domain.i.i.i.i.i.i.i120 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 4
  %115 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i120) #3, !srcloc !20
  %and.i.i.i.i.i.i121 = and i32 %115, -13
  %or.i.i.i.i.i.i122 = or i32 %and.i.i.i.i.i.i121, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i122) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i.i.i123 = call i32 @arm_copy_from_user(ptr noundef nonnull %range.i.i, ptr noundef %4, i32 noundef 16) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i123)
  %tobool4.not.i.i.i.i124 = icmp eq i32 %call1.i.i.i.i.i123, 0
  br i1 %tobool4.not.i.i.i.i124, label %if.end3.i.i129, label %if.end.i.i.i.i125.if.then11.i.i.i.i128_crit_edge, !prof !26

if.end.i.i.i.i125.if.then11.i.i.i.i128_crit_edge: ; preds = %if.end.i.i.i.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i128

if.then11.i.i.i.i128:                             ; preds = %if.end.i.i.i.i125.if.then11.i.i.i.i128_crit_edge, %land.lhs.true.i.i.i.i117.if.then11.i.i.i.i128_crit_edge, %if.end.i152.i.if.then11.i.i.i.i128_crit_edge
  %res.0.i.i49.i.i = phi i32 [ %call1.i.i.i.i.i123, %if.end.i.i.i.i125.if.then11.i.i.i.i128_crit_edge ], [ 16, %if.end.i152.i.if.then11.i.i.i.i128_crit_edge ], [ 16, %land.lhs.true.i.i.i.i117.if.then11.i.i.i.i128_crit_edge ]
  %sub.i.i.i.i126 = sub i32 16, %res.0.i.i49.i.i
  %add.ptr.i.i.i.i127 = getelementptr i8, ptr %range.i.i, i32 %sub.i.i.i.i126
  %116 = call ptr @memset(ptr %add.ptr.i.i.i.i127, i32 0, i32 %res.0.i.i49.i.i)
  br label %blk_ioctl_zeroout.exit.i

if.end3.i.i129:                                   ; preds = %if.end.i.i.i.i125
  %117 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %range.i.i, align 8
  %119 = ptrtoint ptr %108 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %108, align 8
  %add.i.i = add i64 %118, -1
  %sub.i.i = add i64 %add.i.i, %120
  %and5.i.i = and i64 %118, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i.i)
  %tobool6.not.i153.i = icmp eq i64 %and5.i.i, 0
  %and9.i.i = and i64 %120, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i.i)
  %tobool10.not.i.i = icmp eq i64 %and9.i.i, 0
  %or.cond.i.i = select i1 %tobool6.not.i153.i, i1 %tobool10.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end12.i.i, label %if.end3.i.i129.blk_ioctl_zeroout.exit.i_crit_edge

if.end3.i.i129.blk_ioctl_zeroout.exit.i_crit_edge: ; preds = %if.end3.i.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_ioctl_zeroout.exit.i

if.end12.i.i:                                     ; preds = %if.end3.i.i129
  %bd_nr_sectors.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 1
  %121 = ptrtoint ptr %bd_nr_sectors.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %bd_nr_sectors.i.i.i.i, align 8
  %shl.i.i.i = shl i64 %122, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %shl.i.i.i)
  %cmp.not.i.i = icmp uge i64 %sub.i.i, %shl.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %118)
  %cmp16.i.i = icmp ult i64 %sub.i.i, %118
  %or.cond45.i.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp16.i.i
  br i1 %or.cond45.i.i, label %if.end12.i.i.blk_ioctl_zeroout.exit.i_crit_edge, label %if.end18.i.i

if.end12.i.i.blk_ioctl_zeroout.exit.i_crit_edge:  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blk_ioctl_zeroout.exit.i

if.end18.i.i:                                     ; preds = %if.end12.i.i
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %111, i32 0, i32 9
  %123 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i_mapping.i.i, align 8
  %invalidate_lock.i.i.i = getelementptr inbounds %struct.address_space, ptr %124, i32 0, i32 2
  call void @down_write(ptr noundef %invalidate_lock.i.i.i) #5
  %call19.i.i = call i32 @truncate_bdev_range(ptr noundef %call, i32 noundef %mode.0, i64 noundef %118, i64 noundef %sub.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %if.end18.i.i.fail.i.i_crit_edge

if.end18.i.i.fail.i.i_crit_edge:                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail.i.i

if.end22.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i154.i = lshr i64 %118, 9
  %shr23.i.i = lshr i64 %120, 9
  %call24.i.i = call i32 @blkdev_issue_zeroout(ptr noundef %call, i64 noundef %shr.i154.i, i64 noundef %shr23.i.i, i32 noundef 3264, i32 noundef 1) #5
  br label %fail.i.i

fail.i.i:                                         ; preds = %if.end22.i.i, %if.end18.i.i.fail.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call19.i.i, %if.end18.i.i.fail.i.i_crit_edge ], [ %call24.i.i, %if.end22.i.i ]
  %125 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i_mapping.i.i, align 8
  %invalidate_lock.i46.i.i = getelementptr inbounds %struct.address_space, ptr %126, i32 0, i32 2
  call void @up_write(ptr noundef %invalidate_lock.i46.i.i) #5
  br label %blk_ioctl_zeroout.exit.i

blk_ioctl_zeroout.exit.i:                         ; preds = %fail.i.i, %if.end12.i.i.blk_ioctl_zeroout.exit.i_crit_edge, %if.end3.i.i129.blk_ioctl_zeroout.exit.i_crit_edge, %if.then11.i.i.i.i128, %sw.bb7.i.blk_ioctl_zeroout.exit.i_crit_edge
  %retval.0.i155.i = phi i32 [ %err.0.i.i, %fail.i.i ], [ -9, %sw.bb7.i.blk_ioctl_zeroout.exit.i_crit_edge ], [ -22, %if.end3.i.i129.blk_ioctl_zeroout.exit.i_crit_edge ], [ -22, %if.end12.i.i.blk_ioctl_zeroout.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i128 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range.i.i) #5
  br label %blkdev_common_ioctl.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bd_disk.i130 = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %127 = ptrtoint ptr %bd_disk.i130 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bd_disk.i130, align 8
  %diskseq.i = getelementptr inbounds %struct.gendisk, ptr %128, i32 0, i32 26
  %129 = ptrtoint ptr %diskseq.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %diskseq.i, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 195) #5
  %131 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i156.i = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i.i156.i to ptr
  %cpu_domain.i.i.i157.i = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 4
  %133 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i157.i) #3, !srcloc !20
  %and.i.i158.i = and i32 %133, -13
  %or.i.i159.i = or i32 %and.i.i158.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i159.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %134 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i64 %130, i32 -1226833921) #5, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %133) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb11.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call12.i = tail call i32 @blkdev_report_zones_ioctl(ptr noundef %call, i32 noundef %mode.0, i32 noundef -1072688510, i32 noundef %arg) #5
  br label %blkdev_common_ioctl.exit

sw.bb13.i:                                        ; preds = %entry.sw.bb13.i_crit_edge, %entry.sw.bb13.i_crit_edge145, %entry.sw.bb13.i_crit_edge146, %entry.sw.bb13.i_crit_edge147
  %call14.i = tail call i32 @blkdev_zone_mgmt_ioctl(ptr noundef %call, i32 noundef %mode.0, i32 noundef %cmd, i32 noundef %arg) #5
  br label %blkdev_common_ioctl.exit

sw.bb15.i:                                        ; preds = %entry
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %135 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i160.i = icmp eq ptr %136, null
  br i1 %tobool.not.i160.i, label %sw.bb15.i.bdev_zone_sectors.exit.i_crit_edge, label %if.then.i.i131

sw.bb15.i.bdev_zone_sectors.exit.i_crit_edge:     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_zone_sectors.exit.i

if.then.i.i131:                                   ; preds = %sw.bb15.i
  %zoned.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %136, i32 0, i32 37, i32 27
  %137 = ptrtoint ptr %zoned.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %zoned.i.i.i.i.i, align 4
  %call.off.i.i.i.i = add i32 %138, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i)
  %switch.i.i.i.i = icmp ult i32 %call.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %cond.true.i.i.i, label %if.then.i.i131.bdev_zone_sectors.exit.i_crit_edge

if.then.i.i131.bdev_zone_sectors.exit.i_crit_edge: ; preds = %if.then.i.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_zone_sectors.exit.i

cond.true.i.i.i:                                  ; preds = %if.then.i.i131
  call void @__sanitizer_cov_trace_pc() #7
  %chunk_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %136, i32 0, i32 37, i32 5
  %139 = ptrtoint ptr %chunk_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %chunk_sectors.i.i.i, align 4
  br label %bdev_zone_sectors.exit.i

bdev_zone_sectors.exit.i:                         ; preds = %cond.true.i.i.i, %if.then.i.i131.bdev_zone_sectors.exit.i_crit_edge, %sw.bb15.i.bdev_zone_sectors.exit.i_crit_edge
  %retval.0.i161.off0.i = phi i32 [ 0, %sw.bb15.i.bdev_zone_sectors.exit.i_crit_edge ], [ %140, %cond.true.i.i.i ], [ 0, %if.then.i.i131.bdev_zone_sectors.exit.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 180) #5
  %141 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i162.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i.i.i.i162.i to ptr
  %cpu_domain.i.i.i163.i = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 4
  %143 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i163.i) #3, !srcloc !20
  %and.i.i164.i = and i32 %143, -13
  %or.i.i165.i = or i32 %and.i.i164.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i165.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %144 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %retval.0.i161.off0.i, i32 -1226833921) #5, !srcloc !33
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %143) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bd_disk19.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %145 = ptrtoint ptr %bd_disk19.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bd_disk19.i, align 8
  %call20.i = tail call i32 @blkdev_nr_zones(ptr noundef %146) #5
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 180) #5
  %147 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i166.i = and i32 %147, -16384
  %148 = inttoptr i32 %and.i.i.i.i166.i to ptr
  %cpu_domain.i.i.i167.i = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 4
  %149 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i167.i) #3, !srcloc !20
  %and.i.i168.i = and i32 %149, -13
  %or.i.i169.i = or i32 %and.i.i168.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i169.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %150 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %call20.i, i32 -1226833921) #5, !srcloc !33
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %149) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb22.i:                                        ; preds = %entry
  %bd_read_only.i170.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 4
  %151 = ptrtoint ptr %bd_read_only.i170.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %bd_read_only.i170.i, align 8, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i171.i = icmp eq i8 %152, 0
  br i1 %tobool.not.i171.i, label %lor.rhs.i.i, label %sw.bb22.i.bdev_read_only.exit.i_crit_edge

sw.bb22.i.bdev_read_only.exit.i_crit_edge:        ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_read_only.exit.i

lor.rhs.i.i:                                      ; preds = %sw.bb22.i
  %bd_disk.i172.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %153 = ptrtoint ptr %bd_disk.i172.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bd_disk.i172.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %154, i32 0, i32 7
  %155 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %part0.i.i.i, align 4
  %bd_read_only.i.i.i = getelementptr inbounds %struct.block_device, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %bd_read_only.i.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %bd_read_only.i.i.i, align 8, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i.i.i = icmp eq i8 %158, 0
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.i, label %lor.rhs.i.i.bdev_read_only.exit.i_crit_edge

lor.rhs.i.i.bdev_read_only.exit.i_crit_edge:      ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_read_only.exit.i

lor.rhs.i.i.i:                                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %state.i.i.i = getelementptr inbounds %struct.gendisk, ptr %154, i32 0, i32 12
  %159 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %state.i.i.i, align 4
  %161 = lshr i32 %160, 1
  %.lobit.i = and i32 %161, 1
  br label %bdev_read_only.exit.i

bdev_read_only.exit.i:                            ; preds = %lor.rhs.i.i.i, %lor.rhs.i.i.bdev_read_only.exit.i_crit_edge, %sw.bb22.i.bdev_read_only.exit.i_crit_edge
  %162 = phi i32 [ 1, %sw.bb22.i.bdev_read_only.exit.i_crit_edge ], [ 1, %lor.rhs.i.i.bdev_read_only.exit.i_crit_edge ], [ %.lobit.i, %lor.rhs.i.i.i ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 175) #5
  %163 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i173.i = and i32 %163, -16384
  %164 = inttoptr i32 %and.i.i.i.i173.i to ptr
  %cpu_domain.i.i.i174.i = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 4
  %165 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i174.i) #3, !srcloc !20
  %and.i.i175.i = and i32 %165, -13
  %or.i.i176.i = or i32 %and.i.i175.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i176.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %166 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %162, i32 -1226833921) #5, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %165) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb26.i:                                        ; preds = %entry
  %bd_queue.i.i177.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %167 = ptrtoint ptr %bd_queue.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bd_queue.i.i177.i, align 4
  %tobool.not.i.i178.i = icmp eq ptr %168, null
  br i1 %tobool.not.i.i178.i, label %sw.bb26.i.bdev_logical_block_size.exit.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb26.i.bdev_logical_block_size.exit.i_crit_edge: ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_logical_block_size.exit.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #7
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %168, i32 0, i32 37, i32 9
  %169 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool2.not.i.i.i = icmp eq i32 %170, 0
  %spec.select.i.i.i = select i1 %tobool2.not.i.i.i, i32 512, i32 %170
  br label %bdev_logical_block_size.exit.i

bdev_logical_block_size.exit.i:                   ; preds = %land.lhs.true.i.i.i, %sw.bb26.i.bdev_logical_block_size.exit.i_crit_edge
  %retval1.0.i.i.i = phi i32 [ 512, %sw.bb26.i.bdev_logical_block_size.exit.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 175) #5
  %171 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i179.i = and i32 %171, -16384
  %172 = inttoptr i32 %and.i.i.i.i179.i to ptr
  %cpu_domain.i.i.i180.i = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 4
  %173 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i180.i) #3, !srcloc !20
  %and.i.i181.i = and i32 %173, -13
  %or.i.i182.i = or i32 %and.i.i181.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i182.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %174 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %retval1.0.i.i.i, i32 -1226833921) #5, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %173) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb29.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bd_queue.i.i183.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %175 = ptrtoint ptr %bd_queue.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bd_queue.i.i183.i, align 4
  %physical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %176, i32 0, i32 37, i32 8
  %177 = ptrtoint ptr %physical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %physical_block_size.i.i.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 180) #5
  %179 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i184.i = and i32 %179, -16384
  %180 = inttoptr i32 %and.i.i.i.i184.i to ptr
  %cpu_domain.i.i.i185.i = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 4
  %181 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i185.i) #3, !srcloc !20
  %and.i.i186.i = and i32 %181, -13
  %or.i.i187.i = or i32 %and.i.i186.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i187.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %182 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %178, i32 -1226833921) #5, !srcloc !33
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %181) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb32.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bd_queue.i.i188.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %183 = ptrtoint ptr %bd_queue.i.i188.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bd_queue.i.i188.i, align 4
  %io_min.i.i.i = getelementptr inbounds %struct.request_queue, ptr %184, i32 0, i32 37, i32 11
  %185 = ptrtoint ptr %io_min.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %io_min.i.i.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 180) #5
  %187 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i189.i = and i32 %187, -16384
  %188 = inttoptr i32 %and.i.i.i.i189.i to ptr
  %cpu_domain.i.i.i190.i = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 4
  %189 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i190.i) #3, !srcloc !20
  %and.i.i191.i = and i32 %189, -13
  %or.i.i192.i = or i32 %and.i.i191.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i192.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %190 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %186, i32 -1226833921) #5, !srcloc !33
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %189) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb35.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bd_queue.i.i193.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %191 = ptrtoint ptr %bd_queue.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bd_queue.i.i193.i, align 4
  %io_opt.i.i.i = getelementptr inbounds %struct.request_queue, ptr %192, i32 0, i32 37, i32 12
  %193 = ptrtoint ptr %io_opt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %io_opt.i.i.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 180) #5
  %195 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i194.i = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i.i194.i to ptr
  %cpu_domain.i.i.i195.i = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 4
  %197 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i195.i) #3, !srcloc !20
  %and.i.i196.i = and i32 %197, -13
  %or.i.i197.i = or i32 %and.i.i196.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i197.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %198 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %194, i32 -1226833921) #5, !srcloc !33
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %197) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb38.i:                                        ; preds = %entry
  %bd_queue.i.i198.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %199 = ptrtoint ptr %bd_queue.i.i198.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %bd_queue.i.i198.i, align 4
  %misaligned.i.i = getelementptr inbounds %struct.request_queue, ptr %200, i32 0, i32 37, i32 24
  %201 = ptrtoint ptr %misaligned.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %misaligned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool.not.i199.i = icmp eq i8 %202, 0
  br i1 %tobool.not.i199.i, label %if.end.i200.i, label %sw.bb38.i.bdev_alignment_offset.exit.i_crit_edge

sw.bb38.i.bdev_alignment_offset.exit.i_crit_edge: ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bdev_alignment_offset.exit.i

if.end.i200.i:                                    ; preds = %sw.bb38.i
  %bd_partno.i.i.i132 = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 15
  %203 = ptrtoint ptr %bd_partno.i.i.i132 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %bd_partno.i.i.i132, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.i.not.i.i133 = icmp eq i8 %204, 0
  br i1 %tobool.i.not.i.i133, label %if.end5.i207.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i200.i
  %205 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %call, align 8
  %physical_block_size.i.i201.i = getelementptr inbounds %struct.request_queue, ptr %200, i32 0, i32 37, i32 8
  %207 = ptrtoint ptr %physical_block_size.i.i201.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %physical_block_size.i.i201.i, align 4
  %io_min.i.i202.i = getelementptr inbounds %struct.request_queue, ptr %200, i32 0, i32 37, i32 11
  %209 = ptrtoint ptr %io_min.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %io_min.i.i202.i, align 4
  %211 = tail call i32 @llvm.umax.i32(i32 %208, i32 %210) #5
  %shr.i.i.i = lshr i32 %211, 9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %206)
  %cmp171.i.i.i = icmp ult i64 %206, 4294967296
  br i1 %cmp171.i.i.i, label %if.then175.i.i.i, label %if.else181.i.i.i, !prof !26

if.then175.i.i.i:                                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv176.i.i.i = trunc i64 %206 to i32
  %rem177.i.i.i = urem i32 %conv176.i.i.i, %shr.i.i.i
  br label %queue_limit_alignment_offset.exit.i.i

if.else181.i.i.i:                                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %212 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shr.i.i.i, i64 %206) #8, !srcloc !35
  %asmresult.i279.i.i.i = extractvalue { i64, i64 } %212, 0
  %shr.i.i.i.i = lshr i64 %asmresult.i279.i.i.i, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %queue_limit_alignment_offset.exit.i.i

queue_limit_alignment_offset.exit.i.i:            ; preds = %if.else181.i.i.i, %if.then175.i.i.i
  %__rem.0.i.i.i = phi i32 [ %rem177.i.i.i, %if.then175.i.i.i ], [ %conv.i.i.i.i, %if.else181.i.i.i ]
  %shl187.neg.i.i.i = mul i32 %__rem.0.i.i.i, -512
  %alignment_offset.i.i.i = getelementptr inbounds %struct.request_queue, ptr %200, i32 0, i32 37, i32 10
  %213 = ptrtoint ptr %alignment_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %alignment_offset.i.i.i, align 4
  %add188.i.i.i = add i32 %214, %211
  %sub189.i.i.i = add i32 %add188.i.i.i, %shl187.neg.i.i.i
  %rem190.i.i.i = urem i32 %sub189.i.i.i, %211
  br label %bdev_alignment_offset.exit.i

if.end5.i207.i:                                   ; preds = %if.end.i200.i
  call void @__sanitizer_cov_trace_pc() #7
  %alignment_offset.i.i = getelementptr inbounds %struct.request_queue, ptr %200, i32 0, i32 37, i32 10
  %215 = ptrtoint ptr %alignment_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %alignment_offset.i.i, align 4
  br label %bdev_alignment_offset.exit.i

bdev_alignment_offset.exit.i:                     ; preds = %if.end5.i207.i, %queue_limit_alignment_offset.exit.i.i, %sw.bb38.i.bdev_alignment_offset.exit.i_crit_edge
  %retval.0.i208.i = phi i32 [ %rem190.i.i.i, %queue_limit_alignment_offset.exit.i.i ], [ %216, %if.end5.i207.i ], [ -1, %sw.bb38.i.bdev_alignment_offset.exit.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 175) #5
  %217 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i209.i = and i32 %217, -16384
  %218 = inttoptr i32 %and.i.i.i.i209.i to ptr
  %cpu_domain.i.i.i210.i = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 4
  %219 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i210.i) #3, !srcloc !20
  %and.i.i211.i = and i32 %219, -13
  %or.i.i212.i = or i32 %and.i.i211.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i212.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %220 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %retval.0.i208.i, i32 -1226833921) #5, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %219) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb41.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 180) #5
  %221 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i213.i = and i32 %221, -16384
  %222 = inttoptr i32 %and.i.i.i.i213.i to ptr
  %cpu_domain.i.i.i214.i = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 4
  %223 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i214.i) #3, !srcloc !20
  %and.i.i215.i = and i32 %223, -13
  %or.i.i216.i = or i32 %and.i.i215.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i216.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %224 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 0, i32 -1226833921) #5, !srcloc !33
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb43.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %225 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %bd_queue.i.i, align 4
  %max_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %226, i32 0, i32 37, i32 6
  %227 = ptrtoint ptr %max_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %max_sectors.i.i, align 4
  %229 = tail call i32 @llvm.umin.i32(i32 %228, i32 65535) #5
  %230 = trunc i32 %229 to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 170) #5
  %231 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i217.i = and i32 %231, -16384
  %232 = inttoptr i32 %and.i.i.i.i217.i to ptr
  %cpu_domain.i.i.i218.i = getelementptr inbounds %struct.thread_info, ptr %232, i32 0, i32 4
  %233 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i218.i) #3, !srcloc !20
  %and.i.i219.i = and i32 %233, -13
  %or.i.i220.i = or i32 %and.i.i219.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i220.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %234 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i16 %230, i32 -1226833921) #5, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %233) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb50.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bd_queue.i221.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %235 = ptrtoint ptr %bd_queue.i221.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %bd_queue.i221.i, align 4
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %236, i32 0, i32 11
  %237 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile i32, ptr %queue_flags.i, align 4
  %239 = trunc i32 %238 to i16
  %240 = lshr i16 %239, 6
  %241 = and i16 %240, 1
  %242 = xor i16 %241, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 170) #5
  %243 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i222.i = and i32 %243, -16384
  %244 = inttoptr i32 %and.i.i.i.i222.i to ptr
  %cpu_domain.i.i.i223.i = getelementptr inbounds %struct.thread_info, ptr %244, i32 0, i32 4
  %245 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i223.i) #3, !srcloc !20
  %and.i.i224.i = and i32 %245, -13
  %or.i.i225.i = or i32 %and.i.i224.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i225.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %246 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i16 %242, i32 -1226833921) #5, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %245) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  br label %blkdev_common_ioctl.exit

sw.bb55.i:                                        ; preds = %entry.sw.bb55.i_crit_edge, %entry.sw.bb55.i_crit_edge148
  %call56.i = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call56.i, label %if.end.i135, label %sw.bb55.i.cleanup_crit_edge

sw.bb55.i.cleanup_crit_edge:                      ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i135:                                      ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #7
  %247 = lshr i32 %arg, 3
  %div147.i = and i32 %247, 1048575
  %bd_disk57.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %248 = ptrtoint ptr %bd_disk57.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %bd_disk57.i, align 8
  %bdi.i = getelementptr inbounds %struct.gendisk, ptr %249, i32 0, i32 15
  %250 = ptrtoint ptr %bdi.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %bdi.i, align 4
  %ra_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %ra_pages.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %div147.i, ptr %ra_pages.i, align 4
  br label %cleanup

sw.bb58.i:                                        ; preds = %entry
  %call59.i = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call59.i, label %if.end61.i, label %sw.bb58.i.cleanup_crit_edge

sw.bb58.i.cleanup_crit_edge:                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end61.i:                                       ; preds = %sw.bb58.i
  %bd_partno.i.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 15
  %253 = ptrtoint ptr %bd_partno.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %bd_partno.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool.i.not.i = icmp eq i8 %254, 0
  br i1 %tobool.i.not.i, label %if.end64.i, label %if.end61.i.cleanup_crit_edge

if.end61.i.cleanup_crit_edge:                     ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  %bd_disk65.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %255 = ptrtoint ptr %bd_disk65.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %bd_disk65.i, align 8
  %and.i136 = and i32 %mode.0, -129
  %call66.i = tail call i32 @disk_scan_partitions(ptr noundef %256, i32 noundef %and.i136) #5
  br label %blkdev_common_ioctl.exit

sw.bb67.i:                                        ; preds = %entry.sw.bb67.i_crit_edge, %entry.sw.bb67.i_crit_edge149, %entry.sw.bb67.i_crit_edge150
  %call68.i = tail call i32 @blk_trace_ioctl(ptr noundef %call, i32 noundef %cmd, ptr noundef %4) #5
  br label %blkdev_common_ioctl.exit

sw.bb69.i:                                        ; preds = %entry
  %bd_disk.i226.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %257 = ptrtoint ptr %bd_disk.i226.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %bd_disk.i226.i, align 8
  %fops.i227.i = getelementptr inbounds %struct.gendisk, ptr %258, i32 0, i32 8
  %259 = ptrtoint ptr %fops.i227.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %fops.i227.i, align 8
  %pr_ops.i.i = getelementptr inbounds %struct.block_device_operations, ptr %260, i32 0, i32 15
  %261 = ptrtoint ptr %pr_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pr_ops.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %reg.i.i) #5
  %263 = getelementptr inbounds %struct.pr_registration, ptr %reg.i.i, i32 0, i32 1
  %264 = getelementptr inbounds %struct.pr_registration, ptr %reg.i.i, i32 0, i32 2
  %265 = call ptr @memset(ptr %reg.i.i, i32 255, i32 24)
  %call.i228.i = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call.i228.i, label %if.end.i230.i, label %sw.bb69.i.blkdev_pr_register.exit.i_crit_edge

sw.bb69.i.blkdev_pr_register.exit.i_crit_edge:    ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_register.exit.i

if.end.i230.i:                                    ; preds = %sw.bb69.i
  %tobool.not.i229.i = icmp eq ptr %262, null
  br i1 %tobool.not.i229.i, label %if.end.i230.i.blkdev_pr_register.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end.i230.i.blkdev_pr_register.exit.i_crit_edge: ; preds = %if.end.i230.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_register.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i230.i
  %266 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %262, align 4
  %tobool1.not.i.i = icmp eq ptr %267, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.blkdev_pr_register.exit.i_crit_edge, label %if.end59.i.i.i.i137

lor.lhs.false.i.i.blkdev_pr_register.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_register.exit.i

if.end59.i.i.i.i137:                              ; preds = %lor.lhs.false.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #5
  %call.i.i.i231.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i231.i, label %if.end59.i.i.i.i137.if.then11.i.i.i245.i_crit_edge, label %land.lhs.true.i.i.i234.i

if.end59.i.i.i.i137.if.then11.i.i.i245.i_crit_edge: ; preds = %if.end59.i.i.i.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i245.i

land.lhs.true.i.i.i234.i:                         ; preds = %if.end59.i.i.i.i137
  %268 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 24, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i.i232.i = extractvalue { i32, i32 } %268, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i232.i)
  %cmp.i6.i.i233.i = icmp eq i32 %asmresult.i.i.i232.i, 0
  br i1 %cmp.i6.i.i233.i, label %if.end.i.i.i242.i, label %land.lhs.true.i.i.i234.i.if.then11.i.i.i245.i_crit_edge, !prof !26

land.lhs.true.i.i.i234.i.if.then11.i.i.i245.i_crit_edge: ; preds = %land.lhs.true.i.i.i234.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i245.i

if.end.i.i.i242.i:                                ; preds = %land.lhs.true.i.i.i234.i
  %call.i.i.i.i235.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reg.i.i, i32 noundef 24) #5
  %269 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i.i236.i = and i32 %269, -16384
  %270 = inttoptr i32 %and.i.i.i.i.i.i.i236.i to ptr
  %cpu_domain.i.i.i.i.i.i237.i = getelementptr inbounds %struct.thread_info, ptr %270, i32 0, i32 4
  %271 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i237.i) #3, !srcloc !20
  %and.i.i.i.i.i238.i = and i32 %271, -13
  %or.i.i.i.i.i239.i = or i32 %and.i.i.i.i.i238.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i239.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i.i240.i = call i32 @arm_copy_from_user(ptr noundef nonnull %reg.i.i, ptr noundef %4, i32 noundef 24) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %271) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i240.i)
  %tobool4.not.i.i.i241.i = icmp eq i32 %call1.i.i.i.i240.i, 0
  br i1 %tobool4.not.i.i.i241.i, label %if.end7.i.i, label %if.end.i.i.i242.i.if.then11.i.i.i245.i_crit_edge, !prof !26

if.end.i.i.i242.i.if.then11.i.i.i245.i_crit_edge: ; preds = %if.end.i.i.i242.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i245.i

if.then11.i.i.i245.i:                             ; preds = %if.end.i.i.i242.i.if.then11.i.i.i245.i_crit_edge, %land.lhs.true.i.i.i234.i.if.then11.i.i.i245.i_crit_edge, %if.end59.i.i.i.i137.if.then11.i.i.i245.i_crit_edge
  %res.0.i.i20.i.i = phi i32 [ %call1.i.i.i.i240.i, %if.end.i.i.i242.i.if.then11.i.i.i245.i_crit_edge ], [ 24, %if.end59.i.i.i.i137.if.then11.i.i.i245.i_crit_edge ], [ 24, %land.lhs.true.i.i.i234.i.if.then11.i.i.i245.i_crit_edge ]
  %sub.i.i.i243.i = sub i32 24, %res.0.i.i20.i.i
  %add.ptr.i.i.i244.i = getelementptr i8, ptr %reg.i.i, i32 %sub.i.i.i243.i
  %272 = call ptr @memset(ptr %add.ptr.i.i.i244.i, i32 0, i32 %res.0.i.i20.i.i)
  br label %blkdev_pr_register.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i.i242.i
  %273 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %264, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %274)
  %tobool8.not.i.i = icmp ult i32 %274, 2
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end7.i.i.blkdev_pr_register.exit.i_crit_edge

if.end7.i.i.blkdev_pr_register.exit.i_crit_edge:  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_register.exit.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %275 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %262, align 4
  %277 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %reg.i.i, align 8
  %279 = ptrtoint ptr %263 to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %263, align 8
  %call13.i.i = call i32 %276(ptr noundef %call, i64 noundef %278, i64 noundef %280, i32 noundef %274) #5
  br label %blkdev_pr_register.exit.i

blkdev_pr_register.exit.i:                        ; preds = %if.end10.i.i, %if.end7.i.i.blkdev_pr_register.exit.i_crit_edge, %if.then11.i.i.i245.i, %lor.lhs.false.i.i.blkdev_pr_register.exit.i_crit_edge, %if.end.i230.i.blkdev_pr_register.exit.i_crit_edge, %sw.bb69.i.blkdev_pr_register.exit.i_crit_edge
  %retval.0.i246.i = phi i32 [ %call13.i.i, %if.end10.i.i ], [ -1, %sw.bb69.i.blkdev_pr_register.exit.i_crit_edge ], [ -95, %lor.lhs.false.i.i.blkdev_pr_register.exit.i_crit_edge ], [ -95, %if.end.i230.i.blkdev_pr_register.exit.i_crit_edge ], [ -95, %if.end7.i.i.blkdev_pr_register.exit.i_crit_edge ], [ -14, %if.then11.i.i.i245.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %reg.i.i) #5
  br label %blkdev_common_ioctl.exit

sw.bb71.i:                                        ; preds = %entry
  %bd_disk.i247.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %281 = ptrtoint ptr %bd_disk.i247.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %bd_disk.i247.i, align 8
  %fops.i248.i = getelementptr inbounds %struct.gendisk, ptr %282, i32 0, i32 8
  %283 = ptrtoint ptr %fops.i248.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %fops.i248.i, align 8
  %pr_ops.i249.i = getelementptr inbounds %struct.block_device_operations, ptr %284, i32 0, i32 15
  %285 = ptrtoint ptr %pr_ops.i249.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pr_ops.i249.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rsv.i.i) #5
  %287 = getelementptr inbounds %struct.pr_reservation, ptr %rsv.i.i, i32 0, i32 1
  %288 = getelementptr inbounds %struct.pr_reservation, ptr %rsv.i.i, i32 0, i32 2
  %289 = call ptr @memset(ptr %rsv.i.i, i32 255, i32 16)
  %call.i250.i = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call.i250.i, label %if.end.i252.i, label %sw.bb71.i.blkdev_pr_reserve.exit.i_crit_edge

sw.bb71.i.blkdev_pr_reserve.exit.i_crit_edge:     ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_reserve.exit.i

if.end.i252.i:                                    ; preds = %sw.bb71.i
  %tobool.not.i251.i = icmp eq ptr %286, null
  br i1 %tobool.not.i251.i, label %if.end.i252.i.blkdev_pr_reserve.exit.i_crit_edge, label %lor.lhs.false.i254.i

if.end.i252.i.blkdev_pr_reserve.exit.i_crit_edge: ; preds = %if.end.i252.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_reserve.exit.i

lor.lhs.false.i254.i:                             ; preds = %if.end.i252.i
  %pr_reserve.i.i = getelementptr inbounds %struct.pr_ops, ptr %286, i32 0, i32 1
  %290 = ptrtoint ptr %pr_reserve.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %pr_reserve.i.i, align 4
  %tobool1.not.i253.i = icmp eq ptr %291, null
  br i1 %tobool1.not.i253.i, label %lor.lhs.false.i254.i.blkdev_pr_reserve.exit.i_crit_edge, label %if.end59.i.i.i256.i

lor.lhs.false.i254.i.blkdev_pr_reserve.exit.i_crit_edge: ; preds = %lor.lhs.false.i254.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_reserve.exit.i

if.end59.i.i.i256.i:                              ; preds = %lor.lhs.false.i254.i
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #5
  %call.i.i.i255.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i255.i, label %if.end59.i.i.i256.i.if.then11.i.i.i271.i_crit_edge, label %land.lhs.true.i.i.i259.i

if.end59.i.i.i256.i.if.then11.i.i.i271.i_crit_edge: ; preds = %if.end59.i.i.i256.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i271.i

land.lhs.true.i.i.i259.i:                         ; preds = %if.end59.i.i.i256.i
  %292 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i.i257.i = extractvalue { i32, i32 } %292, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i257.i)
  %cmp.i6.i.i258.i = icmp eq i32 %asmresult.i.i.i257.i, 0
  br i1 %cmp.i6.i.i258.i, label %if.end.i.i.i267.i, label %land.lhs.true.i.i.i259.i.if.then11.i.i.i271.i_crit_edge, !prof !26

land.lhs.true.i.i.i259.i.if.then11.i.i.i271.i_crit_edge: ; preds = %land.lhs.true.i.i.i259.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i271.i

if.end.i.i.i267.i:                                ; preds = %land.lhs.true.i.i.i259.i
  %call.i.i.i.i260.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rsv.i.i, i32 noundef 16) #5
  %293 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i.i261.i = and i32 %293, -16384
  %294 = inttoptr i32 %and.i.i.i.i.i.i.i261.i to ptr
  %cpu_domain.i.i.i.i.i.i262.i = getelementptr inbounds %struct.thread_info, ptr %294, i32 0, i32 4
  %295 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i262.i) #3, !srcloc !20
  %and.i.i.i.i.i263.i = and i32 %295, -13
  %or.i.i.i.i.i264.i = or i32 %and.i.i.i.i.i263.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i264.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i.i265.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rsv.i.i, ptr noundef %4, i32 noundef 16) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %295) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i265.i)
  %tobool4.not.i.i.i266.i = icmp eq i32 %call1.i.i.i.i265.i, 0
  br i1 %tobool4.not.i.i.i266.i, label %if.end7.i273.i, label %if.end.i.i.i267.i.if.then11.i.i.i271.i_crit_edge, !prof !26

if.end.i.i.i267.i.if.then11.i.i.i271.i_crit_edge: ; preds = %if.end.i.i.i267.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i271.i

if.then11.i.i.i271.i:                             ; preds = %if.end.i.i.i267.i.if.then11.i.i.i271.i_crit_edge, %land.lhs.true.i.i.i259.i.if.then11.i.i.i271.i_crit_edge, %if.end59.i.i.i256.i.if.then11.i.i.i271.i_crit_edge
  %res.0.i.i20.i268.i = phi i32 [ %call1.i.i.i.i265.i, %if.end.i.i.i267.i.if.then11.i.i.i271.i_crit_edge ], [ 16, %if.end59.i.i.i256.i.if.then11.i.i.i271.i_crit_edge ], [ 16, %land.lhs.true.i.i.i259.i.if.then11.i.i.i271.i_crit_edge ]
  %sub.i.i.i269.i = sub i32 16, %res.0.i.i20.i268.i
  %add.ptr.i.i.i270.i = getelementptr i8, ptr %rsv.i.i, i32 %sub.i.i.i269.i
  %296 = call ptr @memset(ptr %add.ptr.i.i.i270.i, i32 0, i32 %res.0.i.i20.i268.i)
  br label %blkdev_pr_reserve.exit.i

if.end7.i273.i:                                   ; preds = %if.end.i.i.i267.i
  %297 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %288, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %298)
  %tobool8.not.i272.i = icmp ult i32 %298, 2
  br i1 %tobool8.not.i272.i, label %if.end10.i275.i, label %if.end7.i273.i.blkdev_pr_reserve.exit.i_crit_edge

if.end7.i273.i.blkdev_pr_reserve.exit.i_crit_edge: ; preds = %if.end7.i273.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_reserve.exit.i

if.end10.i275.i:                                  ; preds = %if.end7.i273.i
  call void @__sanitizer_cov_trace_pc() #7
  %299 = ptrtoint ptr %pr_reserve.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %pr_reserve.i.i, align 4
  %301 = ptrtoint ptr %rsv.i.i to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %rsv.i.i, align 8
  %303 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %287, align 8
  %call13.i274.i = call i32 %300(ptr noundef %call, i64 noundef %302, i32 noundef %304, i32 noundef %298) #5
  br label %blkdev_pr_reserve.exit.i

blkdev_pr_reserve.exit.i:                         ; preds = %if.end10.i275.i, %if.end7.i273.i.blkdev_pr_reserve.exit.i_crit_edge, %if.then11.i.i.i271.i, %lor.lhs.false.i254.i.blkdev_pr_reserve.exit.i_crit_edge, %if.end.i252.i.blkdev_pr_reserve.exit.i_crit_edge, %sw.bb71.i.blkdev_pr_reserve.exit.i_crit_edge
  %retval.0.i276.i = phi i32 [ %call13.i274.i, %if.end10.i275.i ], [ -1, %sw.bb71.i.blkdev_pr_reserve.exit.i_crit_edge ], [ -95, %lor.lhs.false.i254.i.blkdev_pr_reserve.exit.i_crit_edge ], [ -95, %if.end.i252.i.blkdev_pr_reserve.exit.i_crit_edge ], [ -95, %if.end7.i273.i.blkdev_pr_reserve.exit.i_crit_edge ], [ -14, %if.then11.i.i.i271.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rsv.i.i) #5
  br label %blkdev_common_ioctl.exit

sw.bb73.i:                                        ; preds = %entry
  %bd_disk.i278.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %305 = ptrtoint ptr %bd_disk.i278.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %bd_disk.i278.i, align 8
  %fops.i279.i = getelementptr inbounds %struct.gendisk, ptr %306, i32 0, i32 8
  %307 = ptrtoint ptr %fops.i279.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %fops.i279.i, align 8
  %pr_ops.i280.i = getelementptr inbounds %struct.block_device_operations, ptr %308, i32 0, i32 15
  %309 = ptrtoint ptr %pr_ops.i280.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %pr_ops.i280.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rsv.i277.i) #5
  %311 = getelementptr inbounds %struct.pr_reservation, ptr %rsv.i277.i, i32 0, i32 1
  %312 = getelementptr inbounds %struct.pr_reservation, ptr %rsv.i277.i, i32 0, i32 2
  %313 = call ptr @memset(ptr %rsv.i277.i, i32 255, i32 16)
  %call.i281.i = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call.i281.i, label %if.end.i283.i, label %sw.bb73.i.blkdev_pr_release.exit.i_crit_edge

sw.bb73.i.blkdev_pr_release.exit.i_crit_edge:     ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_release.exit.i

if.end.i283.i:                                    ; preds = %sw.bb73.i
  %tobool.not.i282.i = icmp eq ptr %310, null
  br i1 %tobool.not.i282.i, label %if.end.i283.i.blkdev_pr_release.exit.i_crit_edge, label %lor.lhs.false.i285.i

if.end.i283.i.blkdev_pr_release.exit.i_crit_edge: ; preds = %if.end.i283.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_release.exit.i

lor.lhs.false.i285.i:                             ; preds = %if.end.i283.i
  %pr_release.i.i = getelementptr inbounds %struct.pr_ops, ptr %310, i32 0, i32 2
  %314 = ptrtoint ptr %pr_release.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %pr_release.i.i, align 4
  %tobool1.not.i284.i = icmp eq ptr %315, null
  br i1 %tobool1.not.i284.i, label %lor.lhs.false.i285.i.blkdev_pr_release.exit.i_crit_edge, label %if.end59.i.i.i287.i

lor.lhs.false.i285.i.blkdev_pr_release.exit.i_crit_edge: ; preds = %lor.lhs.false.i285.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_release.exit.i

if.end59.i.i.i287.i:                              ; preds = %lor.lhs.false.i285.i
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #5
  %call.i.i.i286.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i286.i, label %if.end59.i.i.i287.i.if.then11.i.i.i301.i_crit_edge, label %land.lhs.true.i.i.i290.i

if.end59.i.i.i287.i.if.then11.i.i.i301.i_crit_edge: ; preds = %if.end59.i.i.i287.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i301.i

land.lhs.true.i.i.i290.i:                         ; preds = %if.end59.i.i.i287.i
  %316 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i.i288.i = extractvalue { i32, i32 } %316, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i288.i)
  %cmp.i6.i.i289.i = icmp eq i32 %asmresult.i.i.i288.i, 0
  br i1 %cmp.i6.i.i289.i, label %if.end.i.i.i298.i, label %land.lhs.true.i.i.i290.i.if.then11.i.i.i301.i_crit_edge, !prof !26

land.lhs.true.i.i.i290.i.if.then11.i.i.i301.i_crit_edge: ; preds = %land.lhs.true.i.i.i290.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i301.i

if.end.i.i.i298.i:                                ; preds = %land.lhs.true.i.i.i290.i
  %call.i.i.i.i291.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rsv.i277.i, i32 noundef 16) #5
  %317 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i.i292.i = and i32 %317, -16384
  %318 = inttoptr i32 %and.i.i.i.i.i.i.i292.i to ptr
  %cpu_domain.i.i.i.i.i.i293.i = getelementptr inbounds %struct.thread_info, ptr %318, i32 0, i32 4
  %319 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i293.i) #3, !srcloc !20
  %and.i.i.i.i.i294.i = and i32 %319, -13
  %or.i.i.i.i.i295.i = or i32 %and.i.i.i.i.i294.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i295.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i.i296.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rsv.i277.i, ptr noundef %4, i32 noundef 16) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %319) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i296.i)
  %tobool4.not.i.i.i297.i = icmp eq i32 %call1.i.i.i.i296.i, 0
  br i1 %tobool4.not.i.i.i297.i, label %if.end7.i303.i, label %if.end.i.i.i298.i.if.then11.i.i.i301.i_crit_edge, !prof !26

if.end.i.i.i298.i.if.then11.i.i.i301.i_crit_edge: ; preds = %if.end.i.i.i298.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i301.i

if.then11.i.i.i301.i:                             ; preds = %if.end.i.i.i298.i.if.then11.i.i.i301.i_crit_edge, %land.lhs.true.i.i.i290.i.if.then11.i.i.i301.i_crit_edge, %if.end59.i.i.i287.i.if.then11.i.i.i301.i_crit_edge
  %res.0.i.i19.i.i = phi i32 [ %call1.i.i.i.i296.i, %if.end.i.i.i298.i.if.then11.i.i.i301.i_crit_edge ], [ 16, %if.end59.i.i.i287.i.if.then11.i.i.i301.i_crit_edge ], [ 16, %land.lhs.true.i.i.i290.i.if.then11.i.i.i301.i_crit_edge ]
  %sub.i.i.i299.i = sub i32 16, %res.0.i.i19.i.i
  %add.ptr.i.i.i300.i = getelementptr i8, ptr %rsv.i277.i, i32 %sub.i.i.i299.i
  %320 = call ptr @memset(ptr %add.ptr.i.i.i300.i, i32 0, i32 %res.0.i.i19.i.i)
  br label %blkdev_pr_release.exit.i

if.end7.i303.i:                                   ; preds = %if.end.i.i.i298.i
  %321 = ptrtoint ptr %312 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool8.not.i302.i = icmp eq i32 %322, 0
  br i1 %tobool8.not.i302.i, label %if.end10.i305.i, label %if.end7.i303.i.blkdev_pr_release.exit.i_crit_edge

if.end7.i303.i.blkdev_pr_release.exit.i_crit_edge: ; preds = %if.end7.i303.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_release.exit.i

if.end10.i305.i:                                  ; preds = %if.end7.i303.i
  call void @__sanitizer_cov_trace_pc() #7
  %323 = ptrtoint ptr %pr_release.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %pr_release.i.i, align 4
  %325 = ptrtoint ptr %rsv.i277.i to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %rsv.i277.i, align 8
  %327 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %311, align 8
  %call12.i304.i = call i32 %324(ptr noundef %call, i64 noundef %326, i32 noundef %328) #5
  br label %blkdev_pr_release.exit.i

blkdev_pr_release.exit.i:                         ; preds = %if.end10.i305.i, %if.end7.i303.i.blkdev_pr_release.exit.i_crit_edge, %if.then11.i.i.i301.i, %lor.lhs.false.i285.i.blkdev_pr_release.exit.i_crit_edge, %if.end.i283.i.blkdev_pr_release.exit.i_crit_edge, %sw.bb73.i.blkdev_pr_release.exit.i_crit_edge
  %retval.0.i306.i = phi i32 [ %call12.i304.i, %if.end10.i305.i ], [ -1, %sw.bb73.i.blkdev_pr_release.exit.i_crit_edge ], [ -95, %lor.lhs.false.i285.i.blkdev_pr_release.exit.i_crit_edge ], [ -95, %if.end.i283.i.blkdev_pr_release.exit.i_crit_edge ], [ -95, %if.end7.i303.i.blkdev_pr_release.exit.i_crit_edge ], [ -14, %if.then11.i.i.i301.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rsv.i277.i) #5
  br label %blkdev_common_ioctl.exit

sw.bb75.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call76.i = tail call fastcc i32 @blkdev_pr_preempt(ptr noundef %call, ptr noundef %4, i1 noundef zeroext false) #5
  br label %blkdev_common_ioctl.exit

sw.bb77.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call78.i = tail call fastcc i32 @blkdev_pr_preempt(ptr noundef %call, ptr noundef %4, i1 noundef zeroext true) #5
  br label %blkdev_common_ioctl.exit

sw.bb79.i:                                        ; preds = %entry
  %bd_disk.i307.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %329 = ptrtoint ptr %bd_disk.i307.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %bd_disk.i307.i, align 8
  %fops.i308.i = getelementptr inbounds %struct.gendisk, ptr %330, i32 0, i32 8
  %331 = ptrtoint ptr %fops.i308.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %fops.i308.i, align 8
  %pr_ops.i309.i = getelementptr inbounds %struct.block_device_operations, ptr %332, i32 0, i32 15
  %333 = ptrtoint ptr %pr_ops.i309.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %pr_ops.i309.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %c.i.i) #5
  %335 = getelementptr inbounds %struct.pr_clear, ptr %c.i.i, i32 0, i32 1
  %336 = call ptr @memset(ptr %c.i.i, i32 255, i32 16)
  %call.i310.i = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call.i310.i, label %if.end.i312.i, label %sw.bb79.i.blkdev_pr_clear.exit.i_crit_edge

sw.bb79.i.blkdev_pr_clear.exit.i_crit_edge:       ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_clear.exit.i

if.end.i312.i:                                    ; preds = %sw.bb79.i
  %tobool.not.i311.i = icmp eq ptr %334, null
  br i1 %tobool.not.i311.i, label %if.end.i312.i.blkdev_pr_clear.exit.i_crit_edge, label %lor.lhs.false.i314.i

if.end.i312.i.blkdev_pr_clear.exit.i_crit_edge:   ; preds = %if.end.i312.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_clear.exit.i

lor.lhs.false.i314.i:                             ; preds = %if.end.i312.i
  %pr_clear.i.i = getelementptr inbounds %struct.pr_ops, ptr %334, i32 0, i32 4
  %337 = ptrtoint ptr %pr_clear.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %pr_clear.i.i, align 4
  %tobool1.not.i313.i = icmp eq ptr %338, null
  br i1 %tobool1.not.i313.i, label %lor.lhs.false.i314.i.blkdev_pr_clear.exit.i_crit_edge, label %if.end59.i.i.i316.i

lor.lhs.false.i314.i.blkdev_pr_clear.exit.i_crit_edge: ; preds = %lor.lhs.false.i314.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_clear.exit.i

if.end59.i.i.i316.i:                              ; preds = %lor.lhs.false.i314.i
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #5
  %call.i.i.i315.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i315.i, label %if.end59.i.i.i316.i.if.then11.i.i.i331.i_crit_edge, label %land.lhs.true.i.i.i319.i

if.end59.i.i.i316.i.if.then11.i.i.i331.i_crit_edge: ; preds = %if.end59.i.i.i316.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i331.i

land.lhs.true.i.i.i319.i:                         ; preds = %if.end59.i.i.i316.i
  %339 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i.i317.i = extractvalue { i32, i32 } %339, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i317.i)
  %cmp.i6.i.i318.i = icmp eq i32 %asmresult.i.i.i317.i, 0
  br i1 %cmp.i6.i.i318.i, label %if.end.i.i.i327.i, label %land.lhs.true.i.i.i319.i.if.then11.i.i.i331.i_crit_edge, !prof !26

land.lhs.true.i.i.i319.i.if.then11.i.i.i331.i_crit_edge: ; preds = %land.lhs.true.i.i.i319.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i331.i

if.end.i.i.i327.i:                                ; preds = %land.lhs.true.i.i.i319.i
  %call.i.i.i.i320.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %c.i.i, i32 noundef 16) #5
  %340 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i.i321.i = and i32 %340, -16384
  %341 = inttoptr i32 %and.i.i.i.i.i.i.i321.i to ptr
  %cpu_domain.i.i.i.i.i.i322.i = getelementptr inbounds %struct.thread_info, ptr %341, i32 0, i32 4
  %342 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i322.i) #3, !srcloc !20
  %and.i.i.i.i.i323.i = and i32 %342, -13
  %or.i.i.i.i.i324.i = or i32 %and.i.i.i.i.i323.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i324.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i.i325.i = call i32 @arm_copy_from_user(ptr noundef nonnull %c.i.i, ptr noundef %4, i32 noundef 16) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %342) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i325.i)
  %tobool4.not.i.i.i326.i = icmp eq i32 %call1.i.i.i.i325.i, 0
  br i1 %tobool4.not.i.i.i326.i, label %if.end7.i333.i, label %if.end.i.i.i327.i.if.then11.i.i.i331.i_crit_edge, !prof !26

if.end.i.i.i327.i.if.then11.i.i.i331.i_crit_edge: ; preds = %if.end.i.i.i327.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i331.i

if.then11.i.i.i331.i:                             ; preds = %if.end.i.i.i327.i.if.then11.i.i.i331.i_crit_edge, %land.lhs.true.i.i.i319.i.if.then11.i.i.i331.i_crit_edge, %if.end59.i.i.i316.i.if.then11.i.i.i331.i_crit_edge
  %res.0.i.i19.i328.i = phi i32 [ %call1.i.i.i.i325.i, %if.end.i.i.i327.i.if.then11.i.i.i331.i_crit_edge ], [ 16, %if.end59.i.i.i316.i.if.then11.i.i.i331.i_crit_edge ], [ 16, %land.lhs.true.i.i.i319.i.if.then11.i.i.i331.i_crit_edge ]
  %sub.i.i.i329.i = sub i32 16, %res.0.i.i19.i328.i
  %add.ptr.i.i.i330.i = getelementptr i8, ptr %c.i.i, i32 %sub.i.i.i329.i
  %343 = call ptr @memset(ptr %add.ptr.i.i.i330.i, i32 0, i32 %res.0.i.i19.i328.i)
  br label %blkdev_pr_clear.exit.i

if.end7.i333.i:                                   ; preds = %if.end.i.i.i327.i
  %344 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %335, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool8.not.i332.i = icmp eq i32 %345, 0
  br i1 %tobool8.not.i332.i, label %if.end10.i335.i, label %if.end7.i333.i.blkdev_pr_clear.exit.i_crit_edge

if.end7.i333.i.blkdev_pr_clear.exit.i_crit_edge:  ; preds = %if.end7.i333.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blkdev_pr_clear.exit.i

if.end10.i335.i:                                  ; preds = %if.end7.i333.i
  call void @__sanitizer_cov_trace_pc() #7
  %346 = ptrtoint ptr %pr_clear.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %pr_clear.i.i, align 4
  %348 = ptrtoint ptr %c.i.i to i32
  call void @__asan_load8_noabort(i32 %348)
  %349 = load i64, ptr %c.i.i, align 8
  %call12.i334.i = call i32 %347(ptr noundef %call, i64 noundef %349) #5
  br label %blkdev_pr_clear.exit.i

blkdev_pr_clear.exit.i:                           ; preds = %if.end10.i335.i, %if.end7.i333.i.blkdev_pr_clear.exit.i_crit_edge, %if.then11.i.i.i331.i, %lor.lhs.false.i314.i.blkdev_pr_clear.exit.i_crit_edge, %if.end.i312.i.blkdev_pr_clear.exit.i_crit_edge, %sw.bb79.i.blkdev_pr_clear.exit.i_crit_edge
  %retval.0.i336.i = phi i32 [ %call12.i334.i, %if.end10.i335.i ], [ -1, %sw.bb79.i.blkdev_pr_clear.exit.i_crit_edge ], [ -95, %lor.lhs.false.i314.i.blkdev_pr_clear.exit.i_crit_edge ], [ -95, %if.end.i312.i.blkdev_pr_clear.exit.i_crit_edge ], [ -95, %if.end7.i333.i.blkdev_pr_clear.exit.i_crit_edge ], [ -14, %if.then11.i.i.i331.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %c.i.i) #5
  br label %blkdev_common_ioctl.exit

blkdev_common_ioctl.exit:                         ; preds = %blkdev_pr_clear.exit.i, %sw.bb77.i, %sw.bb75.i, %blkdev_pr_release.exit.i, %blkdev_pr_reserve.exit.i, %blkdev_pr_register.exit.i, %sw.bb67.i, %if.end64.i, %sw.bb50.i, %sw.bb43.i, %sw.bb41.i, %bdev_alignment_offset.exit.i, %sw.bb35.i, %sw.bb32.i, %sw.bb29.i, %bdev_logical_block_size.exit.i, %bdev_read_only.exit.i, %sw.bb18.i, %bdev_zone_sectors.exit.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %blk_ioctl_zeroout.exit.i, %sw.bb5.i, %sw.bb3.i, %if.then7.i.i.blkdev_common_ioctl.exit_crit_edge
  %retval.0.i138 = phi i32 [ %retval.0.i336.i, %blkdev_pr_clear.exit.i ], [ %call78.i, %sw.bb77.i ], [ %call76.i, %sw.bb75.i ], [ %retval.0.i306.i, %blkdev_pr_release.exit.i ], [ %retval.0.i276.i, %blkdev_pr_reserve.exit.i ], [ %retval.0.i246.i, %blkdev_pr_register.exit.i ], [ %call68.i, %sw.bb67.i ], [ %call66.i, %if.end64.i ], [ %246, %sw.bb50.i ], [ %234, %sw.bb43.i ], [ %224, %sw.bb41.i ], [ %220, %bdev_alignment_offset.exit.i ], [ %198, %sw.bb35.i ], [ %190, %sw.bb32.i ], [ %182, %sw.bb29.i ], [ %174, %bdev_logical_block_size.exit.i ], [ %166, %bdev_read_only.exit.i ], [ %150, %sw.bb18.i ], [ %144, %bdev_zone_sectors.exit.i ], [ %call14.i, %sw.bb13.i ], [ %call12.i, %sw.bb11.i ], [ %134, %sw.bb9.i ], [ %retval.0.i155.i, %blk_ioctl_zeroout.exit.i ], [ %call6.i112, %sw.bb5.i ], [ %call4.i, %sw.bb3.i ], [ %call12.i.i111, %if.then7.i.i.blkdev_common_ioctl.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %retval.0.i138)
  %cmp27.not = icmp eq i32 %retval.0.i138, -515
  br i1 %cmp27.not, label %blkdev_common_ioctl.exit.if.end30_crit_edge, label %blkdev_common_ioctl.exit.cleanup_crit_edge

blkdev_common_ioctl.exit.cleanup_crit_edge:       ; preds = %blkdev_common_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

blkdev_common_ioctl.exit.if.end30_crit_edge:      ; preds = %blkdev_common_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end30:                                         ; preds = %blkdev_common_ioctl.exit.if.end30_crit_edge, %entry.if.end30_crit_edge
  %bd_disk31 = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 17
  %350 = ptrtoint ptr %bd_disk31 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %bd_disk31, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %351, i32 0, i32 8
  %352 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %fops, align 8
  %ioctl = getelementptr inbounds %struct.block_device_operations, ptr %353, i32 0, i32 4
  %354 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %ioctl, align 4
  %tobool32.not = icmp eq ptr %355, null
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = call i32 %355(ptr noundef %call, i32 noundef %mode.0, i32 noundef %cmd, i32 noundef %arg) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %blkdev_common_ioctl.exit.cleanup_crit_edge, %if.end61.i.cleanup_crit_edge, %sw.bb58.i.cleanup_crit_edge, %if.end.i135, %sw.bb55.i.cleanup_crit_edge, %if.end16.i.i, %if.end.i149.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %if.end.i.i, %sw.bb.i.cleanup_crit_edge, %sw.bb24, %sw.bb21, %blkdev_bszset.exit, %sw.bb16, %if.end13, %sw.bb10.cleanup_crit_edge, %if.end8, %sw.bb5.cleanup_crit_edge, %blkpg_do_ioctl.exit.i, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %blkdev_getgeo.exit
  %retval.0 = phi i32 [ %call38, %if.end34 ], [ %call25, %sw.bb24 ], [ %96, %sw.bb21 ], [ %retval.0.i103, %blkdev_bszset.exit ], [ %77, %sw.bb16 ], [ %69, %if.end13 ], [ %63, %if.end8 ], [ %retval.0.i, %blkdev_getgeo.exit ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -27, %sw.bb10.cleanup_crit_edge ], [ %retval.0.i138, %blkdev_common_ioctl.exit.cleanup_crit_edge ], [ -25, %if.end30.cleanup_crit_edge ], [ %retval.0.i.i, %blkpg_do_ioctl.exit.i ], [ -14, %lor.lhs.false.i.cleanup_crit_edge ], [ -14, %sw.bb3.cleanup_crit_edge ], [ -14, %if.end.i149.i.cleanup_crit_edge ], [ -13, %sw.bb1.i.cleanup_crit_edge ], [ 0, %if.end16.i.i ], [ -13, %sw.bb.i.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -22, %if.end61.i.cleanup_crit_edge ], [ -13, %sw.bb58.i.cleanup_crit_edge ], [ -13, %sw.bb55.i.cleanup_crit_edge ], [ 0, %if.end.i135 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_trace_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_del_partition(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_add_partition(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_resize_partition(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blk_ioctl_discard(ptr noundef %bdev, i32 noundef %mode, i32 noundef %arg, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %range = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range) #5
  %0 = getelementptr inbounds [2 x i64], ptr %range, i32 0, i32 1
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 7
  %1 = call ptr @memset(ptr %range, i32 255, i32 16)
  %2 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_inode, align 4
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 18
  %4 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %queue_flags, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.end4.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.if.then11.i.i_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 16, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !26

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range, i32 noundef 16) #5
  %11 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !20
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %range, ptr noundef %9, i32 noundef 16) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end8, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !26

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end4.if.then11.i.i_crit_edge
  %res.0.i.i51 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end4.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i51
  %add.ptr.i.i = getelementptr i8, ptr %range, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i51)
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i
  %15 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %range, align 8
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %0, align 8
  %and10 = and i64 %16, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  %and14 = and i64 %18, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.end17, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %add = add i64 %18, %16
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 1
  %19 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %20, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shl.i)
  %cmp = icmp ugt i64 %add, %shl.i
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock.i = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 2
  call void @down_write(ptr noundef %invalidate_lock.i) #5
  %sub = add i64 %add, -1
  %call22 = call i32 @truncate_bdev_range(ptr noundef %bdev, i32 noundef %mode, i64 noundef %16, i64 noundef %sub) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.fail_crit_edge

if.end20.fail_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i64 %16, 9
  %shr26 = lshr i64 %18, 9
  %call27 = call i32 @blkdev_issue_discard(ptr noundef %bdev, i64 noundef %shr, i64 noundef %shr26, i32 noundef 3264, i32 noundef %flags) #5
  br label %fail

fail:                                             ; preds = %if.end25, %if.end20.fail_crit_edge
  %err.0 = phi i32 [ %call22, %if.end20.fail_crit_edge ], [ %call27, %if.end25 ]
  %23 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_mapping, align 8
  %invalidate_lock.i48 = getelementptr inbounds %struct.address_space, ptr %24, i32 0, i32 2
  call void @up_write(ptr noundef %invalidate_lock.i48) #5
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %fail ], [ -9, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_report_zones_ioctl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_zone_mgmt_ioctl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_nr_zones(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @disk_scan_partitions(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blkdev_pr_preempt(ptr noundef %bdev, ptr noundef %arg, i1 noundef zeroext %abort) unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.pr_preempt, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %pr_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pr_ops, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %p) #5
  %6 = getelementptr inbounds %struct.pr_preempt, ptr %p, i32 0, i32 1
  %7 = getelementptr inbounds %struct.pr_preempt, ptr %p, i32 0, i32 2
  %8 = getelementptr inbounds %struct.pr_preempt, ptr %p, i32 0, i32 3
  %9 = call ptr @memset(ptr %p, i32 255, i32 24)
  %call = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pr_preempt = getelementptr inbounds %struct.pr_ops, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %pr_preempt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pr_preempt, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end59.i.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end59.i.i:                                     ; preds = %lor.lhs.false
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 24, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !26

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %p, i32 noundef 24) #5
  %13 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !20
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %p, ptr noundef %arg, i32 noundef 24) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !26

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i20 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i20
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i20)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %pr_preempt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pr_preempt, align 4
  %21 = ptrtoint ptr %p to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %p, align 8
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %6, align 8
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %7, align 8
  %call13 = call i32 %20(ptr noundef %bdev, i64 noundef %22, i64 noundef %24, i32 noundef %26, i1 noundef zeroext %abort) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %if.then11.i.i, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ -1, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end7.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %p) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsync_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @truncate_bdev_range(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../block/ioctl.c", i32 58, i32 6}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2152278205, i64 2152278230}
!20 = !{i64 4773079}
!21 = !{i64 4773276}
!22 = !{i64 2152258509}
!23 = !{i64 2155107186, i64 2155107466, i64 2155107800, i64 2155108134}
!24 = !{i64 2155119373, i64 2155119653, i64 2155119987, i64 2155120321}
!25 = !{i64 2152277524, i64 2152277549}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2155155640, i64 2155155920, i64 2155156254, i64 2155156588}
!28 = !{i64 2155164406, i64 2155164686, i64 2155165020, i64 2155165354}
!29 = !{i64 2155138108, i64 2155138388, i64 2155138722, i64 2155139056}
!30 = !{i64 2155196926, i64 2155197206, i64 2155197540, i64 2155197874}
!31 = !{i64 2155175134, i64 2155175414, i64 2155175748, i64 2155176082}
!32 = !{i64 2155184773, i64 2155185053, i64 2155185387, i64 2155185721}
!33 = !{i64 2155146874, i64 2155147154, i64 2155147488, i64 2155147822}
!34 = !{i8 0, i8 2}
!35 = !{i64 2148081805, i64 2148082085, i64 2148082419, i64 2148082753}
!36 = !{i64 2155127380, i64 2155127660, i64 2155127994, i64 2155128328}
