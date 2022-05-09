; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon.75 }
%union.anon.75 = type { %struct.spinlock }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.72, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.72 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.74 = type { i32, ptr }
%struct.lima_drm_priv = type { ptr, %struct.lima_ctx_mgr }
%struct.lima_ctx_mgr = type { %struct.mutex, %struct.xarray }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.lima_vm = type { %struct.mutex, %struct.kref, %struct.drm_mm, ptr, %struct.lima_vm_page, [128 x %struct.lima_vm_page] }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.lima_vm_page = type { ptr, i32 }
%struct.drm_lima_get_param = type { i32, i32, i64 }
%struct.drm_lima_gem_create = type { i32, i32, i32, i32 }
%struct.drm_lima_gem_info = type { i32, i32, i64 }
%struct.lima_submit = type { ptr, i32, i32, ptr, ptr, i32, [2 x i32], i32, ptr }
%struct.drm_lima_gem_submit = type { i32, i32, i32, i32, i64, i64, i32, i32, [2 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.lima_sched_task = type { %struct.drm_sched_job, ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.76, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.76 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.drm_lima_gem_wait = type { i32, i32, i64 }
%struct.drm_lima_ctx_create = type { i32, i32 }
%struct.lima_sched_error_task = type { %struct.list_head, ptr, i32 }

@lima_heap_init_nr_pages = dso_local global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_sched_timeout_ms244 = internal constant [50 x i8] c"lima.parm=sched_timeout_ms:task run timeout in ms\00", section ".modinfo", align 1
@__param_str_sched_timeout_ms = internal constant [22 x i8] c"lima.sched_timeout_ms\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@lima_sched_timeout_ms = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_sched_timeout_ms = internal constant %struct.kernel_param { ptr @__param_str_sched_timeout_ms, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @lima_sched_timeout_ms } }, section "__param", align 4
@__UNIQUE_ID_sched_timeout_mstype245 = internal constant [35 x i8] c"lima.parmtype=sched_timeout_ms:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heap_init_nr_pages246 = internal constant [62 x i8] c"lima.parm=heap_init_nr_pages:heap buffer init number of pages\00", section ".modinfo", align 1
@__param_str_heap_init_nr_pages = internal constant [24 x i8] c"lima.heap_init_nr_pages\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_heap_init_nr_pages = internal constant %struct.kernel_param { ptr @__param_str_heap_init_nr_pages, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @lima_heap_init_nr_pages } }, section "__param", align 4
@__UNIQUE_ID_heap_init_nr_pagestype247 = internal constant [38 x i8] c"lima.parmtype=heap_init_nr_pages:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_error_tasks248 = internal constant [60 x i8] c"lima.parm=max_error_tasks:max number of error tasks to save\00", section ".modinfo", align 1
@__param_str_max_error_tasks = internal constant [21 x i8] c"lima.max_error_tasks\00", align 1
@lima_max_error_tasks = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_error_tasks = internal constant %struct.kernel_param { ptr @__param_str_max_error_tasks, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @lima_max_error_tasks } }, section "__param", align 4
@__UNIQUE_ID_max_error_taskstype249 = internal constant [35 x i8] c"lima.parmtype=max_error_tasks:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_job_hang_limit250 = internal constant [95 x i8] c"lima.parm=job_hang_limit:number of times to allow a job to hang before dropping it (default 0)\00", section ".modinfo", align 1
@__param_str_job_hang_limit = internal constant [20 x i8] c"lima.job_hang_limit\00", align 1
@lima_job_hang_limit = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_job_hang_limit = internal constant %struct.kernel_param { ptr @__param_str_job_hang_limit, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @lima_job_hang_limit } }, section "__param", align 4
@__UNIQUE_ID_job_hang_limittype251 = internal constant [34 x i8] c"lima.parmtype=job_hang_limit:uint\00", section ".modinfo", align 1
@__initcall__kmod_lima__254_485_lima_platform_driver_init6 = internal global ptr @lima_platform_driver_init, section ".initcall6.init", align 4
@lima_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lima_pdev_probe, ptr @lima_pdev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lima_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lima_platform_driver_exit = internal global ptr @lima_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author255 = internal constant [36 x i8] c"lima.author=Lima Project Developers\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [33 x i8] c"lima.description=Lima DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [36 x i8] c"lima.file=drivers/gpu/drm/lima/lima\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [20 x i8] c"lima.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lima\00", [27 x i8] zeroinitializer }, align 32
@dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-450\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lima_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lima_device_suspend, ptr @lima_device_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@lima_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @lima_drm_driver_open, ptr @lima_drm_driver_postclose, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lima_gem_create_object, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_shmem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr null, ptr null, ptr null, i32 1, i32 1, i32 0, ptr @.str, ptr @.str.10, ptr @.str.11, i32 41, ptr @lima_drm_driver_ioctls, i32 7, ptr @lima_drm_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@lima_pdev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Fatal error during devfreq init\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lima_pdev_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/lima/lima_drv.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lima_pdev_probe._entry_ptr = internal global ptr @lima_pdev_probe._entry, section ".printk_index", align 4
@lima_error_state_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.22, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @lima_error_state_read, ptr @lima_error_state_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@lima_pdev_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 426, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fail to create error state sysfs\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lima_pdev_probe._entry_ptr.9 = internal global ptr @lima_pdev_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lima DRM\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20191231\00", [23 x i8] zeroinitializer }, align 32
@lima_drm_driver_ioctls = internal constant { [7 x %struct.drm_ioctl_desc], [48 x i8] } { [7 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @lima_ioctl_get_param, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 -1072667583, i32 32, ptr @lima_ioctl_gem_create, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 -1072667582, i32 32, ptr @lima_ioctl_gem_info, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 1076913219, i32 32, ptr @lima_ioctl_gem_submit, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 1074816068, i32 32, ptr @lima_ioctl_gem_wait, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 -2146933691, i32 32, ptr @lima_ioctl_ctx_create, ptr @.str.17 }, %struct.drm_ioctl_desc { i32 1074291782, i32 32, ptr @lima_ioctl_ctx_free, ptr @.str.18 }], [48 x i8] zeroinitializer }, align 32
@lima_drm_driver_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LIMA_GET_PARAM\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LIMA_GEM_CREATE\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LIMA_GEM_INFO\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LIMA_GEM_SUBMIT\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LIMA_GEM_WAIT\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LIMA_CTX_CREATE\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LIMA_CTX_FREE\00", [18 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.23 = private unnamed_addr constant [24 x i8] c"lima_heap_init_nr_pages\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 20, i32 6 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"lima_sched_timeout_ms\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 19, i32 5 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"lima_max_error_tasks\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 21, i32 6 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"lima_job_hang_limit\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 22, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"lima_platform_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 475, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 479, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"dt_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 463, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"lima_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 470, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"lima_drm_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 264, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 407, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"lima_error_state_attr\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 364, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 426, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 272, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 273, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"lima_drm_driver_ioctls\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 246, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"lima_drm_driver_fops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 256, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 247, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 248, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 249, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 250, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 251, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 252, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 253, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 230, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 214, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 156, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [35 x i8] c"../drivers/gpu/drm/lima/lima_drv.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 365, i32 15 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_heap_init_nr_pages246, ptr @__UNIQUE_ID_heap_init_nr_pagestype247, ptr @__UNIQUE_ID_job_hang_limit250, ptr @__UNIQUE_ID_job_hang_limittype251, ptr @__UNIQUE_ID_license258, ptr @__UNIQUE_ID_max_error_tasks248, ptr @__UNIQUE_ID_max_error_taskstype249, ptr @__UNIQUE_ID_sched_timeout_ms244, ptr @__UNIQUE_ID_sched_timeout_mstype245, ptr @__exitcall_lima_platform_driver_exit, ptr @__initcall__kmod_lima__254_485_lima_platform_driver_init6, ptr @__param_heap_init_nr_pages, ptr @__param_job_hang_limit, ptr @__param_max_error_tasks, ptr @__param_sched_timeout_ms, ptr @lima_pdev_probe._entry, ptr @lima_pdev_probe._entry.6, ptr @lima_pdev_probe._entry_ptr, ptr @lima_pdev_probe._entry_ptr.9, ptr @lima_platform_driver_exit, ptr @lima_heap_init_nr_pages, ptr @lima_sched_timeout_ms, ptr @lima_max_error_tasks, ptr @lima_job_hang_limit, ptr @lima_platform_driver, ptr @.str, ptr @dt_match, ptr @lima_pm_ops, ptr @lima_drm_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lima_error_state_attr, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @lima_drm_driver_ioctls, ptr @lima_drm_driver_fops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_heap_init_nr_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_sched_timeout_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_max_error_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_job_hang_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pdev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_error_state_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pdev_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_drm_driver_ioctls to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_drm_driver_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lima_platform_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lima_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @lima_platform_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_pdev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lima_sched_slab_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 3568, i32 noundef 3520) #11
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.err_out0_crit_edge, label %if.end4

