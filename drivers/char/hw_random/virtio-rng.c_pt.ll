; ModuleID = '/llk/IR_all_yes/drivers/char/hw_random/virtio-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/virtio-rng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.virtrng_info = type { %struct.hwrng, ptr, [25 x i8], i32, i8, i8, %struct.completion, i32, i32, [128 x i8] }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@__initcall__kmod_virtio_rng__233_260_virtio_rng_driver_init6 = internal global ptr @virtio_rng_driver_init, section ".initcall6.init", align 4
@virtio_rng_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr null, i32 0, ptr null, i32 0, ptr null, ptr @virtrng_probe, ptr @virtrng_scan, ptr @virtrng_remove, ptr null, ptr @virtrng_freeze, ptr @virtrng_restore }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtio_rng_driver_exit = internal global ptr @virtio_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description234 = internal constant [51 x i8] c"virtio_rng.description=Virtio random number driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [50 x i8] c"virtio_rng.file=drivers/char/hw_random/virtio-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [23 x i8] c"virtio_rng.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio_rng\00", [21 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 4, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@rng_index_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"virtio_rng.%d\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rng_index_ida.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"virtio_rng_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 247, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 248, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 242, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"rng_index_ida\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 143, i32 20 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 156, i32 57 }
@___asan_gen_.24 = private constant [39 x i8] c"../drivers/char/hw_random/virtio-rng.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 16, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 87, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_virtio_rng_driver_exit, ptr @__initcall__kmod_virtio_rng__233_260_virtio_rng_driver_init6, ptr @virtio_rng_driver_exit, ptr @virtio_rng_driver, ptr @.str, ptr @id_table, ptr @rng_index_ida, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @init_completion.__key, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_rng_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_index_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_rng_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_rng_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_rng_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_rng_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtrng_probe(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @probe_common(ptr noundef %vdev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtrng_scan(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @hwrng_register(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hwrng_register_done = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hwrng_register_done to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %hwrng_register_done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtrng_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hwrng_removed.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hwrng_removed.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %hwrng_removed.i, align 1
  %data_avail.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %data_avail.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data_avail.i, align 4
  %data_idx.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %data_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data_idx.i, align 4
  %have_data.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %have_data.i) #7
  %hwrng_register_done.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %hwrng_register_done.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hwrng_register_done.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %entry.remove_common.exit_crit_edge, label %if.then.i

entry.remove_common.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_common.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hwrng_unregister(ptr noundef %1) #7
  br label %remove_common.exit

remove_common.exit:                               ; preds = %if.then.i, %entry.remove_common.exit_crit_edge
  tail call void @virtio_reset_device(ptr noundef %vdev) #7
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %del_vqs.i, align 4
  tail call void %10(ptr noundef %vdev) #7
  %index.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  tail call void @ida_free(ptr noundef nonnull @rng_index_ida, i32 noundef %12) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtrng_freeze(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hwrng_removed.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hwrng_removed.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %hwrng_removed.i, align 1
  %data_avail.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %data_avail.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data_avail.i, align 4
  %data_idx.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %data_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data_idx.i, align 4
  %have_data.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %have_data.i) #7
  %hwrng_register_done.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %hwrng_register_done.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hwrng_register_done.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %entry.remove_common.exit_crit_edge, label %if.then.i

entry.remove_common.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_common.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hwrng_unregister(ptr noundef %1) #7
  br label %remove_common.exit

