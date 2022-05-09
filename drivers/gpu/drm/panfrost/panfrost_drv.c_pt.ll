; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panfrost/panfrost_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panfrost_compatible = type { i32, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.101, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.anon.101 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.88 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.panfrost_file_priv = type { ptr, [3 x %struct.drm_sched_entity], ptr }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.drm_panfrost_submit = type { i64, i64, i32, i32, i64, i32, i32 }
%struct.panfrost_job = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, i64, i32, i32, ptr, ptr, i32, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.91, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.91 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.panfrost_gem_object = type { %struct.drm_gem_shmem_object, ptr, %struct.anon.100, %struct.atomic_t, i8 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.100 = type { %struct.list_head, %struct.mutex }
%struct.drm_panfrost_wait_bo = type { i32, i32, i64 }
%struct.drm_panfrost_create_bo = type { i32, i32, i32, i32, i64 }
%struct.panfrost_gem_mapping = type { %struct.list_head, %struct.kref, ptr, %struct.drm_mm_node, ptr, i8 }
%struct.drm_panfrost_mmap_bo = type { i32, i32, i64 }
%struct.drm_panfrost_get_param = type { i32, i32, i64 }
%struct.drm_panfrost_get_bo_offset = type { i32, i32, i64 }
%struct.drm_panfrost_madvise = type { i32, i32, i32 }

@__param_str_unstable_ioctls = internal constant [25 x i8] c"panfrost.unstable_ioctls\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@unstable_ioctls = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_unstable_ioctls = internal constant %struct.kernel_param { ptr @__param_str_unstable_ioctls, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 1, %union.anon.76 { ptr @unstable_ioctls } }, section "__param", align 4
@__UNIQUE_ID_unstable_ioctlstype304 = internal constant [39 x i8] c"panfrost.parmtype=unstable_ioctls:bool\00", section ".modinfo", align 1
@__initcall__kmod_panfrost__305_685_panfrost_driver_init6 = internal global ptr @panfrost_driver_init, section ".initcall6.init", align 4
@panfrost_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @panfrost_probe, ptr @panfrost_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panfrost_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_panfrost_driver_exit = internal global ptr @panfrost_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [44 x i8] c"panfrost.author=Panfrost Project Developers\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [41 x i8] c"panfrost.description=Panfrost DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [48 x i8] c"panfrost.file=drivers/gpu/drm/panfrost/panfrost\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [24 x i8] c"panfrost.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"panfrost\00", [23 x i8] zeroinitializer }, align 32
@dt_match = internal constant { [14 x %struct.of_device_id], [680 x i8] } { [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxm-mali\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @amlogic_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-mali\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @amlogic_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t604\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t624\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t628\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t760\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t820\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t830\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t860\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-bifrost\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-mali\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mediatek_mt8183_data }, %struct.of_device_id zeroinitializer], [680 x i8] zeroinitializer }, align 32
@panfrost_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panfrost_device_suspend, ptr @panfrost_device_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@panfrost_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @panfrost_open, ptr @panfrost_postclose, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panfrost_gem_create_object, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @panfrost_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr null, ptr null, ptr null, i32 1, i32 2, i32 0, ptr @.str, ptr @.str.7, ptr @.str.8, i32 41, ptr @panfrost_drm_driver_ioctls, i32 9, ptr @panfrost_drm_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@panfrost_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&pfdev->shrinker_lock\00", [42 x i8] zeroinitializer }, align 32
@panfrost_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 579, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fatal error during GPU init\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"panfrost_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/panfrost/panfrost_drv.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@panfrost_probe._entry_ptr = internal global ptr @panfrost_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panfrost DRM\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20180908\00", [23 x i8] zeroinitializer }, align 32
@panfrost_drm_driver_ioctls = internal constant { [9 x %struct.drm_ioctl_desc], [48 x i8] } { [9 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 1076388928, i32 32, ptr @panfrost_ioctl_submit, ptr @.str.9 }, %struct.drm_ioctl_desc { i32 1074816065, i32 32, ptr @panfrost_ioctl_wait_bo, ptr @.str.10 }, %struct.drm_ioctl_desc { i32 -1072143294, i32 32, ptr @panfrost_ioctl_create_bo, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 -1072667581, i32 32, ptr @panfrost_ioctl_mmap_bo, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 -1072667580, i32 32, ptr @panfrost_ioctl_get_param, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 -1072667579, i32 32, ptr @panfrost_ioctl_get_bo_offset, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 1074291782, i32 32, ptr @panfrost_ioctl_perfcnt_enable, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 1074291783, i32 32, ptr @panfrost_ioctl_perfcnt_dump, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 -1072929720, i32 32, ptr @panfrost_ioctl_madvise, ptr @.str.17 }], [48 x i8] zeroinitializer }, align 32
@panfrost_drm_driver_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PANFROST_SUBMIT\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PANFROST_WAIT_BO\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PANFROST_CREATE_BO\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PANFROST_MMAP_BO\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PANFROST_GET_PARAM\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PANFROST_GET_BO_OFFSET\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PANFROST_PERFCNT_ENABLE\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PANFROST_PERFCNT_DUMP\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PANFROST_MADVISE\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to allocate incoming syncobj handles\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to copy in syncobj handles\0A\00", [61 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@panfrost_ioctl_mmap_bo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] unknown mmap_bo flags: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panfrost_ioctl_mmap_bo\00", [41 x i8] zeroinitializer }, align 32
@panfrost_ioctl_mmap_bo._entry_ptr = internal global ptr @panfrost_ioctl_mmap_bo._entry, section ".printk_index", align 4
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to look up GEM BO %d\0A\00", [35 x i8] zeroinitializer }, align 32
@panfrost_ioctl_madvise.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amlogic_data = internal constant { %struct.panfrost_compatible, [44 x i8] } { %struct.panfrost_compatible { i32 1, ptr @default_supplies, i32 0, ptr null, ptr @panfrost_gpu_amlogic_quirk }, [44 x i8] zeroinitializer }, align 32
@default_data = internal constant { %struct.panfrost_compatible, [44 x i8] } { %struct.panfrost_compatible { i32 1, ptr @default_supplies, i32 1, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mediatek_mt8183_data = internal constant { %struct.panfrost_compatible, [44 x i8] } { %struct.panfrost_compatible { i32 2, ptr @mediatek_mt8183_supplies, i32 3, ptr @mediatek_mt8183_pm_domains, ptr null }, [44 x i8] zeroinitializer }, align 32
@default_supplies = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mali\00", [27 x i8] zeroinitializer }, align 32
@mediatek_mt8183_supplies = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@mediatek_mt8183_pm_domains = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30], [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"core0\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"core1\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"core2\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.31 = internal global [43 x i64] [i64 41, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"unstable_ioctls\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 23, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"panfrost_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 676, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 680, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [9 x i8] c"dt_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 650, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"panfrost_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 671, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"panfrost_drm_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 524, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 573, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 579, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 532, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 533, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"panfrost_drm_driver_ioctls\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 501, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant [25 x i8] c"panfrost_drm_driver_fops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 516, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 505, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 506, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 507, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 508, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 509, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 510, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 511, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 512, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 513, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 201, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 209, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 230, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 214, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 156, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 336, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 342, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [13 x i8] c"amlogic_data\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 635, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant [13 x i8] c"default_data\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 628, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"mediatek_mt8183_data\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 643, i32 41 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"default_supplies\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 627, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 627, i32 50 }
@___asan_gen_.156 = private unnamed_addr constant [25 x i8] c"mediatek_mt8183_supplies\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 641, i32 27 }
@___asan_gen_.159 = private unnamed_addr constant [27 x i8] c"mediatek_mt8183_pm_domains\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 642, i32 27 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 641, i32 66 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 642, i32 60 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 642, i32 69 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [43 x i8] c"../drivers/gpu/drm/panfrost/panfrost_drv.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 642, i32 78 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__UNIQUE_ID_unstable_ioctlstype304, ptr @__exitcall_panfrost_driver_exit, ptr @__initcall__kmod_panfrost__305_685_panfrost_driver_init6, ptr @__param_unstable_ioctls, ptr @panfrost_driver_exit, ptr @panfrost_ioctl_mmap_bo._entry, ptr @panfrost_ioctl_mmap_bo._entry_ptr, ptr @panfrost_probe._entry, ptr @panfrost_probe._entry_ptr, ptr @unstable_ioctls, ptr @panfrost_driver, ptr @.str, ptr @dt_match, ptr @panfrost_pm_ops, ptr @panfrost_drm_driver, ptr @panfrost_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @panfrost_drm_driver_ioctls, ptr @panfrost_drm_driver_fops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @amlogic_data, ptr @default_data, ptr @mediatek_mt8183_data, ptr @default_supplies, ptr @.str.26, ptr @mediatek_mt8183_supplies, ptr @mediatek_mt8183_pm_domains, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unstable_ioctls to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_match to i32), i32 2744, i32 3424, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_drm_driver_ioctls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_drm_driver_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_ioctl_mmap_bo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_mt8183_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_supplies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_mt8183_supplies to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mediatek_mt8183_pm_domains to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @panfrost_unstable_ioctl_check() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @unstable_ioctls, align 1, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %. = select i1 %tobool.not, i32 -38, i32 0
  ret i32 %.
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @panfrost_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @panfrost_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @panfrost_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 752, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.panfrost_device, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev1, align 8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #13
  %comp = getelementptr inbounds %struct.panfrost_device, ptr %call.i, i32 0, i32 12
  %3 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %comp, align 8
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @device_get_dma_attr(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call11)
  %cmp = icmp eq i32 %call11, 2
  %coherent = getelementptr inbounds %struct.panfrost_device, ptr %call.i, i32 0, i32 10
  %frombool = zext i1 %cmp to i8
  %4 = ptrtoint ptr %coherent to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %coherent, align 8
  %call13 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @panfrost_drm_driver, ptr noundef %dev) #13
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call13, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %dev_private, align 4
  %ddev18 = getelementptr inbounds %struct.panfrost_device, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ddev18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %ddev18, align 4
  %shrinker_lock = getelementptr inbounds %struct.panfrost_device, ptr %call.i, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %shrinker_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @panfrost_probe.__key) #13
  %shrinker_list = getelementptr inbounds %struct.panfrost_device, ptr %call.i, i32 0, i32 25
  %8 = ptrtoint ptr %shrinker_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %shrinker_list, ptr %shrinker_list, align 4
  %prev.i = getelementptr inbounds %struct.panfrost_device, ptr %call.i, i32 0, i32 25, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %shrinker_list, ptr %prev.i, align 4
  %call19 = tail call i32 @panfrost_device_init(ptr noundef nonnull %call.i) #13
  %10 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call19, label %do.end26 [
    i32 0, label %if.end29
    i32 -517, label %if.end17.err_out0_crit_edge
  ]