if.end.err_out0_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out0

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 8
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %1 = ptrtoint ptr %call8 to i32
  %id = getelementptr inbounds %struct.lima_device, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %id, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call10 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @lima_drm_driver, ptr noundef %dev) #11
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call10, i32 0, i32 5
  %5 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %dev_private, align 4
  %ddev15 = getelementptr inbounds %struct.lima_device, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %ddev15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %ddev15, align 4
  %call16 = tail call i32 @lima_device_init(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.err_out1_crit_edge

if.end14.err_out1_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out1

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @lima_devfreq_init(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %err_out2

if.end24:                                         ; preds = %if.end19
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 8
  %call.i78 = tail call i32 @__pm_runtime_set_status(ptr noundef %8, i32 noundef 0) #11
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 8
  %call.i79 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i79, ptr %last_busy.i, align 8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %13, i32 noundef 200) #11
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %15, i1 noundef zeroext true) #11
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %17) #11
  %call31 = tail call i32 @drm_dev_register(ptr noundef %call10, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  br i1 %cmp, label %err_out3, label %if.end33

if.end33:                                         ; preds = %if.end24
  %call35 = tail call i32 @sysfs_create_bin_file(ptr noundef %19, ptr noundef nonnull @lima_error_state_attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %do.end40

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.7) #14
  br label %cleanup

err_out3:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__pm_runtime_disable(ptr noundef %19, i1 noundef zeroext true) #11
  tail call void @lima_devfreq_fini(ptr noundef nonnull %call.i) #11
  br label %err_out2

err_out2:                                         ; preds = %err_out3, %do.end
  %err.0 = phi i32 [ %call20, %do.end ], [ %call31, %err_out3 ]
  tail call void @lima_device_fini(ptr noundef nonnull %call.i) #11
  br label %err_out1

err_out1:                                         ; preds = %err_out2, %if.end14.err_out1_crit_edge
  %err.1 = phi i32 [ %call16, %if.end14.err_out1_crit_edge ], [ %err.0, %err_out2 ]
  tail call void @drm_dev_put(ptr noundef %call10) #11
  br label %err_out0

err_out0:                                         ; preds = %err_out1, %if.end.err_out0_crit_edge
  %err.2 = phi i32 [ %err.1, %err_out1 ], [ -12, %if.end.err_out0_crit_edge ]
  tail call void @lima_sched_slab_fini() #11
  br label %cleanup

cleanup:                                          ; preds = %err_out0, %do.end40, %if.end33.cleanup_crit_edge, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then12 ], [ %err.2, %err_out0 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end40 ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_pdev_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ddev1 = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ddev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @sysfs_remove_bin_file(ptr noundef %5, ptr noundef nonnull @lima_error_state_attr) #11
  tail call void @drm_dev_unregister(ptr noundef %3) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %7, i32 noundef -1) #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #11
  tail call void @lima_devfreq_fini(ptr noundef %1) #11
  tail call void @lima_device_fini(ptr noundef %1) #11
  tail call void @drm_dev_put(ptr noundef %3) #11
  tail call void @lima_sched_slab_fini() #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_sched_slab_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_devfreq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_devfreq_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_device_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_sched_slab_fini() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_drm_driver_open(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 148) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @lima_vm_create(ptr noundef %1) #11
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %call7.i.i, align 8
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctx_mgr = getelementptr inbounds %struct.lima_drm_priv, ptr %call7.i.i, i32 0, i32 1
  tail call void @lima_ctx_mgr_init(ptr noundef %ctx_mgr) #11
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %4 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_drm_driver_postclose(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %ctx_mgr = getelementptr inbounds %struct.lima_drm_priv, ptr %1, i32 0, i32 1
  tail call void @lima_ctx_mgr_fini(ptr noundef %ctx_mgr) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.lima_vm_put.exit_crit_edge, label %if.then.i

entry.lima_vm_put.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lima_vm_put.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.lima_vm, ptr %3, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !108
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !109
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !110

if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lima_vm_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %lima_vm_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  tail call void @lima_vm_release(ptr noundef %refcount.i) #11
  br label %lima_vm_put.exit

lima_vm_put.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lima_vm_put.exit_crit_edge, %entry.lima_vm_put.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_gem_create_object(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_vm_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_ctx_mgr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_ctx_mgr_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_vm_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lima_ioctl_get_param(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %pad = getelementptr inbounds %struct.drm_lima_get_param, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
    i32 3, label %sw.bb10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %switch.selectcmp = icmp eq i32 %8, 1
  %switch.select = select i1 %switch.selectcmp, i64 2, i64 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %switch.selectcmp26 = icmp eq i32 %8, 0
  %switch.select27 = select i1 %switch.selectcmp26, i64 1, i64 %switch.select
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %num_processor = getelementptr %struct.lima_device, ptr %1, i32 0, i32 12, i32 1, i32 12
  %9 = ptrtoint ptr %num_processor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_processor, align 4
  %conv = sext i32 %10 to i64
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %gp_version = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %gp_version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gp_version, align 4
  %conv8 = zext i32 %12 to i64
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pp_version = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %pp_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pp_version, align 8
  %conv11 = zext i32 %14 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb10, %sw.bb7, %sw.bb5, %sw.bb
  %conv.sink = phi i64 [ %conv, %sw.bb5 ], [ %conv8, %sw.bb7 ], [ %conv11, %sw.bb10 ], [ %switch.select27, %sw.bb ]
  %value6 = getelementptr inbounds %struct.drm_lima_get_param, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %value6 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv.sink, ptr %value6, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_ioctl_gem_create(ptr noundef %dev, ptr noundef %data, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.drm_lima_gem_create, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_lima_gem_create, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %tobool1.not = icmp ult i32 %3, 2
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %handle = getelementptr inbounds %struct.drm_lima_gem_create, ptr %data, i32 0, i32 2
  %call = tail call i32 @lima_gem_create_handle(ptr noundef %dev, ptr noundef %file, i32 noundef %5, i32 noundef %3, ptr noundef %handle) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_ioctl_gem_info(ptr nocapture noundef readnone %dev, ptr noundef %data, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %va = getelementptr inbounds %struct.drm_lima_gem_info, ptr %data, i32 0, i32 1
  %offset = getelementptr inbounds %struct.drm_lima_gem_info, ptr %data, i32 0, i32 2
  %call = tail call i32 @lima_gem_get_info(ptr noundef %file, i32 noundef %1, ptr noundef %va, ptr noundef %offset) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_ioctl_gem_submit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %file) #2 align 64 {
entry:
  %submit = alloca %struct.lima_submit, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %submit) #11
  %4 = call ptr @memset(ptr %submit, i32 0, i32 40)
  %pipe1 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pipe1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nr_bos = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_bos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %data, i32 0, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %tobool.not = icmp ult i32 %10, 2
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pipe5 = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 12
  %add.ptr = getelementptr %struct.lima_sched_pipe, ptr %pipe5, i32 %6
  %frame_size = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_size, align 4
  %frame_size7 = getelementptr %struct.lima_sched_pipe, ptr %pipe5, i32 %6, i32 18
  %13 = ptrtoint ptr %frame_size7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_size7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp8.not = icmp eq i32 %12, %14
  br i1 %cmp8.not, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 12) #11
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end10.cleanup_crit_edge, label %kvcalloc.exit, !prof !112

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

kvcalloc.exit:                                    ; preds = %if.end10
  %17 = extractvalue { i32, i1 } %15, 0
  %call.i.i.i154 = tail call noalias ptr @kvmalloc_node(i32 noundef %17, i32 noundef 3520, i32 noundef -1) #16
  %tobool13.not = icmp eq ptr %call.i.i.i154, null
  br i1 %tobool13.not, label %kvcalloc.exit.cleanup_crit_edge, label %if.end15

kvcalloc.exit.cleanup_crit_edge:                  ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %kvcalloc.exit
  %18 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_bos, align 8
  %mul = shl i32 %19, 3
  %bos19 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %data, i32 0, i32 4
  %20 = ptrtoint ptr %bos19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bos19, align 8
  %conv20 = trunc i64 %21 to i32
  %22 = inttoptr i32 %conv20 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end15
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.out0_crit_edge, label %if.then27.i.i, !prof !110

land.rhs16.i.i.out0_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out0

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %out0

if.then.i.i.i:                                    ; preds = %if.end15
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i.i154, i32 noundef %mul, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 %mul, i32 -1226833920) #17, !srcloc !113
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !110

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i.i154, i32 noundef %mul) #11
  %24 = tail call i32 @llvm.read_register.i32(metadata !98) #11
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !114
  %and.i.i.i.i = and i32 %26, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i.i154, ptr noundef %22, i32 noundef %mul) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end24, label %if.then11.i.i, !prof !110

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i154, i32 %sub.i.i
  %27 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out0