remove_common.exit:                               ; preds = %if.then.i, %entry.remove_common.exit_crit_edge
  tail call void @virtio_reset_device(ptr noundef %vdev) #7
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %del_vqs.i, align 4
  tail call void %10(ptr noundef %vdev) #7
  %index.i = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  tail call void @ida_free(ptr noundef nonnull @rng_index_ida, i32 noundef %12) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtrng_restore(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @probe_common(ptr noundef %vdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hwrng_removed = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hwrng_removed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %hwrng_removed, align 1
  %call1 = tail call i32 @hwrng_register(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %hwrng_register_done = getelementptr inbounds %struct.virtrng_info, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %hwrng_register_done to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %hwrng_register_done, align 4
  %4 = ptrtoint ptr %hwrng_removed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hwrng_removed, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ %call, %entry.if.end5_crit_edge ], [ 0, %if.then3 ], [ %call1, %if.then.if.end5_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @probe_common(ptr noundef %vdev) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  %callbacks.i = alloca [1 x ptr], align 4
  %names.i = alloca [1 x ptr], align 4
  %vq.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 332) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup17_crit_edge, label %if.end

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ida_alloc_range(ptr noundef nonnull @rng_index_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  %index2 = getelementptr inbounds %struct.virtrng_info, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %index2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %index2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.err_ida_crit_edge, label %if.end4

if.end.err_ida_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ida

if.end4:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.virtrng_info, ptr %call7.i.i, i32 0, i32 2
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %call1)
  %have_data = getelementptr inbounds %struct.virtrng_info, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %have_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %have_data, align 4
  %wait.i = getelementptr inbounds %struct.virtrng_info, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #7
  %3 = ptrtoint ptr %call7.i.i to i32
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %call7.i.i, align 8
  %.compoundliteral.sroa.3.0.hwrng.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.3.0.hwrng.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %.compoundliteral.sroa.3.0.hwrng.sroa_idx, align 4
  %.compoundliteral.sroa.320.0.hwrng.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 8
  %6 = ptrtoint ptr %.compoundliteral.sroa.320.0.hwrng.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @virtio_cleanup, ptr %.compoundliteral.sroa.320.0.hwrng.sroa_idx, align 8
  %.compoundliteral.sroa.4.0.hwrng.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 12
  %7 = ptrtoint ptr %.compoundliteral.sroa.4.0.hwrng.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.4.0.hwrng.sroa_idx, align 4
  %.compoundliteral.sroa.421.0.hwrng.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 20
  %8 = ptrtoint ptr %.compoundliteral.sroa.421.0.hwrng.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @virtio_read, ptr %.compoundliteral.sroa.421.0.hwrng.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.hwrng.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 24
  %9 = ptrtoint ptr %.compoundliteral.sroa.5.0.hwrng.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %.compoundliteral.sroa.5.0.hwrng.sroa_idx, align 8
  %.compoundliteral.sroa.6.0.hwrng.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 28
  %10 = ptrtoint ptr %.compoundliteral.sroa.6.0.hwrng.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1000, ptr %.compoundliteral.sroa.6.0.hwrng.sroa_idx, align 4
  %.compoundliteral.sroa.7.0.hwrng.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 30
  %11 = call ptr @memset(ptr %.compoundliteral.sroa.7.0.hwrng.sroa_idx, i32 0, i32 70)
  %priv9 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %12 = ptrtoint ptr %priv9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %priv9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %callbacks.i) #7
  %13 = ptrtoint ptr %callbacks.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @random_recv_done, ptr %callbacks.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names.i) #7
  %14 = ptrtoint ptr %names.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.2, ptr %names.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vq.i) #7
  %15 = ptrtoint ptr %vq.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %vq.i, align 4, !annotation !34
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %16 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %find_vqs.i, align 4
  %call.i = call i32 %19(ptr noundef %vdev, i32 noundef 1, ptr noundef nonnull %vq.i, ptr noundef nonnull %callbacks.i, ptr noundef nonnull %names.i, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %20 = inttoptr i32 %call.i to ptr
  br label %virtio_find_single_vq.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %vq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vq.i, align 4
  br label %virtio_find_single_vq.exit

virtio_find_single_vq.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %20, %if.then.i ], [ %22, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vq.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %callbacks.i) #7
  %vq = getelementptr inbounds %struct.virtrng_info, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %vq to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i, ptr %vq, align 4
  %cmp.i38 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %if.then13, label %if.end16

if.then13:                                        ; preds = %virtio_find_single_vq.exit
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %retval.0.i to i32
  call void @ida_free(ptr noundef nonnull @rng_index_ida, i32 noundef %call1) #7
  br label %err_ida

if.end16:                                         ; preds = %virtio_find_single_vq.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #7
  %25 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %26 = ptrtoint ptr %have_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %have_data, align 4
  %data_avail.i = getelementptr inbounds %struct.virtrng_info, ptr %call7.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %data_avail.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %data_avail.i, align 4
  %data_idx.i = getelementptr inbounds %struct.virtrng_info, ptr %call7.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %data_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %data_idx.i, align 8
  %data.i = getelementptr inbounds %struct.virtrng_info, ptr %call7.i.i, i32 0, i32 9
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %data.i, i32 noundef 128) #7
  %29 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vq, align 4
  %call.i40 = call i32 @virtqueue_add_inbuf(ptr noundef %30, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef %data.i, i32 noundef 3264) #7
  %31 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vq, align 4
  %call4.i = call zeroext i1 @virtqueue_kick(ptr noundef %32) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  br label %cleanup17