if.end17.err_out0_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out0

do.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #16
  br label %err_out0

if.end29:                                         ; preds = %if.end17
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 8
  %call.i80 = tail call i32 @__pm_runtime_set_status(ptr noundef %12, i32 noundef 0) #13
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 8
  %call.i81 = tail call i64 @ktime_get_mono_fast_ns() #13
  %last_busy.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i81, ptr %last_busy.i, align 8
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %17) #13
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %19, i32 noundef 50) #13
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %21, i1 noundef zeroext true) #13
  %call36 = tail call i32 @drm_dev_register(ptr noundef %call13, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %err_out1, label %if.end39

if.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @panfrost_gem_shrinker_init(ptr noundef %call13) #13
  br label %cleanup

err_out1:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 8
  tail call void @__pm_runtime_disable(ptr noundef %23, i1 noundef zeroext true) #13
  tail call void @panfrost_device_fini(ptr noundef nonnull %call.i) #13
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 8
  %call.i82 = tail call i32 @__pm_runtime_set_status(ptr noundef %25, i32 noundef 2) #13
  br label %err_out0

err_out0:                                         ; preds = %err_out1, %do.end26, %if.end17.err_out0_crit_edge
  %err.0 = phi i32 [ %call19, %do.end26 ], [ %call36, %err_out1 ], [ %call19, %if.end17.err_out0_crit_edge ]
  tail call void @drm_dev_put(ptr noundef %call13) #13
  br label %cleanup

cleanup:                                          ; preds = %err_out0, %if.end39, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then15 ], [ %err.0, %err_out0 ], [ 0, %if.end39 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ddev1 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ddev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev1, align 4
  tail call void @drm_dev_unregister(ptr noundef %3) #13
  tail call void @panfrost_gem_shrinker_cleanup(ptr noundef %3) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #13
  tail call void @panfrost_device_fini(ptr noundef %1) #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call.i12 = tail call i32 @__pm_runtime_set_status(ptr noundef %9, i32 noundef 2) #13
  tail call void @drm_dev_put(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_dma_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_shrinker_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_device_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_open(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 568) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %call7.i.i, align 8
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %4 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  %call2 = tail call ptr @panfrost_mmu_ctx_create(ptr noundef %1) #13
  %mmu = getelementptr inbounds %struct.panfrost_file_priv, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %mmu to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %mmu, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %call2 to i32
  br label %err_free

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @panfrost_job_open(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %err_job

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_job:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmu, align 8
  tail call void @panfrost_mmu_ctx_put(ptr noundef %8) #13
  br label %err_free

err_free:                                         ; preds = %err_job, %if.then5
  %ret.0 = phi i32 [ %6, %if.then5 ], [ %call9, %err_job ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @panfrost_postclose(ptr nocapture noundef readnone %dev, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  tail call void @panfrost_perfcnt_close(ptr noundef %file) #13
  tail call void @panfrost_job_close(ptr noundef %1) #13
  %mmu = getelementptr inbounds %struct.panfrost_file_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu, align 8
  tail call void @panfrost_mmu_ctx_put(ptr noundef %3) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_gem_create_object(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_mmu_ctx_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_job_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_ctx_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_perfcnt_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_job_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_submit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %file) #3 align 64 {
entry:
  %fence.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %requirements = getelementptr inbounds %struct.drm_panfrost_submit, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %requirements to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %requirements, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  br i1 %switch, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %out_sync = getelementptr inbounds %struct.drm_panfrost_submit, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %out_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.not = icmp eq i32 %7, 0
  br i1 %cmp5.not, label %if.end4.if.end11_crit_edge, label %if.then6

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  %call = tail call ptr @drm_syncobj_find(ptr noundef %file, i32 noundef %7) #13
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %sync_out.0 = phi ptr [ %call, %if.then6.if.end11_crit_edge ], [ null, %if.end4.if.end11_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 176) #17
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.out_put_syncout_crit_edge, label %if.end15

if.end11.out_put_syncout_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_syncout

if.end15:                                         ; preds = %if.end11
  %refcount = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  %9 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %refcount, align 8
  %pfdev16 = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %pfdev16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %pfdev16, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %data, align 8
  %jc18 = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %jc18 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %jc18, align 8
  %14 = ptrtoint ptr %requirements to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %requirements, align 4
  %requirements20 = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %requirements20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %requirements20, align 8
  %call21 = tail call i32 @panfrost_gpu_get_latest_flush_id(ptr noundef %1) #13
  %flush_id = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %flush_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call21, ptr %flush_id, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %18 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_priv, align 4
  %file_priv = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %file_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %file_priv, align 8
  %call22 = tail call i32 @panfrost_job_get_slot(ptr noundef nonnull %call7.i.i) #13
  %21 = ptrtoint ptr %file_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %file_priv, align 8
  %arrayidx = getelementptr %struct.panfrost_file_priv, ptr %22, i32 0, i32 1, i32 %call22
  %call24 = tail call i32 @drm_sched_job_init(ptr noundef nonnull %call7.i.i, ptr noundef %arrayidx, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end15.out_put_job_crit_edge

if.end15.out_put_job_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_job

if.end27:                                         ; preds = %if.end15
  %in_sync_count.i = getelementptr inbounds %struct.drm_panfrost_submit, ptr %data, i32 0, i32 2
  %23 = ptrtoint ptr %in_sync_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_sync_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end27.if.end31_crit_edge, label %if.end.i

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end.i:                                         ; preds = %if.end27
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #13
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %if.end.i.if.then2.i_crit_edge, label %kvmalloc_array.exit.i, !prof !116

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2.i

kvmalloc_array.exit.i:                            ; preds = %if.end.i
  %27 = extractvalue { i32, i1 } %25, 0
  %call.i.i2.i = tail call noalias ptr @kvmalloc_node(i32 noundef %27, i32 noundef 3264, i32 noundef -1) #18
  %tobool1.not.i = icmp eq ptr %call.i.i2.i, null
  br i1 %tobool1.not.i, label %kvmalloc_array.exit.i.if.then2.i_crit_edge, label %if.end3.i

kvmalloc_array.exit.i.if.then2.i_crit_edge:       ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2.i

if.then2.i:                                       ; preds = %kvmalloc_array.exit.i.if.then2.i_crit_edge, %if.end.i.if.then2.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18) #13
  br label %panfrost_copy_in_sync.exit.thread108

if.end3.i:                                        ; preds = %kvmalloc_array.exit.i
  %in_syncs.i = getelementptr inbounds %struct.drm_panfrost_submit, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %in_syncs.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %in_syncs.i, align 8
  %conv.i = trunc i64 %29 to i32
  %30 = inttoptr i32 %conv.i to ptr
  %mul.i = shl nuw i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end3.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.if.then6.i_crit_edge, label %if.then27.i.i.i, !prof !117

land.rhs16.i.i.i.if.then6.i_crit_edge:            ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.then6.i

if.then.i.i.i.i:                                  ; preds = %if.end3.i
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i2.i, i32 noundef %mul.i, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.then11.i.i.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 %mul.i, i32 -1226833920) #19, !srcloc !118
  %asmresult.i.i.i = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !117

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i2.i, i32 noundef %mul.i) #13
  %32 = tail call i32 @llvm.read_register.i32(metadata !105) #13
  %and.i.i.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !119
  %and.i.i.i.i.i = and i32 %34, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !121
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i2.i, ptr noundef %30, i32 noundef %mul.i) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #13, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.for.body.i_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !117

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i.for.body.i_crit_edge:                ; preds = %if.end.i.i.i
  br label %for.body.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i13.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ %mul.i, %if.then.i.i.i.i.if.then11.i.i.i_crit_edge ], [ %mul.i, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %mul.i, %res.0.i.i13.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i2.i, i32 %sub.i.i.i
  %35 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i13.i)
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.if.then6.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19) #13
  br label %panfrost_copy_in_sync.exit.thread108

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.i.i.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.i.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence.i) #13
  %36 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence.i, align 4, !annotation !122
  %arrayidx.i = getelementptr i32, ptr %call.i.i2.i, i32 %i.022.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %call9.i = call i32 @drm_syncobj_find_fence(ptr noundef %file, i32 noundef %38, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %fence.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.body.i.cleanup.thread.i_crit_edge

for.body.i.cleanup.thread.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i

if.end12.i:                                       ; preds = %for.body.i
  %39 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fence.i, align 4
  %call13.i = call i32 @drm_sched_job_add_dependency(ptr noundef nonnull %call7.i.i, ptr noundef %40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.inc.i, label %if.end12.i.cleanup.thread.i_crit_edge

if.end12.i.cleanup.thread.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end12.i.cleanup.thread.i_crit_edge, %for.body.i.cleanup.thread.i_crit_edge
  %ret.1.ph.i = phi i32 [ %call13.i, %if.end12.i.cleanup.thread.i_crit_edge ], [ %call9.i, %for.body.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #13
  br label %panfrost_copy_in_sync.exit.thread108

for.inc.i:                                        ; preds = %if.end12.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #13
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %panfrost_copy_in_sync.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

panfrost_copy_in_sync.exit.thread108:             ; preds = %cleanup.thread.i, %if.then6.i, %if.then2.i
  %retval.0.i6.i.ph = phi ptr [ %call.i.i2.i, %cleanup.thread.i ], [ null, %if.then2.i ], [ %call.i.i2.i, %if.then6.i ]
  %ret.2.i.ph = phi i32 [ %ret.1.ph.i, %cleanup.thread.i ], [ -12, %if.then2.i ], [ -14, %if.then6.i ]
  call void @kvfree(ptr noundef %retval.0.i6.i.ph) #13
  br label %if.then44

panfrost_copy_in_sync.exit:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kvfree(ptr noundef nonnull %call.i.i2.i) #13
  br label %if.end31

if.end31:                                         ; preds = %panfrost_copy_in_sync.exit, %if.end27.if.end31_crit_edge
  %41 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_priv, align 4
  %bo_handle_count.i = getelementptr inbounds %struct.drm_panfrost_submit, ptr %data, i32 0, i32 5
  %43 = ptrtoint ptr %bo_handle_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bo_handle_count.i, align 8
  %bo_count.i = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %bo_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i95 = icmp eq i32 %44, 0
  br i1 %tobool.not.i95, label %if.end31.if.end35_crit_edge, label %if.end.i97

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end.i97:                                       ; preds = %if.end31
  %bo_handles.i = getelementptr inbounds %struct.drm_panfrost_submit, ptr %data, i32 0, i32 4
  %46 = ptrtoint ptr %bo_handles.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bo_handles.i, align 8
  %conv.i96 = trunc i64 %47 to i32
  %48 = inttoptr i32 %conv.i96 to ptr
  %bos.i = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 9
  %call.i = call i32 @drm_gem_objects_lookup(ptr noundef %file, ptr noundef %48, i32 noundef %44, ptr noundef %bos.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i97.if.then44_crit_edge

if.end.i97.if.then44_crit_edge:                   ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

if.end5.i:                                        ; preds = %if.end.i97
  %49 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bo_count.i, align 8
  %51 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 4) #13
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %kvmalloc_array.exit.thread.i, label %kvmalloc_array.exit.i98, !prof !116

kvmalloc_array.exit.thread.i:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %mappings3.i = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 8
  %53 = ptrtoint ptr %mappings3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %mappings3.i, align 8
  br label %if.then44

kvmalloc_array.exit.i98:                          ; preds = %if.end5.i
  %54 = extractvalue { i32, i1 } %51, 0
  %call.i.i1.i = call noalias ptr @kvmalloc_node(i32 noundef %54, i32 noundef 3520, i32 noundef -1) #18
  %mappings.i = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 8
  %55 = ptrtoint ptr %mappings.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i1.i, ptr %mappings.i, align 8
  %tobool9.not.i = icmp eq ptr %call.i.i1.i, null
  br i1 %tobool9.not.i, label %kvmalloc_array.exit.i98.if.then44_crit_edge, label %for.cond.preheader.i

kvmalloc_array.exit.i98.if.then44_crit_edge:      ; preds = %kvmalloc_array.exit.i98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

for.cond.preheader.i:                             ; preds = %kvmalloc_array.exit.i98
  %56 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bo_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp9.not.i = icmp eq i32 %57, 0
  br i1 %cmp9.not.i, label %for.cond.preheader.i.if.end35_crit_edge, label %for.cond.preheader.i.for.body.i100_crit_edge

for.cond.preheader.i.for.body.i100_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i100

for.cond.preheader.i.if.end35_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.body.i100:                                    ; preds = %for.inc.i103.for.body.i100_crit_edge, %for.cond.preheader.i.for.body.i100_crit_edge
  %i.010.i = phi i32 [ %inc.i102, %for.inc.i103.for.body.i100_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i100_crit_edge ]
  %58 = ptrtoint ptr %bos.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bos.i, align 4
  %arrayidx.i99 = getelementptr ptr, ptr %59, i32 %i.010.i
  %60 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i99, align 4
  %call16.i = call ptr @panfrost_gem_mapping_get(ptr noundef %61, ptr noundef %42) #13
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %for.body.i100.if.then44_crit_edge, label %for.inc.i103

for.body.i100.if.then44_crit_edge:                ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

for.inc.i103:                                     ; preds = %for.body.i100
  %gpu_usecount.i = getelementptr inbounds %struct.panfrost_gem_object, ptr %61, i32 0, i32 3
  %call.i.i.i101 = call zeroext i1 @__kasan_check_write(ptr noundef %gpu_usecount.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %gpu_usecount.i, i32 1, i32 3, i32 1) #13
  %62 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gpu_usecount.i, ptr %gpu_usecount.i, i32 1, ptr elementtype(i32) %gpu_usecount.i) #13, !srcloc !123
  %63 = ptrtoint ptr %mappings.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mappings.i, align 8
  %arrayidx21.i = getelementptr ptr, ptr %64, i32 %i.010.i
  %65 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call16.i, ptr %arrayidx21.i, align 4
  %inc.i102 = add nuw i32 %i.010.i, 1
  %66 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bo_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i102, %67
  br i1 %cmp.i, label %for.inc.i103.for.body.i100_crit_edge, label %for.inc.i103.if.end35_crit_edge

for.inc.i103.if.end35_crit_edge:                  ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.inc.i103.for.body.i100_crit_edge:             ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i100

if.end35:                                         ; preds = %for.inc.i103.if.end35_crit_edge, %for.cond.preheader.i.if.end35_crit_edge, %if.end31.if.end35_crit_edge
  %call36 = call i32 @panfrost_job_push(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.if.then44_crit_edge

if.end35.if.then44_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

if.end39:                                         ; preds = %if.end35
  %tobool40.not = icmp eq ptr %sync_out.0, null
  br i1 %tobool40.not, label %if.end39.out_put_job_crit_edge, label %if.then41

if.end39.out_put_job_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_job

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %render_done_fence = getelementptr inbounds %struct.panfrost_job, ptr %call7.i.i, i32 0, i32 11
  %68 = ptrtoint ptr %render_done_fence to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %render_done_fence, align 4
  call void @drm_syncobj_replace_fence(ptr noundef nonnull %sync_out.0, ptr noundef %69) #13
  br label %out_put_job

if.then44:                                        ; preds = %if.end35.if.then44_crit_edge, %for.body.i100.if.then44_crit_edge, %kvmalloc_array.exit.i98.if.then44_crit_edge, %kvmalloc_array.exit.thread.i, %if.end.i97.if.then44_crit_edge, %panfrost_copy_in_sync.exit.thread108
  %ret.0.ph = phi i32 [ %ret.2.i.ph, %panfrost_copy_in_sync.exit.thread108 ], [ %call36, %if.end35.if.then44_crit_edge ], [ -12, %kvmalloc_array.exit.thread.i ], [ -12, %kvmalloc_array.exit.i98.if.then44_crit_edge ], [ %call.i, %if.end.i97.if.then44_crit_edge ], [ -22, %for.body.i100.if.then44_crit_edge ]
  call void @drm_sched_job_cleanup(ptr noundef nonnull %call7.i.i) #13
  br label %out_put_job

out_put_job:                                      ; preds = %if.then44, %if.then41, %if.end39.out_put_job_crit_edge, %if.end15.out_put_job_crit_edge
  %ret.1 = phi i32 [ %call24, %if.end15.out_put_job_crit_edge ], [ %ret.0.ph, %if.then44 ], [ 0, %if.end39.out_put_job_crit_edge ], [ 0, %if.then41 ]
  call void @panfrost_job_put(ptr noundef nonnull %call7.i.i) #13
  br label %out_put_syncout

out_put_syncout:                                  ; preds = %out_put_job, %if.end11.out_put_syncout_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_put_job ], [ -12, %if.end11.out_put_syncout_crit_edge ]
  %tobool47.not = icmp eq ptr %sync_out.0, null
  br i1 %tobool47.not, label %out_put_syncout.cleanup_crit_edge, label %if.then48

out_put_syncout.cleanup_crit_edge:                ; preds = %out_put_syncout
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then48:                                        ; preds = %out_put_syncout
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sync_out.0, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !124
  call void @llvm.prefetch.p0(ptr nonnull %sync_out.0, i32 1, i32 3, i32 1) #13
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %sync_out.0, ptr nonnull %sync_out.0, i32 1, ptr nonnull elementtype(i32) %sync_out.0) #13, !srcloc !125
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i105, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef nonnull %sync_out.0, i32 noundef 3) #13
  br label %cleanup

