; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/v3d/v3d_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/v3d/v3d_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.v3d_dev = type { %struct.drm_device, i32, i8, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, %struct.drm_mm, %struct.spinlock, %struct.work_struct, ptr, ptr, ptr, ptr, [5 x %struct.v3d_queue_state], %struct.spinlock, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.anon.92 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.v3d_queue_state = type { %struct.drm_gpu_scheduler, i64, i64 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.anon.92 = type { i32, i32 }
%struct.v3d_file_priv = type { ptr, %struct.anon.93, [5 x %struct.drm_sched_entity] }
%struct.anon.93 = type { %struct.idr, %struct.mutex }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_v3d_get_param = type { i32, i32, i64 }

@__initcall__kmod_v3d__326_330_v3d_platform_driver_init6 = internal global ptr @v3d_platform_driver_init, section ".initcall6.init", align 4
@v3d_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @v3d_platform_drm_probe, ptr @v3d_platform_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @v3d_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_v3d_platform_driver_exit = internal global ptr @v3d_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias327 = internal constant [27 x i8] c"v3d.alias=platform:v3d-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_description328 = internal constant [40 x i8] c"v3d.description=Broadcom V3D DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author329 = internal constant [41 x i8] c"v3d.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file330 = internal constant [33 x i8] c"v3d.file=drivers/gpu/drm/v3d/v3d\00", section ".modinfo", align 1
@__UNIQUE_ID_license331 = internal constant [19 x i8] c"v3d.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"v3d\00", [28 x i8] zeroinitializer }, align 32
@v3d_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,7268-v3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,7278-v3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@v3d_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @v3d_open, ptr @v3d_postclose, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v3d_debugfs_init, ptr @v3d_create_object, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @v3d_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr null, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.13, ptr @.str.14, i32 41, ptr @v3d_drm_ioctls, i32 11, ptr @v3d_drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hub\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"core0\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/v3d/v3d_drv.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@v3d_platform_drm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 261, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to get reset control or bridge regs\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"v3d_platform_drm_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@v3d_platform_drm_probe._entry_ptr = internal global ptr @v3d_platform_drm_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gca\00", [28 x i8] zeroinitializer }, align 32
@v3d_platform_drm_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.3, i32 275, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate MMU scratch page\0A\00", [59 x i8] zeroinitializer }, align 32
@v3d_platform_drm_probe._entry_ptr.12 = internal global ptr @v3d_platform_drm_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Broadcom V3D graphics\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20180419\00", [23 x i8] zeroinitializer }, align 32
@v3d_drm_ioctls = internal constant { [11 x %struct.drm_ioctl_desc], [48 x i8] } { [11 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1068997568, i32 33, ptr @v3d_submit_cl_ioctl, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 -1072667583, i32 32, ptr @v3d_wait_bo_ioctl, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 -1072667582, i32 32, ptr @v3d_create_bo_ioctl, ptr @.str.17 }, %struct.drm_ioctl_desc { i32 -1072667581, i32 32, ptr @v3d_mmap_bo_ioctl, ptr @.str.18 }, %struct.drm_ioctl_desc { i32 -1072667580, i32 32, ptr @v3d_get_param_ioctl, ptr @.str.19 }, %struct.drm_ioctl_desc { i32 -1073191867, i32 32, ptr @v3d_get_bo_offset_ioctl, ptr @.str.20 }, %struct.drm_ioctl_desc { i32 1079010374, i32 33, ptr @v3d_submit_tfu_ioctl, ptr @.str.21 }, %struct.drm_ioctl_desc { i32 1079534663, i32 33, ptr @v3d_submit_csd_ioctl, ptr @.str.22 }, %struct.drm_ioctl_desc { i32 -1071094712, i32 32, ptr @v3d_perfmon_create_ioctl, ptr @.str.23 }, %struct.drm_ioctl_desc { i32 -1073454007, i32 32, ptr @v3d_perfmon_destroy_ioctl, ptr @.str.24 }, %struct.drm_ioctl_desc { i32 -1072667574, i32 32, ptr @v3d_perfmon_get_values_ioctl, ptr @.str.25 }], [48 x i8] zeroinitializer }, align 32
@v3d_drm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V3D_SUBMIT_CL\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_WAIT_BO\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V3D_CREATE_BO\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"V3D_MMAP_BO\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"V3D_GET_PARAM\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"V3D_GET_BO_OFFSET\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"V3D_SUBMIT_TFU\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"V3D_SUBMIT_CSD\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"V3D_PERFMON_CREATE\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"V3D_PERFMON_DESTROY\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"V3D_PERFMON_GET_VALUES\00", [41 x i8] zeroinitializer }, align 32
@v3d_get_param_ioctl.reg_map = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 4, i32 12, i32 16, i32 20, i32 0, i32 4, i32 8], [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown parameter %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"v3d_platform_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 321, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 325, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"v3d_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 200, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"v3d_drm_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 170, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 231, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 235, i32 42 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 248, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 258, i32 42 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 260, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 267, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 275, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 193, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 194, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"v3d_drm_ioctls\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 156, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"v3d_drm_fops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 148, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 157, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 158, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 159, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 160, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 161, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 162, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 163, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 164, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 165, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 166, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 167, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [8 x i8] c"reg_map\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 47, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [33 x i8] c"../drivers/gpu/drm/v3d/v3d_drv.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 103, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias327, ptr @__UNIQUE_ID_author329, ptr @__UNIQUE_ID_description328, ptr @__UNIQUE_ID_file330, ptr @__UNIQUE_ID_license331, ptr @__exitcall_v3d_platform_driver_exit, ptr @__initcall__kmod_v3d__326_330_v3d_platform_driver_init6, ptr @v3d_platform_driver_exit, ptr @v3d_platform_drm_probe._entry, ptr @v3d_platform_drm_probe._entry.10, ptr @v3d_platform_drm_probe._entry_ptr, ptr @v3d_platform_drm_probe._entry_ptr.12, ptr @v3d_platform_driver, ptr @.str, ptr @v3d_of_match, ptr @v3d_drm_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @v3d_drm_ioctls, ptr @v3d_drm_fops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @v3d_get_param_ioctl.reg_map, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_platform_drm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_platform_drm_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_drm_ioctls to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_drm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3d_get_param_ioctl.reg_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @v3d_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @v3d_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @v3d_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @v3d_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3d_platform_drm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev1, ptr noundef nonnull @v3d_drm_driver, i32 noundef 5920, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i.i, align 4
  %hub_regs = getelementptr inbounds %struct.v3d_dev, ptr %call, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -16
  %call.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.1) #7
  %4 = ptrtoint ptr %hub_regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %hub_regs, align 4
  %cmp.i.i.i.not = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %call.i to i32
  br i1 %cmp.i.i.i.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %core_regs = getelementptr inbounds %struct.v3d_dev, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %add.ptr.i173 = getelementptr i8, ptr %7, i32 -16
  %call.i174 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i173, ptr noundef nonnull @.str.2) #7
  %8 = ptrtoint ptr %core_regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i174, ptr %core_regs, align 4
  %cmp.i.i.i175.not = icmp ugt ptr %call.i174, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call.i174 to i32
  br i1 %cmp.i.i.i175.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hub_regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 4664
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !84
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %and = lshr i32 %13, 8
  %shr = and i32 %and, 15
  %add = add nuw nsw i32 %shr, 30
  %sh_prom = zext i32 %add to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %call.i177 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp.i178 = icmp eq i32 %call.i177, 0
  br i1 %cmp.i178, label %if.then.i, label %if.end11.dma_set_mask_and_coherent.exit_crit_edge