err_ida:                                          ; preds = %if.then13, %if.end.err_ida_crit_edge
  %err.0 = phi i32 [ %24, %if.then13 ], [ %call1, %if.end.err_ida_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup17

cleanup17:                                        ; preds = %err_ida, %if.end16, %entry.cleanup17_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_ida ], [ 0, %if.end16 ], [ -12, %entry.cleanup17_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_cleanup(ptr nocapture noundef readonly %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %have_data = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 6
  tail call void @complete(ptr noundef %have_data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_read(ptr nocapture noundef readonly %rng, ptr nocapture noundef writeonly %buf, i32 noundef %size, i1 noundef zeroext %wait) #2 align 64 {
entry:
  %sg.i.i40 = alloca %struct.scatterlist, align 4
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  %hwrng_removed = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %hwrng_removed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hwrng_removed, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_avail = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %data_avail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %size) #7
  %data.i = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 9
  %data_idx.i = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 8
  %8 = ptrtoint ptr %data_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_idx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %9
  %10 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i, i32 %7)
  %11 = load i32, ptr %data_idx.i, align 4
  %add.i = add i32 %11, %7
  store i32 %add.i, ptr %data_idx.i, align 4
  %12 = ptrtoint ptr %data_avail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_avail, align 4
  %sub.i = sub i32 %13, %7
  store i32 %sub.i, ptr %data_avail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp4.i = icmp eq i32 %13, %7
  br i1 %cmp4.i, label %if.then.i, label %if.then2.copy_data.exit_crit_edge

if.then2.copy_data.exit_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_data.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #7
  %have_data.i.i = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 6
  %14 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %15 = ptrtoint ptr %have_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %have_data.i.i, align 4
  %16 = ptrtoint ptr %data_avail to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %data_avail, align 4
  %17 = ptrtoint ptr %data_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %data_idx.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %data.i, i32 noundef 128) #7
  %vq.i.i = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %vq.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vq.i.i, align 4
  %call.i.i = call i32 @virtqueue_add_inbuf(ptr noundef %19, ptr noundef nonnull %sg.i.i, i32 noundef 1, ptr noundef %data.i, i32 noundef 3264) #7
  %20 = ptrtoint ptr %vq.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vq.i.i, align 4
  %call4.i.i = call zeroext i1 @virtqueue_kick(ptr noundef %21) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  br label %copy_data.exit

copy_data.exit:                                   ; preds = %if.then.i, %if.then2.copy_data.exit_crit_edge
  %sub = sub i32 %size, %7
  br label %if.end3

if.end3:                                          ; preds = %copy_data.exit, %if.end.if.end3_crit_edge
  %size.addr.0 = phi i32 [ %sub, %copy_data.exit ], [ %size, %if.end.if.end3_crit_edge ]
  %read.0 = phi i32 [ %7, %copy_data.exit ], [ 0, %if.end.if.end3_crit_edge ]
  br i1 %wait, label %while.cond.preheader, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end3
  %have_data = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0)
  %cmp.not54 = icmp eq i32 %size.addr.0, 0
  br i1 %cmp.not54, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %data.i42 = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 9
  %data_idx.i43 = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 8
  %vq.i.i49 = getelementptr inbounds %struct.virtrng_info, ptr %2, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %copy_data.exit53.while.body_crit_edge, %while.body.lr.ph
  %read.156 = phi i32 [ %read.0, %while.body.lr.ph ], [ %add17, %copy_data.exit53.while.body_crit_edge ]
  %size.addr.155 = phi i32 [ %size.addr.0, %while.body.lr.ph ], [ %sub16, %copy_data.exit53.while.body_crit_edge ]
  %call7 = call i32 @wait_for_completion_killable(ptr noundef %have_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %while.body.cleanup_crit_edge, label %if.end10

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %while.body
  %22 = ptrtoint ptr %data_avail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp12 = icmp eq i32 %23, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %buf, i32 %read.156
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 %size.addr.155) #7
  %25 = ptrtoint ptr %data_idx.i43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_idx.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %data.i42, i32 %26
  %27 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i44, i32 %24)
  %28 = load i32, ptr %data_idx.i43, align 4
  %add.i45 = add i32 %28, %24
  store i32 %add.i45, ptr %data_idx.i43, align 4
  %29 = ptrtoint ptr %data_avail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_avail, align 4
  %sub.i46 = sub i32 %30, %24
  store i32 %sub.i46, ptr %data_avail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %24)
  %cmp4.i47 = icmp eq i32 %30, %24
  br i1 %cmp4.i47, label %if.then.i52, label %if.end14.copy_data.exit53_crit_edge