if.then.i.i105:                                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !126
  call void @drm_syncobj_free(ptr noundef nonnull %sync_out.0) #13, !callees !127
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i105, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %out_put_syncout.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.then6.cleanup_crit_edge ], [ %ret.2, %out_put_syncout.cleanup_crit_edge ], [ %ret.2, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %ret.2, %if.then10.i.i.i.i.i ], [ %ret.2, %if.then.i.i105 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_wait_bo(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_ns = getelementptr inbounds %struct.drm_panfrost_wait_bo, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %timeout_ns, align 8
  %call = tail call i32 @drm_timeout_abs_to_jiffies(i64 noundef %1) #13
  %pad = getelementptr inbounds %struct.drm_panfrost_wait_bo, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  %call1 = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %5) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %call1, i32 0, i32 9
  %6 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv, align 8
  %call5 = tail call i32 @dma_resv_wait_timeout(ptr noundef %7, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool8.not, i32 -16, i32 -110
  %ret.0 = select i1 %tobool6.not, i32 %cond, i32 %call5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #13, !srcloc !125
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @drm_gem_object_free(ptr noundef nonnull %call1) #13, !callees !127
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_create_bo(ptr noundef %dev, ptr noundef %data, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.drm_panfrost_create_bo, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.drm_panfrost_create_bo, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %tobool3.not = icmp ugt i32 %7, 3
  %8 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %9 = icmp eq i32 %8, 2
  %or.cond = or i1 %tobool3.not, %9
  br i1 %or.cond, label %lor.lhs.false2.cleanup_crit_edge, label %if.end11

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false2
  %handle = getelementptr inbounds %struct.drm_panfrost_create_bo, ptr %data, i32 0, i32 2
  %call = tail call ptr @panfrost_gem_create_with_handle(ptr noundef %file, ptr noundef %dev, i32 noundef %3, i32 noundef %7, ptr noundef %handle) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call18 = tail call ptr @panfrost_gem_mapping_get(ptr noundef %call, ptr noundef %1) #13
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @drm_gem_object_put(ptr noundef %call)
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %start = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %call18, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  %shl = shl i64 %12, 12
  %offset = getelementptr inbounds %struct.drm_panfrost_create_bo, ptr %data, i32 0, i32 4
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl, ptr %offset, align 8
  tail call void @panfrost_gem_mapping_put(ptr noundef nonnull %call18) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %if.then15, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then15 ], [ 0, %if.end22 ], [ -22, %if.then20 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_mmap_bo(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_panfrost_mmap_bo, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %call2 = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %3) #13
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %5) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %is_heap = getelementptr inbounds %struct.panfrost_gem_object, ptr %call2, i32 0, i32 4
  %6 = ptrtoint ptr %is_heap to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %is_heap, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %bf.cast.not = icmp eq i8 %7, 0
  br i1 %bf.cast.not, label %if.end8, label %if.end5.if.then.i_crit_edge

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.end8:                                          ; preds = %if.end5
  %call9 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef nonnull %call2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end8.if.then.i_crit_edge

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %call2, i32 0, i32 4, i32 1, i32 1
  %8 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start.i, align 8
  %shl.i = shl i64 %9, 12
  %offset = getelementptr inbounds %struct.drm_panfrost_mmap_bo, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %shl.i, ptr %offset, align 8
  br label %if.then.i

if.then.i:                                        ; preds = %if.then11, %if.end8.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge
  %ret.0 = phi i32 [ 0, %if.then11 ], [ %call9, %if.end8.if.then.i_crit_edge ], [ -22, %if.end5.if.then.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call2, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr nonnull %call2, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call2, ptr nonnull %call2, i32 1, ptr nonnull elementtype(i32) %call2) #13, !srcloc !125
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call2, i32 noundef 3) #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @drm_gem_object_free(ptr noundef nonnull %call2) #13, !callees !127
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then3, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -2, %if.then3 ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @panfrost_ioctl_get_param(ptr nocapture noundef readonly %ddev, ptr noundef %data, ptr nocapture noundef readnone %file) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %pad = getelementptr inbounds %struct.drm_panfrost_get_param, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
    i32 4, label %sw.bb12
    i32 5, label %sw.bb15
    i32 6, label %sw.bb18
    i32 7, label %sw.bb22
    i32 8, label %sw.bb26
    i32 9, label %sw.bb30
    i32 10, label %sw.bb34
    i32 11, label %sw.bb38
    i32 12, label %sw.bb42
    i32 13, label %sw.bb46
    i32 14, label %sw.bb50
    i32 15, label %sw.bb54
    i32 16, label %sw.bb58
    i32 17, label %sw.bb62
    i32 40, label %sw.bb66
    i32 18, label %if.end.sw.bb70_crit_edge
    i32 19, label %if.end.sw.bb70_crit_edge139
    i32 20, label %if.end.sw.bb70_crit_edge140
    i32 21, label %if.end.sw.bb70_crit_edge141
    i32 22, label %if.end.sw.bb75_crit_edge
    i32 23, label %if.end.sw.bb75_crit_edge142
    i32 24, label %if.end.sw.bb75_crit_edge143
    i32 25, label %if.end.sw.bb75_crit_edge144
    i32 26, label %if.end.sw.bb75_crit_edge145
    i32 27, label %if.end.sw.bb75_crit_edge146
    i32 28, label %if.end.sw.bb75_crit_edge147
    i32 29, label %if.end.sw.bb75_crit_edge148
    i32 30, label %if.end.sw.bb75_crit_edge149
    i32 31, label %if.end.sw.bb75_crit_edge150
    i32 32, label %if.end.sw.bb75_crit_edge151
    i32 33, label %if.end.sw.bb75_crit_edge152
    i32 34, label %if.end.sw.bb75_crit_edge153
    i32 35, label %if.end.sw.bb75_crit_edge154
    i32 36, label %if.end.sw.bb75_crit_edge155
    i32 37, label %if.end.sw.bb75_crit_edge156
    i32 38, label %sw.bb82
    i32 39, label %sw.bb86
  ]