if.end11.dma_set_mask_and_coherent.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_mask_and_coherent.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %sub) #7
  br label %dma_set_mask_and_coherent.exit

dma_set_mask_and_coherent.exit:                   ; preds = %if.then.i, %if.end11.dma_set_mask_and_coherent.exit_crit_edge
  %and19 = lshr i32 %13, 4
  %shr20 = and i32 %and19, 15
  %add21 = add nuw nsw i32 %shr20, 30
  %va_width = getelementptr inbounds %struct.v3d_dev, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %va_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add21, ptr %va_width, align 4
  %15 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hub_regs, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !84
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %and29 = and i32 %18, 15
  %mul = mul nuw nsw i32 %and29, 10
  %and31 = lshr i32 %18, 4
  %shr32 = and i32 %and31, 15
  %add33 = add nuw nsw i32 %mul, %shr32
  %ver = getelementptr inbounds %struct.v3d_dev, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add33, ptr %ver, align 4
  %and34 = lshr i32 %18, 8
  %shr35 = and i32 %and34, 15
  %cores = getelementptr inbounds %struct.v3d_dev, ptr %call, i32 0, i32 14
  %20 = ptrtoint ptr %cores to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr35, ptr %cores, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr35)
  %cmp37 = icmp ugt i32 %shr35, 1
  br i1 %cmp37, label %do.end, label %dma_set_mask_and_coherent.exit.if.end52_crit_edge, !prof !87