if.end24:                                         ; preds = %if.end.i.i
  %task_slab = getelementptr %struct.lima_sched_pipe, ptr %pipe5, i32 %6, i32 19
  %28 = ptrtoint ptr %task_slab to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task_slab, align 8
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %29, i32 noundef 3520) #11
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %if.end24.out0_crit_edge, label %if.end28

if.end24.out0_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out0

if.end28:                                         ; preds = %if.end24
  %add.ptr29 = getelementptr %struct.lima_sched_task, ptr %call.i, i32 1
  %frame = getelementptr inbounds %struct.lima_sched_task, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr29, ptr %frame, align 4
  %frame37 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %data, i32 0, i32 5
  %31 = ptrtoint ptr %frame37 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %frame37, align 8
  %conv38 = trunc i64 %32 to i32
  %33 = inttoptr i32 %conv38 to ptr
  %34 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp9.i.i127 = icmp slt i32 %35, 0
  br i1 %cmp9.i.i127, label %land.rhs16.i.i130, label %if.then.i.i.i133

land.rhs16.i.i130:                                ; preds = %if.end28
  %.b1.i.i129 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i129, label %land.rhs16.i.i130.if.then72_crit_edge, label %if.then27.i.i131, !prof !110

land.rhs16.i.i130.if.then72_crit_edge:            ; preds = %land.rhs16.i.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