if.end14.copy_data.exit53_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_data.exit53

if.then.i52:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i40) #7
  %31 = call ptr @memset(ptr %sg.i.i40, i32 255, i32 20)
  %32 = ptrtoint ptr %have_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %have_data, align 4
  %33 = ptrtoint ptr %data_avail to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %data_avail, align 4
  %34 = ptrtoint ptr %data_idx.i43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %data_idx.i43, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i40, ptr noundef %data.i42, i32 noundef 128) #7
  %35 = ptrtoint ptr %vq.i.i49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vq.i.i49, align 4
  %call.i.i50 = call i32 @virtqueue_add_inbuf(ptr noundef %36, ptr noundef nonnull %sg.i.i40, i32 noundef 1, ptr noundef %data.i42, i32 noundef 3264) #7
  %37 = ptrtoint ptr %vq.i.i49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vq.i.i49, align 4
  %call4.i.i51 = call zeroext i1 @virtqueue_kick(ptr noundef %38) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i40) #7
  br label %copy_data.exit53

copy_data.exit53:                                 ; preds = %if.then.i52, %if.end14.copy_data.exit53_crit_edge
  %sub16 = sub i32 %size.addr.155, %24
  %add17 = add i32 %24, %read.156
  %cmp.not = icmp eq i32 %sub16, 0
  br i1 %cmp.not, label %copy_data.exit53.cleanup_crit_edge, label %copy_data.exit53.while.body_crit_edge

copy_data.exit53.while.body_crit_edge:            ; preds = %copy_data.exit53
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

copy_data.exit53.cleanup_crit_edge:               ; preds = %copy_data.exit53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %copy_data.exit53.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %read.0, %if.end3.cleanup_crit_edge ], [ %read.0, %while.cond.preheader.cleanup_crit_edge ], [ %call7, %while.body.cleanup_crit_edge ], [ %read.156, %if.end10.cleanup_crit_edge ], [ %add17, %copy_data.exit53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @random_recv_done(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %vq1 = getelementptr inbounds %struct.virtrng_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vq1, align 4
  %data_avail = getelementptr inbounds %struct.virtrng_info, ptr %3, i32 0, i32 7
  %call = tail call ptr @virtqueue_get_buf(ptr noundef %5, ptr noundef %data_avail) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data_idx = getelementptr inbounds %struct.virtrng_info, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %data_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_idx, align 4
  %have_data = getelementptr inbounds %struct.virtrng_info, ptr %3, i32 0, i32 6
  tail call void @complete(ptr noundef %have_data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrng_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrng_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_virtio_rng__233_260_virtio_rng_driver_init6, !1, !"__initcall__kmod_virtio_rng__233_260_virtio_rng_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/hw_random/virtio-rng.c", i32 260, i32 1}
!2 = !{ptr @__exitcall_virtio_rng_driver_exit, !1, !"__exitcall_virtio_rng_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description234, !4, !"__UNIQUE_ID_description234", i1 false, i1 false}
!4 = !{!"../drivers/char/hw_random/virtio-rng.c", i32 262, i32 1}
!5 = !{ptr @__UNIQUE_ID_file235, !6, !"__UNIQUE_ID_file235", i1 false, i1 false}
!6 = !{!"../drivers/char/hw_random/virtio-rng.c", i32 263, i32 1}
!7 = !{ptr @__UNIQUE_ID_license236, !6, !"__UNIQUE_ID_license236", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/char/hw_random/virtio-rng.c", i32 248, i32 17}
!10 = !{ptr @virtio_rng_driver, !11, !"virtio_rng_driver", i1 false, i1 false}
!11 = !{!"../drivers/char/hw_random/virtio-rng.c", i32 247, i32 29}
!12 = !{ptr @id_table, !13, !"id_table", i1 false, i1 false}
!13 = !{!"../drivers/char/hw_random/virtio-rng.c", i32 242, i32 38}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/hw_random/virtio-rng.c", i32 143, i32 20}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/hw_random/virtio-rng.c", i32 156, i32 57}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/hw_random/virtio-rng.c", i32 16, i32 8}
!20 = !{ptr @rng_index_ida, !19, !"rng_index_ida", i1 false, i1 false}
!21 = !{ptr @init_completion.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../include/linux/completion.h", i32 87, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i8 0, i8 2}
!34 = !{!"auto-init"}