dma_set_mask_and_coherent.exit.if.end52_crit_edge: ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end:                                           ; preds = %dma_set_mask_and_coherent.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 248, i32 noundef 9, ptr noundef null) #7
  br label %if.end52

if.end52:                                         ; preds = %do.end, %dma_set_mask_and_coherent.exit.if.end52_crit_edge
  %call.i179 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %reset = getelementptr inbounds %struct.v3d_dev, ptr %call, i32 0, i32 8
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i179, ptr %reset, align 8
  %cmp.i180 = icmp ugt ptr %call.i179, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.then63, label %if.end52.if.end77_crit_edge

if.end52.if.end77_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then63:                                        ; preds = %if.end52
  %cmp66 = icmp eq ptr %call.i179, inttoptr (i32 -517 to ptr)
  br i1 %cmp66, label %if.then63.cleanup_crit_edge, label %if.end68

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68:                                         ; preds = %if.then63
  %22 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %reset, align 8
  %bridge_regs = getelementptr inbounds %struct.v3d_dev, ptr %call, i32 0, i32 5
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  %add.ptr.i182 = getelementptr i8, ptr %24, i32 -16
  %call.i183 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i182, ptr noundef nonnull @.str.4) #7
  %25 = ptrtoint ptr %bridge_regs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i183, ptr %bridge_regs, align 4
  %cmp.i.i.i184.not = icmp ugt ptr %call.i183, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i184.not, label %do.end75, label %if.end68.if.end77_crit_edge

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call.i183 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end77:                                         ; preds = %if.end68.if.end77_crit_edge, %if.end52.if.end77_crit_edge
  %27 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %28)
  %cmp79 = icmp slt i32 %28, 41
  br i1 %cmp79, label %if.then80, label %if.end77.if.end85_crit_edge

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then80:                                        ; preds = %if.end77
  %gca_regs = getelementptr inbounds %struct.v3d_dev, ptr %call, i32 0, i32 6
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  %add.ptr.i187 = getelementptr i8, ptr %30, i32 -16
  %call.i188 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i187, ptr noundef nonnull @.str.9) #7
  %31 = ptrtoint ptr %gca_regs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i188, ptr %gca_regs, align 4
  %cmp.i.i.i189.not = icmp ugt ptr %call.i188, inttoptr (i32 -4096 to ptr)
  %32 = ptrtoint ptr %call.i188 to i32
  br i1 %cmp.i.i.i189.not, label %if.then80.cleanup_crit_edge, label %if.then80.if.end85_crit_edge