if.end.sw.bb75_crit_edge156:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge155:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge154:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge153:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge152:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge151:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge150:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge149:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge148:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge147:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge146:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge145:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge144:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge143:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge142:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb75_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb75

if.end.sw.bb70_crit_edge141:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb70

if.end.sw.bb70_crit_edge140:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb70

if.end.sw.bb70_crit_edge139:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb70

if.end.sw.bb70_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb70

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %features = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %features, align 8
  %conv = zext i16 %8 to i64
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %revision = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %revision to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %revision, align 2
  %conv4 = zext i16 %10 to i64
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shader_present = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %shader_present to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %shader_present, align 8
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %tiler_present = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 3
  %13 = ptrtoint ptr %tiler_present to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tiler_present, align 8
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %l2_present = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 4
  %15 = ptrtoint ptr %l2_present to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %l2_present, align 8
  br label %cleanup.sink.split

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %stack_present = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 5
  %17 = ptrtoint ptr %stack_present to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %stack_present, align 8
  br label %cleanup.sink.split

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %as_present = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 6
  %19 = ptrtoint ptr %as_present to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %as_present, align 8
  %conv20 = zext i32 %20 to i64
  br label %cleanup.sink.split

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %js_present = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 7
  %21 = ptrtoint ptr %js_present to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %js_present, align 4
  %conv24 = zext i32 %22 to i64
  br label %cleanup.sink.split

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %l2_features = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 8
  %23 = ptrtoint ptr %l2_features to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %l2_features, align 8
  %conv28 = zext i32 %24 to i64
  br label %cleanup.sink.split

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %core_features = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 9
  %25 = ptrtoint ptr %core_features to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %core_features, align 4
  %conv32 = zext i32 %26 to i64
  br label %cleanup.sink.split

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %tiler_features = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 10
  %27 = ptrtoint ptr %tiler_features to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tiler_features, align 8
  %conv36 = zext i32 %28 to i64
  br label %cleanup.sink.split

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mem_features = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 11
  %29 = ptrtoint ptr %mem_features to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mem_features, align 4
  %conv40 = zext i32 %30 to i64
  br label %cleanup.sink.split