if.then27.i.i131:                                 ; preds = %land.rhs16.i.i130
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then72

if.then.i.i.i133:                                 ; preds = %if.end28
  tail call void @__check_object_size(ptr noundef %add.ptr29, i32 noundef %35, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #11
  %call.i.i134 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i134, label %if.then.i.i.i133.if.end.i.i148_crit_edge, label %land.lhs.true.i.i138

if.then.i.i.i133.if.end.i.i148_crit_edge:         ; preds = %if.then.i.i.i133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i148

land.lhs.true.i.i138:                             ; preds = %if.then.i.i.i133
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 %35, i32 -1226833920) #17, !srcloc !113
  %asmresult.i.i136 = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i136)
  %cmp.i6.i137 = icmp eq i32 %asmresult.i.i136, 0
  br i1 %cmp.i6.i137, label %if.then.i7.i145, label %land.lhs.true.i.i138.if.end.i.i148_crit_edge, !prof !110

land.lhs.true.i.i138.if.end.i.i148_crit_edge:     ; preds = %land.lhs.true.i.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i148

if.then.i7.i145:                                  ; preds = %land.lhs.true.i.i138
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i139 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr29, i32 noundef %35) #11
  %37 = tail call i32 @llvm.read_register.i32(metadata !98) #11
  %and.i.i.i.i.i.i140 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i140 to ptr
  %cpu_domain.i.i.i.i.i141 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i141) #10, !srcloc !114
  %and.i.i.i.i142 = and i32 %39, -13
  %or.i.i.i.i143 = or i32 %and.i.i.i.i142, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i143) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %call1.i.i.i144 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr29, ptr noundef %33, i32 noundef %35) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  br label %if.end.i.i148