if.then80.if.end85_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end85:                                         ; preds = %if.then80.if.end85_crit_edge, %if.end77.if.end85_crit_edge
  %mmu_scratch_paddr = getelementptr inbounds %struct.v3d_dev, ptr %call, i32 0, i32 12
  %call.i191 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %mmu_scratch_paddr, i32 noundef 11712, i32 noundef 260) #7
  %mmu_scratch = getelementptr inbounds %struct.v3d_dev, ptr %call, i32 0, i32 11
  %33 = ptrtoint ptr %mmu_scratch to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i191, ptr %mmu_scratch, align 4
  %tobool88.not = icmp eq ptr %call.i191, null
  br i1 %tobool88.not, label %do.end92, label %if.end93

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end93:                                         ; preds = %if.end85
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 50) #7
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call94 = tail call i32 @v3d_gem_init(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.dma_free_crit_edge

if.end93.dma_free_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_free

if.end97:                                         ; preds = %if.end93
  %call98 = tail call i32 @v3d_irq_init(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.gem_destroy_crit_edge

if.end97.gem_destroy_crit_edge:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %gem_destroy

if.end101:                                        ; preds = %if.end97
  %call102 = tail call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end101.cleanup_crit_edge, label %irq_disable

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

irq_disable:                                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v3d_irq_disable(ptr noundef %call) #7
  br label %gem_destroy

gem_destroy:                                      ; preds = %irq_disable, %if.end97.gem_destroy_crit_edge
  %ret.0 = phi i32 [ %call98, %if.end97.gem_destroy_crit_edge ], [ %call102, %irq_disable ]
  tail call void @v3d_gem_destroy(ptr noundef %call) #7
  br label %dma_free

dma_free:                                         ; preds = %gem_destroy, %if.end93.dma_free_crit_edge
  %ret.1 = phi i32 [ %call94, %if.end93.dma_free_crit_edge ], [ %ret.0, %gem_destroy ]
  %34 = ptrtoint ptr %mmu_scratch to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmu_scratch, align 4
  %36 = ptrtoint ptr %mmu_scratch_paddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mmu_scratch_paddr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %35, i32 noundef %37, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %dma_free, %if.end101.cleanup_crit_edge, %do.end92, %if.then80.cleanup_crit_edge, %do.end75, %if.then63.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %26, %do.end75 ], [ %ret.1, %dma_free ], [ -12, %do.end92 ], [ %5, %if.end.cleanup_crit_edge ], [ %9, %if.end7.cleanup_crit_edge ], [ -517, %if.then63.cleanup_crit_edge ], [ %32, %if.then80.cleanup_crit_edge ], [ 0, %if.end101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3d_platform_drm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #7
  tail call void @v3d_gem_destroy(ptr noundef %1) #7
  %dev = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %mmu_scratch = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %mmu_scratch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmu_scratch, align 4
  %mmu_scratch_paddr = getelementptr inbounds %struct.v3d_dev, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %mmu_scratch_paddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmu_scratch_paddr, align 8
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 4096, ptr noundef %5, i32 noundef %7, i32 noundef 4) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_gem_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_irq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_irq_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_gem_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3d_open(ptr noundef %dev, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  %sched = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1080) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %arrayidx = getelementptr %struct.v3d_dev, ptr %dev, i32 0, i32 22, i32 0
  %2 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %sched, align 4
  %arrayidx4 = getelementptr %struct.v3d_file_priv, ptr %call7.i.i, i32 0, i32 2, i32 0
  %call5 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx4, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #7
  %arrayidx.1 = getelementptr %struct.v3d_dev, ptr %dev, i32 0, i32 22, i32 1
  %3 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx.1, ptr %sched, align 4
  %arrayidx4.1 = getelementptr %struct.v3d_file_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %call5.1 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx4.1, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #7
  %arrayidx.2 = getelementptr %struct.v3d_dev, ptr %dev, i32 0, i32 22, i32 2
  %4 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.2, ptr %sched, align 4
  %arrayidx4.2 = getelementptr %struct.v3d_file_priv, ptr %call7.i.i, i32 0, i32 2, i32 2
  %call5.2 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx4.2, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #7
  %arrayidx.3 = getelementptr %struct.v3d_dev, ptr %dev, i32 0, i32 22, i32 3
  %5 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.3, ptr %sched, align 4
  %arrayidx4.3 = getelementptr %struct.v3d_file_priv, ptr %call7.i.i, i32 0, i32 2, i32 3
  %call5.3 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx4.3, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #7
  %arrayidx.4 = getelementptr %struct.v3d_dev, ptr %dev, i32 0, i32 22, i32 4
  %6 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.4, ptr %sched, align 4
  %arrayidx4.4 = getelementptr %struct.v3d_file_priv, ptr %call7.i.i, i32 0, i32 2, i32 4
  %call5.4 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx4.4, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #7
  call void @v3d_perfmon_open_file(ptr noundef nonnull %call7.i.i) #7
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %7 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v3d_postclose(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %arrayidx = getelementptr %struct.v3d_file_priv, ptr %1, i32 0, i32 2, i32 0
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx) #7
  %arrayidx.1 = getelementptr %struct.v3d_file_priv, ptr %1, i32 0, i32 2, i32 1
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx.1) #7
  %arrayidx.2 = getelementptr %struct.v3d_file_priv, ptr %1, i32 0, i32 2, i32 2
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx.2) #7
  %arrayidx.3 = getelementptr %struct.v3d_file_priv, ptr %1, i32 0, i32 2, i32 3
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx.3) #7
  %arrayidx.4 = getelementptr %struct.v3d_file_priv, ptr %1, i32 0, i32 2, i32 4
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx.4) #7
  tail call void @v3d_perfmon_close_file(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_debugfs_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v3d_create_object(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v3d_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_perfmon_open_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v3d_perfmon_close_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_submit_cl_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_wait_bo_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_create_bo_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_mmap_bo_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3d_get_param_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.drm_v3d_get_param, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup57_crit_edge

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp1 = icmp ult i32 %3, 7
  br i1 %cmp1, label %if.then5, label %if.end40

if.then5:                                         ; preds = %if.end
  %arrayidx7 = getelementptr [7 x i32], ptr @v3d_get_param_ioctl.reg_map, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  %value = getelementptr inbounds %struct.drm_v3d_get_param, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp8.not = icmp eq i64 %7, 0
  br i1 %cmp8.not, label %if.end10, label %if.then5.cleanup57_crit_edge

if.then5.cleanup57_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57

if.end10:                                         ; preds = %if.then5
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev11, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13 = icmp slt i32 %call.i, 0
  br i1 %cmp13, label %if.end10.cleanup57_crit_edge, label %if.end15

if.end10.cleanup57_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup57

if.end15:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 8
  %12 = add i32 %11, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %core_regs = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core_regs, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 %5
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !84
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  br label %if.end34

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %hub_regs = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %hub_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hub_regs, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 %5
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #7, !srcloc !84
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then21
  %storemerge.in = phi i32 [ %21, %if.else ], [ %17, %if.then21 ]
  %storemerge = zext i32 %storemerge.in to i64
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %storemerge, ptr %value, align 8
  %23 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev11, align 8
  %call.i86 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i86, ptr %last_busy.i, align 8
  %26 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev11, align 8
  %call.i87 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #7
  br label %cleanup57

if.end40:                                         ; preds = %if.end
  %28 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb43
    i32 9, label %sw.bb47
    i32 10, label %sw.bb49
    i32 11, label %sw.bb54
  ]

sw.bb:                                            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %value42 = getelementptr inbounds %struct.drm_v3d_get_param, ptr %data, i32 0, i32 2
  %29 = ptrtoint ptr %value42 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1, ptr %value42, align 8
  br label %cleanup57

sw.bb43:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %ver.i = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 1
  %30 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %31)
  %cmp.i = icmp sgt i32 %31, 40
  %conv45 = zext i1 %cmp.i to i64
  %value46 = getelementptr inbounds %struct.drm_v3d_get_param, ptr %data, i32 0, i32 2
  %32 = ptrtoint ptr %value46 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv45, ptr %value46, align 8
  br label %cleanup57