sw.bb42:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mmu_features = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 12
  %31 = ptrtoint ptr %mmu_features to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mmu_features, align 8
  %conv44 = zext i32 %32 to i64
  br label %cleanup.sink.split

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %thread_features = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 13
  %33 = ptrtoint ptr %thread_features to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %thread_features, align 4
  %conv48 = zext i32 %34 to i64
  br label %cleanup.sink.split

sw.bb50:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %max_threads = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 14
  %35 = ptrtoint ptr %max_threads to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_threads, align 8
  %conv52 = zext i32 %36 to i64
  br label %cleanup.sink.split

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %thread_max_workgroup_sz = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 15
  %37 = ptrtoint ptr %thread_max_workgroup_sz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %thread_max_workgroup_sz, align 4
  %conv56 = zext i32 %38 to i64
  br label %cleanup.sink.split

sw.bb58:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %thread_max_barrier_sz = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 16
  %39 = ptrtoint ptr %thread_max_barrier_sz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %thread_max_barrier_sz, align 8
  %conv60 = zext i32 %40 to i64
  br label %cleanup.sink.split

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %coherency_features = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 17
  %41 = ptrtoint ptr %coherency_features to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %coherency_features, align 4
  %conv64 = zext i32 %42 to i64
  br label %cleanup.sink.split

