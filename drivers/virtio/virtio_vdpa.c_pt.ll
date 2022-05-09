; ModuleID = '/llk/IR_all_yes/drivers/virtio/virtio_vdpa.c_pt.bc'
source_filename = "../drivers/virtio/virtio_vdpa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdpa_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_vdpa_device = type { %struct.virtio_device, ptr, i64, %struct.spinlock, %struct.list_head }
%struct.vdpa_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vdpa_callback = type { ptr, ptr }
%struct.vdpa_vq_state = type { %union.anon.99 }
%union.anon.99 = type { %struct.vdpa_vq_state_packed }
%struct.vdpa_vq_state_packed = type { i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_vdpa_vq_info = type { ptr, %struct.list_head }

@__initcall__kmod_virtio_vdpa__361_409_virtio_vdpa_driver_init6 = internal global ptr @virtio_vdpa_driver_init, section ".initcall6.init", align 4
@virtio_vdpa_driver = internal global { %struct.vdpa_driver, [44 x i8] } { %struct.vdpa_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @virtio_vdpa_probe, ptr @virtio_vdpa_remove }, [44 x i8] zeroinitializer }, align 32
@__exitcall_virtio_vdpa_driver_exit = internal global ptr @virtio_vdpa_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version362 = internal constant [24 x i8] c"virtio_vdpa.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"virtio_vdpa\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file363 = internal constant [44 x i8] c"virtio_vdpa.file=drivers/virtio/virtio_vdpa\00", section ".modinfo", align 1
@__UNIQUE_ID_license364 = internal constant [27 x i8] c"virtio_vdpa.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author365 = internal constant [52 x i8] c"virtio_vdpa.author=Jason Wang <jasowang@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description366 = internal constant [59 x i8] c"virtio_vdpa.description=vDPA bus driver for virtio devices\00", section ".modinfo", align 1
@virtio_vdpa_config_ops = internal constant { %struct.virtio_config_ops, [36 x i8] } { %struct.virtio_config_ops { ptr null, ptr @virtio_vdpa_get, ptr @virtio_vdpa_set, ptr @virtio_vdpa_generation, ptr @virtio_vdpa_get_status, ptr @virtio_vdpa_set_status, ptr @virtio_vdpa_reset, ptr @virtio_vdpa_find_vqs, ptr @virtio_vdpa_del_vqs, ptr @virtio_vdpa_get_features, ptr @virtio_vdpa_finalize_features, ptr @virtio_vdpa_bus_name, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@virtio_vdpa_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vd_dev->lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/virtio/virtio_vdpa.c\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"virtio_vdpa_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 401, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 411, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"virtio_vdpa_config_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 331, i32 39 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 370, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [32 x i8] c"../drivers/virtio/virtio_vdpa.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 232, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author365, ptr @__UNIQUE_ID_description366, ptr @__UNIQUE_ID_file363, ptr @__UNIQUE_ID_license364, ptr @__UNIQUE_ID_version362, ptr @__exitcall_virtio_vdpa_driver_exit, ptr @__initcall__kmod_virtio_vdpa__361_409_virtio_vdpa_driver_init6, ptr @__modver_attr, ptr @virtio_vdpa_driver_exit, ptr @virtio_vdpa_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @virtio_vdpa_config_ops, ptr @virtio_vdpa_probe.__key, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vdpa_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vdpa_config_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vdpa_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_vdpa_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__vdpa_register_driver(ptr noundef nonnull @virtio_vdpa_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vdpa_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vdpa_unregister_driver(ptr noundef nonnull @virtio_vdpa_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vdpa_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_vdpa_probe(ptr noundef %vdpa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.vdpa_device, ptr %vdpa, i32 0, i32 3
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1136) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_dev.i = getelementptr inbounds %struct.vdpa_device, ptr %vdpa, i32 0, i32 1
  %3 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_dev.i, align 8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 6
  %parent = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %parent, align 8
  %release = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 6, i32 35
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @virtio_vdpa_release_dev, ptr %release, align 4
  %config5 = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %config5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @virtio_vdpa_config_ops, ptr %config5, align 8
  %vdpa6 = getelementptr inbounds %struct.virtio_vdpa_device, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %vdpa6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vdpa, ptr %vdpa6, align 8
  %virtqueues = getelementptr inbounds %struct.virtio_vdpa_device, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %virtqueues to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %virtqueues, ptr %virtqueues, align 4
  %prev.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %virtqueues, ptr %prev.i, align 8
  %lock = getelementptr inbounds %struct.virtio_vdpa_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @virtio_vdpa_probe.__key, i16 noundef signext 3) #6
  %get_device_id = getelementptr inbounds %struct.vdpa_config_ops, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %get_device_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_device_id, align 4
  %call8 = tail call i32 %12(ptr noundef %vdpa) #6
  %id = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call8, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.else, label %if.end14