sw.bb47:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %value48 = getelementptr inbounds %struct.drm_v3d_get_param, ptr %data, i32 0, i32 2
  %33 = ptrtoint ptr %value48 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 1, ptr %value48, align 8
  br label %cleanup57

sw.bb49:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %ver = getelementptr inbounds %struct.v3d_dev, ptr %dev, i32 0, i32 1
  %34 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %35)
  %cmp50 = icmp sgt i32 %35, 39
  %36 = zext i1 %cmp50 to i64
  %value53 = getelementptr inbounds %struct.drm_v3d_get_param, ptr %data, i32 0, i32 2
  %37 = ptrtoint ptr %value53 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %value53, align 8
  br label %cleanup57

sw.bb54:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %value55 = getelementptr inbounds %struct.drm_v3d_get_param, ptr %data, i32 0, i32 2
  %38 = ptrtoint ptr %value55 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1, ptr %value55, align 8
  br label %cleanup57

sw.default:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %3) #7
  br label %cleanup57

cleanup57:                                        ; preds = %sw.default, %sw.bb54, %sw.bb49, %sw.bb47, %sw.bb43, %sw.bb, %if.end34, %if.end10.cleanup57_crit_edge, %if.then5.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.1 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb54 ], [ 0, %sw.bb49 ], [ 0, %sw.bb47 ], [ 0, %sw.bb43 ], [ 0, %sw.bb ], [ -22, %entry.cleanup57_crit_edge ], [ 0, %if.end34 ], [ -22, %if.then5.cleanup57_crit_edge ], [ %call.i, %if.end10.cleanup57_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_get_bo_offset_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_submit_tfu_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_submit_csd_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_perfmon_create_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_perfmon_destroy_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v3d_perfmon_get_values_ioctl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_v3d__326_330_v3d_platform_driver_init6, !1, !"__initcall__kmod_v3d__326_330_v3d_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 330, i32 1}
!2 = !{ptr @__exitcall_v3d_platform_driver_exit, !1, !"__exitcall_v3d_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias327, !4, !"__UNIQUE_ID_alias327", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 332, i32 1}
!5 = !{ptr @__UNIQUE_ID_description328, !6, !"__UNIQUE_ID_description328", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 333, i32 1}
!7 = !{ptr @__UNIQUE_ID_author329, !8, !"__UNIQUE_ID_author329", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 334, i32 1}
!9 = !{ptr @__UNIQUE_ID_file330, !10, !"__UNIQUE_ID_file330", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 335, i32 1}
!11 = !{ptr @__UNIQUE_ID_license331, !10, !"__UNIQUE_ID_license331", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 325, i32 11}
!14 = !{ptr @v3d_platform_driver, !15, !"v3d_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 321, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 231, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 235, i32 42}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 248, i32 2}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 258, i32 42}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 260, i32 4}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @v3d_platform_drm_probe._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @v3d_platform_drm_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 267, i32 39}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 275, i32 3}
!35 = !{ptr @v3d_platform_drm_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @v3d_platform_drm_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 193, i32 10}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 194, i32 10}
!41 = !{ptr @v3d_drm_driver, !42, !"v3d_drm_driver", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 170, i32 32}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 157, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 158, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 159, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 160, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 161, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 162, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 163, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 164, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 165, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 166, i32 2}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 167, i32 2}
!65 = !{ptr @v3d_drm_ioctls, !66, !"v3d_drm_ioctls", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 156, i32 36}
!67 = !{ptr @v3d_get_param_ioctl.reg_map, !68, !"reg_map", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 47, i32 19}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 103, i32 3}
!71 = !{ptr @v3d_drm_fops, !72, !"v3d_drm_fops", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 148, i32 1}
!73 = !{ptr @v3d_of_match, !74, !"v3d_of_match", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/v3d/v3d_drv.c", i32 200, i32 34}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 6255677}
!85 = !{i64 2156993517}
!86 = !{i64 2156996481}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2156953241}
!89 = !{i64 2156953784}