sw.bb66:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %afbc_features = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 18
  %43 = ptrtoint ptr %afbc_features to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %afbc_features, align 8
  %conv68 = zext i32 %44 to i64
  br label %cleanup.sink.split

sw.bb70:                                          ; preds = %if.end.sw.bb70_crit_edge, %if.end.sw.bb70_crit_edge139, %if.end.sw.bb70_crit_edge140, %if.end.sw.bb70_crit_edge141
  %sub = add nsw i32 %5, -18
  %arrayidx = getelementptr %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 19, i32 %sub
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %conv73 = zext i32 %46 to i64
  br label %cleanup.sink.split

sw.bb75:                                          ; preds = %if.end.sw.bb75_crit_edge, %if.end.sw.bb75_crit_edge142, %if.end.sw.bb75_crit_edge143, %if.end.sw.bb75_crit_edge144, %if.end.sw.bb75_crit_edge145, %if.end.sw.bb75_crit_edge146, %if.end.sw.bb75_crit_edge147, %if.end.sw.bb75_crit_edge148, %if.end.sw.bb75_crit_edge149, %if.end.sw.bb75_crit_edge150, %if.end.sw.bb75_crit_edge151, %if.end.sw.bb75_crit_edge152, %if.end.sw.bb75_crit_edge153, %if.end.sw.bb75_crit_edge154, %if.end.sw.bb75_crit_edge155, %if.end.sw.bb75_crit_edge156
  %sub78 = add nsw i32 %5, -22
  %arrayidx79 = getelementptr %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 20, i32 %sub78
  %47 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx79, align 4
  %conv80 = zext i32 %48 to i64
  br label %cleanup.sink.split