if.end.i.i148:                                    ; preds = %if.then.i7.i145, %land.lhs.true.i.i138.if.end.i.i148_crit_edge, %if.then.i.i.i133.if.end.i.i148_crit_edge
  %res.0.i.i146 = phi i32 [ %35, %if.then.i.i.i133.if.end.i.i148_crit_edge ], [ %call1.i.i.i144, %if.then.i7.i145 ], [ %35, %land.lhs.true.i.i138.if.end.i.i148_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i146)
  %tobool4.not.i.i147 = icmp eq i32 %res.0.i.i146, 0
  br i1 %tobool4.not.i.i147, label %if.end43, label %if.then11.i.i151, !prof !110

if.then11.i.i151:                                 ; preds = %if.end.i.i148
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i149 = sub i32 %35, %res.0.i.i146
  %add.ptr.i.i150 = getelementptr i8, ptr %add.ptr29, i32 %sub.i.i149
  %40 = call ptr @memset(ptr %add.ptr.i.i150, i32 0, i32 %res.0.i.i146)
  br label %if.then72

if.end43:                                         ; preds = %if.end.i.i148
  %task_validate = getelementptr %struct.lima_sched_pipe, ptr %pipe5, i32 %6, i32 20
  %41 = ptrtoint ptr %task_validate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task_validate, align 4
  %call44 = tail call i32 %42(ptr noundef %add.ptr, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.if.then72_crit_edge

if.end43.if.then72_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

if.end47:                                         ; preds = %if.end43
  %ctx_mgr = getelementptr inbounds %struct.lima_drm_priv, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data, align 8
  %call49 = tail call ptr @lima_ctx_get(ptr noundef %ctx_mgr, i32 noundef %44) #11
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end47.if.then72_crit_edge, label %out1

if.end47.if.then72_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

out1:                                             ; preds = %if.end47
  %45 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pipe1, align 4
  %pipe54 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 1
  %47 = ptrtoint ptr %pipe54 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %pipe54, align 4
  %bos55 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 3
  %48 = ptrtoint ptr %bos55 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i.i.i154, ptr %bos55, align 4
  %add.ptr56 = getelementptr i8, ptr %call.i.i.i154, i32 %mul
  %lbos = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 4
  %49 = ptrtoint ptr %lbos to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr56, ptr %lbos, align 4
  %50 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_bos, align 8
  %nr_bos58 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 5
  %52 = ptrtoint ptr %nr_bos58 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %nr_bos58, align 4
  %task59 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 8
  %53 = ptrtoint ptr %task59 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %task59, align 4
  %54 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call49, ptr %submit, align 4
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 8
  %flags62 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 2
  %57 = ptrtoint ptr %flags62 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %flags62, align 4
  %in_sync = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %data, i32 0, i32 8
  %58 = ptrtoint ptr %in_sync to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %in_sync, align 8
  %in_sync63 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 6
  %60 = ptrtoint ptr %in_sync63 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %in_sync63, align 4
  %arrayidx66 = getelementptr %struct.drm_lima_gem_submit, ptr %data, i32 0, i32 8, i32 1
  %61 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx66, align 4
  %arrayidx68 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx68, align 4
  %out_sync = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %data, i32 0, i32 7
  %64 = ptrtoint ptr %out_sync to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %out_sync, align 4
  %out_sync69 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 7
  %66 = ptrtoint ptr %out_sync69 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %out_sync69, align 4
  %call70 = call i32 @lima_gem_submit(ptr noundef %file, ptr noundef nonnull %submit) #11
  call void @lima_ctx_put(ptr noundef nonnull %call49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %out1.out0_crit_edge, label %out1.if.then72_crit_edge

out1.if.then72_crit_edge:                         ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

out1.out0_crit_edge:                              ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #13
  br label %out0

if.then72:                                        ; preds = %out1.if.then72_crit_edge, %if.end47.if.then72_crit_edge, %if.end43.if.then72_crit_edge, %if.then11.i.i151, %if.then27.i.i131, %land.rhs16.i.i130.if.then72_crit_edge
  %err.0171 = phi i32 [ %call70, %out1.if.then72_crit_edge ], [ -2, %if.end47.if.then72_crit_edge ], [ %call44, %if.end43.if.then72_crit_edge ], [ -14, %if.then11.i.i151 ], [ -14, %if.then27.i.i131 ], [ -14, %land.rhs16.i.i130.if.then72_crit_edge ]
  %67 = ptrtoint ptr %task_slab to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task_slab, align 8
  call void @kmem_cache_free(ptr noundef %68, ptr noundef nonnull %call.i) #11
  br label %out0

out0:                                             ; preds = %if.then72, %out1.out0_crit_edge, %if.end24.out0_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.out0_crit_edge
  %err.1 = phi i32 [ %err.0171, %if.then72 ], [ 0, %out1.out0_crit_edge ], [ -12, %if.end24.out0_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out0_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i154) #11
  br label %cleanup

cleanup:                                          ; preds = %out0, %kvcalloc.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out0 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -12, %kvcalloc.exit.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %submit) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_ioctl_gem_wait(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %op = getelementptr inbounds %struct.drm_lima_gem_wait, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %tobool.not = icmp ult i32 %1, 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %timeout_ns = getelementptr inbounds %struct.drm_lima_gem_wait, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %timeout_ns, align 8
  %call = tail call i32 @lima_gem_wait(ptr noundef %file, i32 noundef %3, i32 noundef %1, i64 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_ioctl_ctx_create(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %_pad = getelementptr inbounds %struct.drm_lima_ctx_create, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %_pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %4 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_priv, align 4
  %ctx_mgr = getelementptr inbounds %struct.lima_drm_priv, ptr %5, i32 0, i32 1
  %call1 = tail call i32 @lima_ctx_create(ptr noundef %3, ptr noundef %ctx_mgr, ptr noundef %data) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_ioctl_ctx_free(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %_pad = getelementptr inbounds %struct.drm_lima_ctx_create, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %_pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %ctx_mgr = getelementptr inbounds %struct.lima_drm_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %call = tail call i32 @lima_ctx_free(ptr noundef %ctx_mgr, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gem_create_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gem_get_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_ctx_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gem_submit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_ctx_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gem_wait(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_ctx_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_ctx_free(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_error_state_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %conv = trunc i64 %off to i32
  %error_task_list_lock = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %error_task_list_lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv)
  %cmp.i = icmp ult i32 %conv, 32
  br i1 %cmp.i, label %if.then.i, label %entry.lima_read_block.exit_crit_edge

entry.lima_read_block.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lima_read_block.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dump = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 19
  %sub.i = sub nuw nsw i32 32, %conv
  %2 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %count) #11
  %add.ptr.i = getelementptr i8, ptr %dump, i32 %conv
  %3 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i, i32 %2)
  %add.ptr7.i = getelementptr i8, ptr %buf, i32 %2
  %add9.i = add nuw nsw i32 %2, %conv
  %sub12.i = sub i32 %count, %2
  br label %lima_read_block.exit

lima_read_block.exit:                             ; preds = %if.then.i, %entry.lima_read_block.exit_crit_edge
  %reader.sroa.34.0 = phi i32 [ %2, %if.then.i ], [ 0, %entry.lima_read_block.exit_crit_edge ]
  %reader.sroa.26.0 = phi i32 [ %add9.i, %if.then.i ], [ %conv, %entry.lima_read_block.exit_crit_edge ]
  %reader.sroa.16.0 = phi i32 [ %sub12.i, %if.then.i ], [ %count, %entry.lima_read_block.exit_crit_edge ]
  %reader.sroa.0.0 = phi ptr [ %add.ptr7.i, %if.then.i ], [ %buf, %entry.lima_read_block.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reader.sroa.16.0)
  %tobool.i.not = icmp eq i32 %reader.sroa.16.0, 0
  br i1 %tobool.i.not, label %lima_read_block.exit.if.end14_crit_edge, label %if.then

lima_read_block.exit.if.end14_crit_edge:          ; preds = %lima_read_block.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then:                                          ; preds = %lima_read_block.exit
  %error_task_list = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 20
  br label %for.cond

for.cond:                                         ; preds = %lima_read_block.exit40.for.cond_crit_edge, %if.then
  %reader.sroa.34.1 = phi i32 [ %reader.sroa.34.0, %if.then ], [ %reader.sroa.34.2, %lima_read_block.exit40.for.cond_crit_edge ]
  %reader.sroa.26.1 = phi i32 [ %reader.sroa.26.0, %if.then ], [ %reader.sroa.26.2, %lima_read_block.exit40.for.cond_crit_edge ]
  %reader.sroa.16.1 = phi i32 [ %reader.sroa.16.0, %if.then ], [ %reader.sroa.16.2, %lima_read_block.exit40.for.cond_crit_edge ]
  %reader.sroa.10.0 = phi i32 [ 32, %if.then ], [ %add.i25, %lima_read_block.exit40.for.cond_crit_edge ]
  %reader.sroa.0.1 = phi ptr [ %reader.sroa.0.0, %if.then ], [ %reader.sroa.0.2, %lima_read_block.exit40.for.cond_crit_edge ]
  %et.0.in = phi ptr [ %error_task_list, %if.then ], [ %et.0, %lima_read_block.exit40.for.cond_crit_edge ]
  %4 = ptrtoint ptr %et.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %et.0 = load ptr, ptr %et.0.in, align 4
  %cmp.not = icmp eq ptr %et.0, %error_task_list
  br i1 %cmp.not, label %for.cond.if.end14_crit_edge, label %for.body

for.cond.if.end14_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

for.body:                                         ; preds = %for.cond
  %size = getelementptr inbounds %struct.lima_sched_error_task, ptr %et.0, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %add.i25 = add i32 %6, %reader.sroa.10.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i25, i32 %reader.sroa.26.1)
  %cmp.i27 = icmp ugt i32 %add.i25, %reader.sroa.26.1
  br i1 %cmp.i27, label %if.then.i37, label %for.body.lima_read_block.exit40_crit_edge

for.body.lima_read_block.exit40_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %lima_read_block.exit40

if.then.i37:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.lima_sched_error_task, ptr %et.0, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %sub.i28 = sub i32 %add.i25, %reader.sroa.26.1
  %9 = tail call i32 @llvm.umin.i32(i32 %sub.i28, i32 %reader.sroa.16.1) #11
  %sub5.i30 = sub i32 %reader.sroa.26.1, %reader.sroa.10.0
  %add.ptr.i31 = getelementptr i8, ptr %8, i32 %sub5.i30
  %10 = call ptr @memcpy(ptr %reader.sroa.0.1, ptr %add.ptr.i31, i32 %9)
  %add.ptr7.i32 = getelementptr i8, ptr %reader.sroa.0.1, i32 %9
  %add9.i33 = add i32 %9, %reader.sroa.26.1
  %add10.i35 = add i32 %9, %reader.sroa.34.1
  %sub12.i36 = sub i32 %reader.sroa.16.1, %9
  br label %lima_read_block.exit40

lima_read_block.exit40:                           ; preds = %if.then.i37, %for.body.lima_read_block.exit40_crit_edge
  %reader.sroa.34.2 = phi i32 [ %add10.i35, %if.then.i37 ], [ %reader.sroa.34.1, %for.body.lima_read_block.exit40_crit_edge ]
  %reader.sroa.26.2 = phi i32 [ %add9.i33, %if.then.i37 ], [ %reader.sroa.26.1, %for.body.lima_read_block.exit40_crit_edge ]
  %reader.sroa.16.2 = phi i32 [ %sub12.i36, %if.then.i37 ], [ %reader.sroa.16.1, %for.body.lima_read_block.exit40_crit_edge ]
  %reader.sroa.0.2 = phi ptr [ %add.ptr7.i32, %if.then.i37 ], [ %reader.sroa.0.1, %for.body.lima_read_block.exit40_crit_edge ]
  %tobool.i39.not = icmp eq i32 %reader.sroa.16.2, 0
  br i1 %tobool.i39.not, label %lima_read_block.exit40.if.end14_crit_edge, label %lima_read_block.exit40.for.cond_crit_edge

lima_read_block.exit40.for.cond_crit_edge:        ; preds = %lima_read_block.exit40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

lima_read_block.exit40.if.end14_crit_edge:        ; preds = %lima_read_block.exit40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %lima_read_block.exit40.if.end14_crit_edge, %for.cond.if.end14_crit_edge, %lima_read_block.exit.if.end14_crit_edge
  %reader.sroa.34.3 = phi i32 [ %reader.sroa.34.0, %lima_read_block.exit.if.end14_crit_edge ], [ %reader.sroa.34.2, %lima_read_block.exit40.if.end14_crit_edge ], [ %reader.sroa.34.1, %for.cond.if.end14_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %error_task_list_lock) #11
  ret i32 %reader.sroa.34.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_error_state_write(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i64 noundef %off, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %error_task_list_lock = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %error_task_list_lock, i32 noundef 0) #11
  %error_task_list = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %error_task_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %error_task_list, align 8
  %cmp.not26 = icmp eq ptr %3, %error_task_list
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %et.027 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %et.027 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %et.027, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %et.027) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %et.027, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %et.027 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %et.027, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %et.027 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %et.027, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %et.027, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kvfree(ptr noundef %et.027) #11
  %cmp.not = icmp eq ptr %tmp.0, %error_task_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %size = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 19, i32 4
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %size, align 4
  %num_tasks = getelementptr inbounds %struct.lima_device, ptr %1, i32 0, i32 19, i32 3
  %14 = ptrtoint ptr %num_tasks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %num_tasks, align 8
  tail call void @mutex_unlock(ptr noundef %error_task_list_lock) #11
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_device_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_device_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !25, !27, !29, !31, !32, !34, !36, !38, !39, !40, !41, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !86, !88, !90, !92, !94, !96}
!llvm.named.register.sp = !{!98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @lima_heap_init_nr_pages, !1, !"lima_heap_init_nr_pages", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 20, i32 6}
!2 = !{ptr @__UNIQUE_ID_sched_timeout_ms244, !3, !"__UNIQUE_ID_sched_timeout_ms244", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 24, i32 1}
!4 = !{ptr @__param_sched_timeout_ms, !5, !"__param_sched_timeout_ms", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_sched_timeout_mstype245, !5, !"__UNIQUE_ID_sched_timeout_mstype245", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_heap_init_nr_pages246, !8, !"__UNIQUE_ID_heap_init_nr_pages246", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 27, i32 1}
!9 = !{ptr @__param_heap_init_nr_pages, !10, !"__param_heap_init_nr_pages", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 28, i32 1}
!11 = !{ptr @__UNIQUE_ID_heap_init_nr_pagestype247, !10, !"__UNIQUE_ID_heap_init_nr_pagestype247", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_max_error_tasks248, !13, !"__UNIQUE_ID_max_error_tasks248", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 30, i32 1}
!14 = !{ptr @__param_max_error_tasks, !15, !"__param_max_error_tasks", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 31, i32 1}
!16 = !{ptr @__UNIQUE_ID_max_error_taskstype249, !15, !"__UNIQUE_ID_max_error_taskstype249", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_job_hang_limit250, !18, !"__UNIQUE_ID_job_hang_limit250", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 33, i32 1}
!19 = !{ptr @__param_job_hang_limit, !20, !"__param_job_hang_limit", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 34, i32 1}
!21 = !{ptr @__UNIQUE_ID_job_hang_limittype251, !20, !"__UNIQUE_ID_job_hang_limittype251", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_lima__254_485_lima_platform_driver_init6, !23, !"__initcall__kmod_lima__254_485_lima_platform_driver_init6", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 485, i32 1}
!24 = !{ptr @__exitcall_lima_platform_driver_exit, !23, !"__exitcall_lima_platform_driver_exit", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_author255, !26, !"__UNIQUE_ID_author255", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 487, i32 1}
!27 = !{ptr @__UNIQUE_ID_description256, !28, !"__UNIQUE_ID_description256", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 488, i32 1}
!29 = !{ptr @__UNIQUE_ID_file257, !30, !"__UNIQUE_ID_file257", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 489, i32 1}
!31 = !{ptr @__UNIQUE_ID_license258, !30, !"__UNIQUE_ID_license258", i1 false, i1 false}
!32 = !{ptr @lima_sched_timeout_ms, !33, !"lima_sched_timeout_ms", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 19, i32 5}
!34 = !{ptr @lima_max_error_tasks, !35, !"lima_max_error_tasks", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 21, i32 6}
!36 = !{ptr @lima_job_hang_limit, !37, !"lima_job_hang_limit", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 22, i32 6}
!38 = !{ptr @__param_str_sched_timeout_ms, !5, !"__param_str_sched_timeout_ms", i1 false, i1 false}
!39 = !{ptr @__param_str_heap_init_nr_pages, !10, !"__param_str_heap_init_nr_pages", i1 false, i1 false}
!40 = !{ptr @__param_str_max_error_tasks, !15, !"__param_str_max_error_tasks", i1 false, i1 false}
!41 = !{ptr @__param_str_job_hang_limit, !20, !"__param_str_job_hang_limit", i1 false, i1 false}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 479, i32 13}
!44 = !{ptr @lima_platform_driver, !45, !"lima_platform_driver", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 475, i32 31}
!46 = !{ptr @.str.1, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 407, i32 3}
!48 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.3, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lima_pdev_probe._entry, !47, !"_entry", i1 false, i1 false}
!53 = !{ptr @lima_pdev_probe._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 426, i32 3}
!56 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @lima_pdev_probe._entry.6, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @lima_pdev_probe._entry_ptr.9, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 272, i32 24}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 273, i32 24}
!63 = !{ptr @lima_drm_driver, !64, !"lima_drm_driver", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 264, i32 32}
!65 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 247, i32 2}
!67 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 248, i32 2}
!69 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 249, i32 2}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 250, i32 2}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 251, i32 2}
!75 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 252, i32 2}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 253, i32 2}
!79 = !{ptr @lima_drm_driver_ioctls, !80, !"lima_drm_driver_ioctls", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 246, i32 36}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!83 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!88 = !{ptr @lima_drm_driver_fops, !89, !"lima_drm_driver_fops", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 256, i32 1}
!90 = !{ptr @.str.22, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 365, i32 15}
!92 = !{ptr @lima_error_state_attr, !93, !"lima_error_state_attr", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 364, i32 35}
!94 = !{ptr @dt_match, !95, !"dt_match", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 463, i32 34}
!96 = !{ptr @lima_pm_ops, !97, !"lima_pm_ops", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/lima/lima_drv.c", i32 470, i32 32}
!98 = !{!"sp"}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 2148439804}
!109 = !{i64 2148354244, i64 2148354276, i64 2148354305, i64 2148354339, i64 2148354370, i64 2148354393}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2149315918}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 2152485600, i64 2152485625}
!114 = !{i64 4981155}
!115 = !{i64 4981352}
!116 = !{i64 2152466585}