if.end14:                                         ; preds = %if.end
  %get_vendor_id = getelementptr inbounds %struct.vdpa_config_ops, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %get_vendor_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_vendor_id, align 4
  %call15 = tail call i32 %15(ptr noundef %vdpa) #6
  %vendor = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call15, ptr %vendor, align 4
  %call19 = tail call i32 @register_virtio_device(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then24

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %vdpa, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef %dev) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then24, %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.else ], [ %call19, %if.then24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vdpa_remove(ptr nocapture noundef readonly %vdpa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %vdpa, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_virtio_device(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vdpa_release_dev(ptr noundef %_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_d, i32 -96
  tail call void @kfree(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vdpa_get(ptr nocapture noundef readonly %vdev, i32 noundef %offset, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa.i, align 8
  tail call void @vdpa_get_config(ptr noundef %1, i32 noundef %offset, ptr noundef %buf, i32 noundef %len) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vdpa_set(ptr nocapture noundef readonly %vdev, i32 noundef %offset, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa.i, align 8
  tail call void @vdpa_set_config(ptr noundef %1, i32 noundef %offset, ptr noundef %buf, i32 noundef %len) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_vdpa_generation(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa.i, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %get_generation = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %get_generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_generation, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 %5(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @virtio_vdpa_get_status(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa.i, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %get_status = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_status, align 4
  %call1 = tail call zeroext i8 %5(ptr noundef %1) #6
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vdpa_set_status(ptr nocapture noundef readonly %vdev, i8 noundef zeroext %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa.i, align 8
  tail call void @vdpa_set_status(ptr noundef %1, i8 noundef zeroext %status) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vdpa_reset(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa.i, align 8
  %config.i = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 8
  %cf_mutex.i = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cf_mutex.i, i32 noundef 0) #6
  %features_valid.i = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %features_valid.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %features_valid.i, align 4
  %reset.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 21
  %5 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset.i, align 4
  %call.i = tail call i32 %6(ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %cf_mutex.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_vdpa_find_vqs(ptr noundef %vdev, i32 noundef %nvqs, ptr nocapture noundef %vqs, ptr nocapture noundef readonly %callbacks, ptr nocapture noundef readonly %names, ptr noundef readonly %ctx, ptr nocapture noundef readnone %desc) #2 align 64 {
entry:
  %cb.i = alloca %struct.vdpa_callback, align 4
  %state.i = alloca %struct.vdpa_vq_state, align 4
  %cb = alloca %struct.vdpa_callback, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa.i, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb) #6
  %4 = getelementptr inbounds %struct.vdpa_callback, ptr %cb, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvqs)
  %cmp48.not = icmp eq i32 %nvqs, 0
  br i1 %cmp48.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool5.not = icmp eq ptr %ctx, null
  %5 = getelementptr inbounds %struct.vdpa_callback, ptr %cb.i, i32 0, i32 1
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %lock.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 3
  %virtqueues.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %queue_idx.051 = phi i32 [ 0, %for.body.lr.ph ], [ %queue_idx.1, %for.inc.for.body_crit_edge ]
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %names, i32 %i.049
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2 = getelementptr ptr, ptr %vqs, i32 %i.049
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx2, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %inc = add i32 %queue_idx.051, 1
  %arrayidx3 = getelementptr ptr, ptr %callbacks, i32 %i.049
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  br i1 %tobool5.not, label %if.end.if.end.i_crit_edge, label %cond.true

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6 = getelementptr i8, ptr %ctx, i32 %i.049
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 1, !range !34
  %13 = zext i8 %12 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %cond.true, %if.end.if.end.i_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ 0, %if.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool8 = icmp ne i32 %cond, 0
  %14 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdpa.i, align 8
  %config.i = getelementptr inbounds %struct.vdpa_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cb.i) #6
  %18 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %cb.i, align 4, !annotation !35
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #6
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65535, ptr %state.i, align 4
  %nvqs.i = getelementptr inbounds %struct.vdpa_device, ptr %15, i32 0, i32 8
  %21 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nvqs.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %queue_idx.051)
  %cmp.not.i = icmp ugt i32 %22, %queue_idx.051
  br i1 %cmp.not.i, label %if.end4.i, label %if.end.i.virtio_vdpa_setup_vq.exit.thread_crit_edge

if.end.i.virtio_vdpa_setup_vq.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %virtio_vdpa_setup_vq.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %get_vq_ready.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %17, i32 0, i32 5
  %23 = ptrtoint ptr %get_vq_ready.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_vq_ready.i, align 4
  %conv.i = trunc i32 %queue_idx.051 to i16
  %call5.i = call zeroext i1 %24(ptr noundef %15, i16 noundef zeroext %conv.i) #6
  br i1 %call5.i, label %if.end4.i.virtio_vdpa_setup_vq.exit.thread_crit_edge, label %if.end8.i

if.end4.i.virtio_vdpa_setup_vq.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %virtio_vdpa_setup_vq.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 12) #9
  %tobool10.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i, label %if.end8.i.virtio_vdpa_setup_vq.exit.thread_crit_edge, label %if.end13.i

if.end8.i.virtio_vdpa_setup_vq.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %virtio_vdpa_setup_vq.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  %get_vq_num_max.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %17, i32 0, i32 15
  %26 = ptrtoint ptr %get_vq_num_max.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_vq_num_max.i, align 4
  %call14.i = call zeroext i16 %27(ptr noundef %15) #6
  %conv15.i = zext i16 %call14.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call14.i)
  %cmp16.i = icmp eq i16 %call14.i, 0
  br i1 %cmp16.i, label %if.end13.i.error_new_virtqueue.i_crit_edge, label %if.end19.i

if.end13.i.error_new_virtqueue.i_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_new_virtqueue.i

if.end19.i:                                       ; preds = %if.end13.i
  %get_vq_num_min.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %17, i32 0, i32 16
  %28 = ptrtoint ptr %get_vq_num_min.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_vq_num_min.i, align 4
  %tobool20.not.i = icmp eq ptr %29, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end25.i_crit_edge, label %if.then21.i

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i = call zeroext i16 %29(ptr noundef %15) #6
  %conv24.i = zext i16 %call23.i to i32
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end25.i_crit_edge
  %min_num.0.i = phi i32 [ %conv24.i, %if.then21.i ], [ 1, %if.end19.i.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %min_num.0.i, i32 %conv15.i)
  %cmp26.i = icmp ne i32 %min_num.0.i, %conv15.i
  %get_vq_align.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %17, i32 0, i32 10
  %30 = ptrtoint ptr %get_vq_align.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_vq_align.i, align 4
  %call30.i = call i32 %31(ptr noundef %15) #6
  %call33.i = call ptr @vring_create_virtqueue(i32 noundef %queue_idx.051, i32 noundef %conv15.i, i32 noundef %call30.i, ptr noundef %vdev, i1 noundef zeroext true, i1 noundef zeroext %cmp26.i, i1 noundef zeroext %tobool8, ptr noundef nonnull @virtio_vdpa_notify, ptr noundef %10, ptr noundef nonnull %7) #6
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %if.end25.i.error_new_virtqueue.i_crit_edge, label %if.end36.i

if.end25.i.error_new_virtqueue.i_crit_edge:       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_new_virtqueue.i

if.end36.i:                                       ; preds = %if.end25.i
  %32 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @virtio_vdpa_virtqueue_cb, ptr %cb.i, align 4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %5, align 4
  %set_vq_cb.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %17, i32 0, i32 3
  %34 = ptrtoint ptr %set_vq_cb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_vq_cb.i, align 4
  call void %35(ptr noundef %15, i16 noundef zeroext %conv.i, ptr noundef nonnull %cb.i) #6
  %set_vq_num.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %17, i32 0, i32 1
  %36 = ptrtoint ptr %set_vq_num.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_vq_num.i, align 4
  %call40.i = call i32 @virtqueue_get_vring_size(ptr noundef nonnull %call33.i) #6
  call void %37(ptr noundef %15, i16 noundef zeroext %conv.i, i32 noundef %call40.i) #6
  %call41.i = call i32 @virtqueue_get_desc_addr(ptr noundef nonnull %call33.i) #6
  %conv42.i = zext i32 %call41.i to i64
  %call43.i = call i32 @virtqueue_get_avail_addr(ptr noundef nonnull %call33.i) #6
  %conv44.i = zext i32 %call43.i to i64
  %call45.i = call i32 @virtqueue_get_used_addr(ptr noundef nonnull %call33.i) #6
  %conv46.i = zext i32 %call45.i to i64
  %38 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %17, align 4
  %call48.i = call i32 %39(ptr noundef %15, i16 noundef zeroext %conv.i, i64 noundef %conv42.i, i64 noundef %conv44.i, i64 noundef %conv46.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end36.i.err_vq.i_crit_edge

if.end36.i.err_vq.i_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_vq.i

if.end51.i:                                       ; preds = %if.end36.i
  %40 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %41, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool13.i.i.not.i, label %if.end51.i.if.end63.i_crit_edge, label %if.then53.i

if.end51.i.if.end63.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

if.then53.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -2147450880, ptr %state.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then53.i, %if.end51.i.if.end63.i_crit_edge
  %set_vq_state.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %17, i32 0, i32 6
  %43 = ptrtoint ptr %set_vq_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_vq_state.i, align 4
  %call65.i = call i32 %44(ptr noundef %15, i16 noundef zeroext %conv.i, ptr noundef nonnull %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end63.i.err_vq.i_crit_edge

if.end63.i.err_vq.i_crit_edge:                    ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_vq.i

if.end68.i:                                       ; preds = %if.end63.i
  %set_vq_ready.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %17, i32 0, i32 4
  %45 = ptrtoint ptr %set_vq_ready.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_vq_ready.i, align 4
  call void %46(ptr noundef %15, i16 noundef zeroext %conv.i, i1 noundef zeroext true) #6
  %priv.i = getelementptr inbounds %struct.virtqueue, ptr %call33.i, i32 0, i32 6
  %47 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %priv.i, align 4
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call33.i, ptr %call7.i.i, align 8
  %call75.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %node.i = getelementptr inbounds %struct.virtio_vdpa_vq_info, ptr %call7.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %virtqueues.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %virtqueues.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %virtqueues.i, ptr noundef %50) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end68.i.list_add.exit.i_crit_edge

if.end68.i.list_add.exit.i_crit_edge:             ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %52 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virtio_vdpa_vq_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %virtqueues.i, ptr %prev3.i.i.i, align 8
  %54 = ptrtoint ptr %virtqueues.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %node.i, ptr %virtqueues.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end68.i.list_add.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call75.i) #6
  br label %virtio_vdpa_setup_vq.exit

err_vq.i:                                         ; preds = %if.end63.i.err_vq.i_crit_edge, %if.end36.i.err_vq.i_crit_edge
  %err.0.i = phi i32 [ %call65.i, %if.end63.i.err_vq.i_crit_edge ], [ -22, %if.end36.i.err_vq.i_crit_edge ]
  call void @vring_del_virtqueue(ptr noundef nonnull %call33.i) #6
  br label %error_new_virtqueue.i

error_new_virtqueue.i:                            ; preds = %err_vq.i, %if.end25.i.error_new_virtqueue.i_crit_edge, %if.end13.i.error_new_virtqueue.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %err_vq.i ], [ -2, %if.end13.i.error_new_virtqueue.i_crit_edge ], [ -12, %if.end25.i.error_new_virtqueue.i_crit_edge ]
  %set_vq_ready79.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %17, i32 0, i32 4
  %55 = ptrtoint ptr %set_vq_ready79.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_vq_ready79.i, align 4
  call void %56(ptr noundef %15, i16 noundef zeroext %conv.i, i1 noundef zeroext false) #6
  %57 = ptrtoint ptr %get_vq_ready.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %get_vq_ready.i, align 4
  %call83.i = call zeroext i1 %58(ptr noundef %15, i16 noundef zeroext %conv.i) #6
  br i1 %call83.i, label %do.end95.i, label %error_new_virtqueue.i.if.end101.i_crit_edge, !prof !36

error_new_virtqueue.i.if.end101.i_crit_edge:      ; preds = %error_new_virtqueue.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101.i

do.end95.i:                                       ; preds = %error_new_virtqueue.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 232, i32 noundef 9, ptr noundef null) #6
  br label %if.end101.i

if.end101.i:                                      ; preds = %do.end95.i, %error_new_virtqueue.i.if.end101.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %59 = inttoptr i32 %err.1.i to ptr
  br label %virtio_vdpa_setup_vq.exit

virtio_vdpa_setup_vq.exit.thread:                 ; preds = %if.end8.i.virtio_vdpa_setup_vq.exit.thread_crit_edge, %if.end4.i.virtio_vdpa_setup_vq.exit.thread_crit_edge, %if.end.i.virtio_vdpa_setup_vq.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end8.i.virtio_vdpa_setup_vq.exit.thread_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end4.i.virtio_vdpa_setup_vq.exit.thread_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.i.virtio_vdpa_setup_vq.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb.i) #6
  %arrayidx1043 = getelementptr ptr, ptr %vqs, i32 %i.049
  %60 = ptrtoint ptr %arrayidx1043 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %retval.0.i.ph, ptr %arrayidx1043, align 4
  br label %if.then13

virtio_vdpa_setup_vq.exit:                        ; preds = %if.end101.i, %list_add.exit.i
  %retval.0.i = phi ptr [ %59, %if.end101.i ], [ %call33.i, %list_add.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb.i) #6
  %arrayidx10 = getelementptr ptr, ptr %vqs, i32 %i.049
  %61 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %retval.0.i, ptr %arrayidx10, align 4
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %virtio_vdpa_setup_vq.exit.if.then13_crit_edge, label %virtio_vdpa_setup_vq.exit.for.inc_crit_edge

virtio_vdpa_setup_vq.exit.for.inc_crit_edge:      ; preds = %virtio_vdpa_setup_vq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

virtio_vdpa_setup_vq.exit.if.then13_crit_edge:    ; preds = %virtio_vdpa_setup_vq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then13:                                        ; preds = %virtio_vdpa_setup_vq.exit.if.then13_crit_edge, %virtio_vdpa_setup_vq.exit.thread
  %retval.0.i45 = phi ptr [ %retval.0.i.ph, %virtio_vdpa_setup_vq.exit.thread ], [ %retval.0.i, %virtio_vdpa_setup_vq.exit.if.then13_crit_edge ]
  %62 = ptrtoint ptr %retval.0.i45 to i32
  call void @virtio_vdpa_del_vqs(ptr noundef %vdev)
  br label %cleanup

for.inc:                                          ; preds = %virtio_vdpa_setup_vq.exit.for.inc_crit_edge, %if.then
  %queue_idx.1 = phi i32 [ %inc, %virtio_vdpa_setup_vq.exit.for.inc_crit_edge ], [ %queue_idx.051, %if.then ]
  %inc17 = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc17, %nvqs
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %63 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @virtio_vdpa_config_cb, ptr %cb, align 4
  %64 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %vdev, ptr %4, align 4
  %set_config_cb = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 14
  %65 = ptrtoint ptr %set_config_cb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_config_cb, align 4
  call void %66(ptr noundef %1, ptr noundef nonnull %cb) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then13
  %retval.0 = phi i32 [ %62, %if.then13 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vdpa_del_vqs(ptr noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 10
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %cmp.not16 = icmp eq ptr %1, %vqs
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %virtio_vdpa_del_vq.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %vq.017 = phi ptr [ %n.0, %virtio_vdpa_del_vq.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %vq.017 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %vq.017, align 4
  %vdev.i = getelementptr inbounds %struct.virtqueue, ptr %vq.017, i32 0, i32 3
  %3 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev.i, align 4
  %vdpa1.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %vdpa1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdpa1.i, align 8
  %config.i = getelementptr inbounds %struct.vdpa_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 8
  %priv.i = getelementptr inbounds %struct.virtqueue, ptr %vq.017, i32 0, i32 6
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 4
  %index2.i = getelementptr inbounds %struct.virtqueue, ptr %vq.017, i32 0, i32 4
  %11 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index2.i, align 4
  %lock.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %4, i32 0, i32 3
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %node.i = getelementptr inbounds %struct.virtio_vdpa_vq_info, ptr %10, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.virtio_vdpa_del_vq.exit_crit_edge

for.body.virtio_vdpa_del_vq.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %virtio_vdpa_del_vq.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.virtio_vdpa_vq_info, ptr %10, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %virtio_vdpa_del_vq.exit

virtio_vdpa_del_vq.exit:                          ; preds = %if.end.i.i.i, %for.body.virtio_vdpa_del_vq.exit_crit_edge
  %19 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.virtio_vdpa_vq_info, ptr %10, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #6
  %set_vq_ready.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %8, i32 0, i32 4
  %21 = ptrtoint ptr %set_vq_ready.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_vq_ready.i, align 4
  %conv9.i = trunc i32 %12 to i16
  tail call void %22(ptr noundef %6, i16 noundef zeroext %conv9.i, i1 noundef zeroext false) #6
  tail call void @vring_del_virtqueue(ptr noundef %vq.017) #6
  tail call void @kfree(ptr noundef %10) #6
  %cmp.not = icmp eq ptr %n.0, %vqs
  br i1 %cmp.not, label %virtio_vdpa_del_vq.exit.for.end_crit_edge, label %virtio_vdpa_del_vq.exit.for.body_crit_edge

virtio_vdpa_del_vq.exit.for.body_crit_edge:       ; preds = %virtio_vdpa_del_vq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

virtio_vdpa_del_vq.exit.for.end_crit_edge:        ; preds = %virtio_vdpa_del_vq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %virtio_vdpa_del_vq.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @virtio_vdpa_get_features(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa.i, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %get_device_features = getelementptr inbounds %struct.vdpa_config_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %get_device_features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_device_features, align 4
  %call1 = tail call i64 %5(ptr noundef %1) #6
  ret i64 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_vdpa_finalize_features(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa.i, align 8
  tail call void @vring_transport_features(ptr noundef %vdev) #6
  %features = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 8
  %cf_mutex.i = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %cf_mutex.i, i32 noundef 0) #6
  %config.i.i = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i.i, align 8
  %features_valid.i.i = getelementptr inbounds %struct.vdpa_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %features_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %features_valid.i.i, align 4
  %set_driver_features.i.i = getelementptr inbounds %struct.vdpa_config_ops, ptr %5, i32 0, i32 12
  %7 = ptrtoint ptr %set_driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_driver_features.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %1, i64 noundef %3) #6
  tail call void @mutex_unlock(ptr noundef %cf_mutex.i) #6
  ret i32 %call.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @virtio_vdpa_bus_name(ptr nocapture noundef readonly %vdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdpa1 = getelementptr inbounds %struct.virtio_vdpa_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %vdpa1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdpa1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_get_config(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_set_config(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_set_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_vdpa_config_cb(ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @virtio_config_changed(ptr noundef %private) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vring_create_virtqueue(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @virtio_vdpa_notify(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %vdpa.i = getelementptr inbounds %struct.virtio_vdpa_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdpa.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdpa.i, align 8
  %config = getelementptr inbounds %struct.vdpa_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 8
  %kick_vq = getelementptr inbounds %struct.vdpa_config_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %kick_vq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kick_vq, align 4
  %index = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 4
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %conv = trunc i32 %9 to i16
  tail call void %7(ptr noundef %3, i16 noundef zeroext %conv) #6
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_vdpa_virtqueue_cb(ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @vring_interrupt(i32 noundef 0, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_desc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_avail_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_used_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_del_virtqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vring_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_config_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_transport_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !16, !18, !20, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_virtio_vdpa__361_409_virtio_vdpa_driver_init6, !1, !"__initcall__kmod_virtio_vdpa__361_409_virtio_vdpa_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/virtio/virtio_vdpa.c", i32 409, i32 1}
!2 = !{ptr @__exitcall_virtio_vdpa_driver_exit, !1, !"__exitcall_virtio_vdpa_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_version362, !4, !"__UNIQUE_ID_version362", i1 false, i1 false}
!4 = !{!"../drivers/virtio/virtio_vdpa.c", i32 411, i32 1}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__modver_attr, !4, !"__modver_attr", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_file363, !10, !"__UNIQUE_ID_file363", i1 false, i1 false}
!10 = !{!"../drivers/virtio/virtio_vdpa.c", i32 412, i32 1}
!11 = !{ptr @__UNIQUE_ID_license364, !10, !"__UNIQUE_ID_license364", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author365, !13, !"__UNIQUE_ID_author365", i1 false, i1 false}
!13 = !{!"../drivers/virtio/virtio_vdpa.c", i32 413, i32 1}
!14 = !{ptr @__UNIQUE_ID_description366, !15, !"__UNIQUE_ID_description366", i1 false, i1 false}
!15 = !{!"../drivers/virtio/virtio_vdpa.c", i32 414, i32 1}
!16 = !{ptr @virtio_vdpa_driver, !17, !"virtio_vdpa_driver", i1 false, i1 false}
!17 = !{!"../drivers/virtio/virtio_vdpa.c", i32 401, i32 27}
!18 = !{ptr @virtio_vdpa_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/virtio/virtio_vdpa.c", i32 370, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @virtio_vdpa_config_ops, !22, !"virtio_vdpa_config_ops", i1 false, i1 false}
!22 = !{!"../drivers/virtio/virtio_vdpa.c", i32 331, i32 39}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/virtio/virtio_vdpa.c", i32 232, i32 2}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i8 0, i8 2}
!35 = !{!"auto-init"}
!36 = !{!"branch_weights", i32 1, i32 2000}