sw.bb82:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %nr_core_groups = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 21
  %49 = ptrtoint ptr %nr_core_groups to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_core_groups, align 4
  %conv84 = zext i32 %50 to i64
  br label %cleanup.sink.split

sw.bb86:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %thread_tls_alloc = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 22
  %51 = ptrtoint ptr %thread_tls_alloc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %thread_tls_alloc, align 8
  %conv88 = zext i32 %52 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb86, %sw.bb82, %sw.bb75, %sw.bb70, %sw.bb66, %sw.bb62, %sw.bb58, %sw.bb54, %sw.bb50, %sw.bb46, %sw.bb42, %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb26, %sw.bb22, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb2, %sw.bb
  %conv.sink = phi i64 [ %conv, %sw.bb ], [ %conv4, %sw.bb2 ], [ %12, %sw.bb6 ], [ %14, %sw.bb9 ], [ %16, %sw.bb12 ], [ %18, %sw.bb15 ], [ %conv20, %sw.bb18 ], [ %conv24, %sw.bb22 ], [ %conv28, %sw.bb26 ], [ %conv32, %sw.bb30 ], [ %conv36, %sw.bb34 ], [ %conv40, %sw.bb38 ], [ %conv44, %sw.bb42 ], [ %conv48, %sw.bb46 ], [ %conv52, %sw.bb50 ], [ %conv56, %sw.bb54 ], [ %conv60, %sw.bb58 ], [ %conv64, %sw.bb62 ], [ %conv68, %sw.bb66 ], [ %conv73, %sw.bb70 ], [ %conv80, %sw.bb75 ], [ %conv84, %sw.bb82 ], [ %conv88, %sw.bb86 ]
  %value = getelementptr inbounds %struct.drm_panfrost_get_param, ptr %data, i32 0, i32 2
  %53 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv.sink, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_get_bo_offset(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %3) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.then.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %5) #13
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %call3 = tail call ptr @panfrost_gem_mapping_get(ptr noundef nonnull %call, ptr noundef %1) #13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #13, !srcloc !125
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #13
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #13, !callees !127
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %drm_gem_object_put.exit.cleanup_crit_edge, label %if.end6

drm_gem_object_put.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  %start = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %call3, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start, align 8
  %shl = shl i64 %8, 12
  %offset = getelementptr inbounds %struct.drm_panfrost_get_bo_offset, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %shl, ptr %offset, align 8
  tail call void @panfrost_gem_mapping_put(ptr noundef nonnull %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %drm_gem_object_put.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -2, %if.then ], [ -22, %drm_gem_object_put.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_ioctl_perfcnt_enable(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_ioctl_perfcnt_dump(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_madvise(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %5) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %7) #13
  br label %cleanup73

if.end:                                           ; preds = %entry
  %shrinker_lock = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %shrinker_lock, i32 noundef 0) #13
  %lock = getelementptr inbounds %struct.panfrost_gem_object, ptr %call, i32 0, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %madv = getelementptr inbounds %struct.drm_panfrost_madvise, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end52_crit_edge

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then3:                                         ; preds = %if.end
  %mappings = getelementptr inbounds %struct.panfrost_gem_object, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mappings, align 4
  %12 = load volatile ptr, ptr %mappings, align 4
  %cmp.i.not.i = icmp eq ptr %12, %mappings
  br i1 %cmp.i.not.i, label %if.then3.if.then.i_crit_edge, label %list_is_singular.exit

if.then3.if.then.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

list_is_singular.exit:                            ; preds = %if.then3
  %prev.i = getelementptr inbounds %struct.panfrost_gem_object, ptr %call, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %12, %14
  br i1 %cmp.i.not, label %lor.lhs.false, label %list_is_singular.exit.if.then.i_crit_edge

list_is_singular.exit.if.then.i_crit_edge:        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false:                                    ; preds = %list_is_singular.exit
  %mmu = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %11, i32 0, i32 4
  %15 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmu, align 8
  %mmu9 = getelementptr inbounds %struct.panfrost_file_priv, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %mmu9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmu9, align 8
  %cmp10.not = icmp eq ptr %16, %18
  br i1 %cmp10.not, label %lor.lhs.false.if.end52_crit_edge, label %land.rhs

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

land.rhs:                                         ; preds = %lor.lhs.false
  %.b99 = load i1, ptr @panfrost_ioctl_madvise.__already_done, align 1
  br i1 %.b99, label %land.rhs.if.then.i_crit_edge, label %if.then18, !prof !117

land.rhs.if.then.i_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @panfrost_ioctl_madvise.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 424, i32 noundef 9, ptr noundef null) #13
  br label %if.then.i

if.end52:                                         ; preds = %lor.lhs.false.if.end52_crit_edge, %if.end.if.end52_crit_edge
  %19 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %madv, align 4
  %call54 = tail call i32 @drm_gem_shmem_madvise(ptr noundef nonnull %call, i32 noundef %20) #13
  %retained = getelementptr inbounds %struct.drm_panfrost_madvise, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %retained to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call54, ptr %retained, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool56.not = icmp eq i32 %call54, 0
  br i1 %tobool56.not, label %if.end52.if.then.i_crit_edge, label %if.then57

if.end52.if.then.i_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then57:                                        ; preds = %if.end52
  %22 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %madv, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %23, label %if.then57.if.then.i_crit_edge [
    i32 1, label %if.then60
    i32 0, label %if.then64
  ]

if.then57.if.then.i_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then60:                                        ; preds = %if.then57
  %madv_list = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %call, i32 0, i32 5
  %shrinker_list = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 25
  %prev.i102 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 25, i32 1
  %25 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i102, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %madv_list, ptr noundef %26, ptr noundef %shrinker_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then60.if.then.i_crit_edge

if.then60.if.then.i_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %madv_list, ptr %prev.i102, align 4
  %28 = ptrtoint ptr %madv_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %shrinker_list, ptr %madv_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %call, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %madv_list, ptr %26, align 4
  br label %if.then.i

if.then64:                                        ; preds = %if.then57
  %madv_list66 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %call, i32 0, i32 5
  %call.i.i103 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %madv_list66) #13
  br i1 %call.i.i103, label %if.end.i.i104, label %if.then64.list_del_init.exit_crit_edge

if.then64.list_del_init.exit_crit_edge:           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i104:                                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %call, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %madv_list66 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %madv_list66, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i104, %if.then64.list_del_init.exit_crit_edge
  %37 = ptrtoint ptr %madv_list66 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %madv_list66, ptr %madv_list66, align 4
  %prev.i3.i = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %call, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %madv_list66, ptr %prev.i3.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %list_del_init.exit, %if.end.i.i, %if.then60.if.then.i_crit_edge, %if.then57.if.then.i_crit_edge, %if.end52.if.then.i_crit_edge, %if.then18, %land.rhs.if.then.i_crit_edge, %list_is_singular.exit.if.then.i_crit_edge, %if.then3.if.then.i_crit_edge
  %ret.2 = phi i32 [ 0, %list_del_init.exit ], [ 0, %if.end52.if.then.i_crit_edge ], [ 0, %if.then57.if.then.i_crit_edge ], [ 0, %if.then60.if.then.i_crit_edge ], [ 0, %if.end.i.i ], [ -22, %if.then18 ], [ -22, %list_is_singular.exit.if.then.i_crit_edge ], [ -22, %land.rhs.if.then.i_crit_edge ], [ -22, %if.then3.if.then.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  tail call void @mutex_unlock(ptr noundef %shrinker_lock) #13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #13
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #13, !srcloc !125
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup73_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.i.cleanup73_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #13
  br label %cleanup73

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #13, !callees !127
  br label %cleanup73

cleanup73:                                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup73_crit_edge, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %ret.2, %if.end5.i.i.i.i.i.i.cleanup73_crit_edge ], [ %ret.2, %if.then10.i.i.i.i.i.i ], [ %ret.2, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_gpu_get_latest_flush_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_job_get_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_job_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_job_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_dependency(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_objects_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_gem_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_timeout_abs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_gem_object_put(ptr noundef %obj) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %obj, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %obj, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr nonnull %obj, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %obj, ptr nonnull %obj, i32 1, ptr nonnull elementtype(i32) %obj) #13, !srcloc !125
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !117

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %obj, i32 noundef 3) #13
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !126
  tail call void @drm_gem_object_free(ptr noundef nonnull %obj) #13, !callees !127
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_gem_create_with_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_mapping_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_madvise(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_shrinker_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gpu_amlogic_quirk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_device_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_device_resume(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103}
!llvm.named.register.sp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__param_unstable_ioctls, !1, !"__param_unstable_ioctls", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_unstable_ioctlstype304, !1, !"__UNIQUE_ID_unstable_ioctlstype304", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_panfrost__305_685_panfrost_driver_init6, !4, !"__initcall__kmod_panfrost__305_685_panfrost_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 685, i32 1}
!5 = !{ptr @__exitcall_panfrost_driver_exit, !4, !"__exitcall_panfrost_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author306, !7, !"__UNIQUE_ID_author306", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 687, i32 1}
!8 = !{ptr @__UNIQUE_ID_description307, !9, !"__UNIQUE_ID_description307", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 688, i32 1}
!10 = !{ptr @__UNIQUE_ID_file308, !11, !"__UNIQUE_ID_file308", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 689, i32 1}
!12 = !{ptr @__UNIQUE_ID_license309, !11, !"__UNIQUE_ID_license309", i1 false, i1 false}
!13 = !{ptr @unstable_ioctls, !14, !"unstable_ioctls", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 23, i32 13}
!15 = !{ptr @__param_str_unstable_ioctls, !1, !"__param_str_unstable_ioctls", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 680, i32 11}
!18 = !{ptr @panfrost_driver, !19, !"panfrost_driver", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 676, i32 31}
!20 = !{ptr @panfrost_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 573, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 579, i32 4}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @panfrost_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @panfrost_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 532, i32 12}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 533, i32 12}
!35 = !{ptr @panfrost_drm_driver, !36, !"panfrost_drm_driver", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 524, i32 32}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 505, i32 2}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 506, i32 2}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 507, i32 2}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 508, i32 2}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 509, i32 2}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 510, i32 2}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 511, i32 2}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 512, i32 2}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 513, i32 2}
!55 = !{ptr @panfrost_drm_driver_ioctls, !56, !"panfrost_drm_driver_ioctls", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 501, i32 36}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 201, i32 3}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 209, i32 3}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 336, i32 3}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @panfrost_ioctl_mmap_bo._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @panfrost_ioctl_mmap_bo._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 342, i32 3}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 424, i32 7}
!77 = !{ptr @panfrost_drm_driver_fops, !78, !"panfrost_drm_driver_fops", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 516, i32 1}
!79 = !{ptr @dt_match, !80, !"dt_match", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 650, i32 34}
!81 = !{ptr @amlogic_data, !82, !"amlogic_data", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 635, i32 41}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 627, i32 50}
!85 = !{ptr @default_supplies, !86, !"default_supplies", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 627, i32 27}
!87 = !{ptr @default_data, !88, !"default_data", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 628, i32 41}
!89 = !{ptr @mediatek_mt8183_data, !90, !"mediatek_mt8183_data", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 643, i32 41}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 641, i32 66}
!93 = !{ptr @mediatek_mt8183_supplies, !94, !"mediatek_mt8183_supplies", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 641, i32 27}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 642, i32 60}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 642, i32 69}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 642, i32 78}
!101 = !{ptr @mediatek_mt8183_pm_domains, !102, !"mediatek_mt8183_pm_domains", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 642, i32 27}
!103 = !{ptr @panfrost_pm_ops, !104, !"panfrost_pm_ops", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panfrost/panfrost_drv.c", i32 671, i32 32}
!105 = !{!"sp"}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i8 0, i8 2}
!116 = !{!"branch_weights", i32 1, i32 2000}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2153403653, i64 2153403678}
!119 = !{i64 5899208}
!120 = !{i64 5899405}
!121 = !{i64 2153384638}
!122 = !{!"auto-init"}
!123 = !{i64 2148356582, i64 2148356608, i64 2148356637, i64 2148356671, i64 2148356702, i64 2148356725}
!124 = !{i64 2148446137}
!125 = !{i64 2148360577, i64 2148360609, i64 2148360638, i64 2148360672, i64 2148360703, i64 2148360726}
!126 = !{i64 2149322251}
!127 = !{ptr @drm_gem_object_free, ptr @drm_syncobj_free}
