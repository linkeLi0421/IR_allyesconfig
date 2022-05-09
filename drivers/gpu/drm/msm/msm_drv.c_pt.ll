; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.95, ptr, i32, ptr, i8, i32 }
%struct.anon.88 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.95 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.115, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.115 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.msm_vblank_work = type { %struct.work_struct, i32, i8, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.msm_mdss = type { ptr, ptr }
%struct.msm_mdss_funcs = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.109, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.109 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.85, ptr }
%union.anon.85 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.drm_msm_param = type { i32, i32, i64 }
%struct.drm_msm_gem_new = type { i64, i32, i32 }
%struct.drm_msm_gem_info = type { i32, i32, i64, i32, i32 }
%struct.msm_gem_object = type { %struct.drm_gem_object, i32, i8, i8, i8, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.list_head, ptr, [32 x i8], i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_msm_gem_cpu_prep = type { i32, i32, %struct.drm_msm_timespec }
%struct.drm_msm_timespec = type { i64, i64 }
%struct.drm_msm_wait_fence = type { i32, i32, %struct.drm_msm_timespec, i32 }
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.90, i64, i64, i32, %struct.kref, i32 }
%union.anon.90 = type { i64 }
%struct.drm_msm_gem_madvise = type { i32, i32, i32 }
%struct.drm_msm_submitqueue = type { i32, i32, i32 }

@__UNIQUE_ID_reglog349 = internal constant [51 x i8] c"msm.parm=reglog:Enable register read/write logging\00", section ".modinfo", align 1
@__param_str_reglog = internal constant [11 x i8] c"msm.reglog\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@reglog = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reglog = internal constant %struct.kernel_param { ptr @__param_str_reglog, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @reglog } }, section "__param", align 4
@__UNIQUE_ID_reglogtype350 = internal constant [25 x i8] c"msm.parmtype=reglog:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fbdev351 = internal constant [41 x i8] c"msm.parm=fbdev:Enable fbdev compat layer\00", section ".modinfo", align 1
@__param_str_fbdev = internal constant [10 x i8] c"msm.fbdev\00", align 1
@fbdev = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_fbdev = internal constant %struct.kernel_param { ptr @__param_str_fbdev, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @fbdev } }, section "__param", align 4
@__UNIQUE_ID_fbdevtype352 = internal constant [24 x i8] c"msm.parmtype=fbdev:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_vram353 = internal constant [69 x i8] c"msm.parm=vram:Configure VRAM size (for devices without IOMMU/GPUMMU)\00", section ".modinfo", align 1
@__param_str_vram = internal constant [9 x i8] c"msm.vram\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@vram = internal global { ptr, [28 x i8] } { ptr @.str.12, [28 x i8] zeroinitializer }, align 32
@__param_vram = internal constant %struct.kernel_param { ptr @__param_str_vram, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @vram } }, section "__param", align 4
@__UNIQUE_ID_vramtype354 = internal constant [24 x i8] c"msm.parmtype=vram:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_dumpstate355 = internal constant [44 x i8] c"msm.parm=dumpstate:Dump KMS state on errors\00", section ".modinfo", align 1
@__param_str_dumpstate = internal constant [14 x i8] c"msm.dumpstate\00", align 1
@dumpstate = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dumpstate = internal constant %struct.kernel_param { ptr @__param_str_dumpstate, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @dumpstate } }, section "__param", align 4
@__UNIQUE_ID_dumpstatetype356 = internal constant [28 x i8] c"msm.parmtype=dumpstate:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_modeset357 = internal constant [74 x i8] c"msm.parm=modeset:Use kernel modesetting [KMS] (1=on (default), 0=disable)\00", section ".modinfo", align 1
@__param_str_modeset = internal constant [12 x i8] c"msm.modeset\00", align 1
@modeset = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_modeset = internal constant %struct.kernel_param { ptr @__param_str_modeset, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @modeset } }, section "__param", align 4
@__UNIQUE_ID_modesettype358 = internal constant [26 x i8] c"msm.parmtype=modeset:bool\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_clk\00", [25 x i8] zeroinitializer }, align 32
@msm_clk_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 121, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Using legacy clk name binding.  Use \22%s\22 instead of \22%s\22\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msm_clk_get\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/msm/msm_drv.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_clk_get._entry_ptr = internal global ptr @msm_clk_get._entry, section ".printk_index", align 4
@msm_writel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017IO:W %p %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msm_writel\00", [21 x i8] zeroinitializer }, align 32
@msm_writel._entry_ptr = internal global ptr @msm_writel._entry, section ".printk_index", align 4
@msm_readl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013IO:R %p %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msm_readl\00", [22 x i8] zeroinitializer }, align 32
@msm_readl._entry_ptr = internal global ptr @msm_readl._entry, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"crtc=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fini\0A\00", [26 x i8] zeroinitializer }, align 32
@msm_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msm_pdev_probe, ptr @msm_pdev_remove, ptr @msm_pdev_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.19, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_msm__359_1485_msm_drm_register6 = internal global ptr @msm_drm_register, section ".initcall6.init", align 4
@__exitcall_msm_drm_unregister = internal global ptr @msm_drm_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author360 = internal constant [42 x i8] c"msm.author=Rob Clark <robdclark@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [31 x i8] c"msm.description=MSM DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file362 = internal constant [33 x i8] c"msm.file=drivers/gpu/drm/msm/msm\00", section ".modinfo", align 1
@__UNIQUE_ID_license363 = internal constant [16 x i8] c"msm.license=GPL\00", section ".modinfo", align 1
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"16m\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to get memory resource: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* failed to ioremap: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@_msm_ioremap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017IO:region %s %p %08lx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_msm_ioremap\00", [19 x i8] zeroinitializer }, align 32
@_msm_ioremap._entry_ptr = internal global ptr @_msm_ioremap._entry, section ".printk_index", align 4
@vblank_ctrl_queue_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&vbl_work->work)\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@dt_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdp4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@msm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @msm_pm_prepare, ptr @msm_pm_complete, ptr @msm_pm_suspend, ptr @msm_pm_resume, ptr @msm_pm_suspend, ptr @msm_pm_resume, ptr @msm_pm_suspend, ptr @msm_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_runtime_suspend, ptr @msm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@msm_drm_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @msm_drm_bind, ptr @msm_drm_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to populate children devices\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to find MDSS MDP node\0A\00", [58 x i8] zeroinitializer }, align 32
@dpu_dt_match = external dso_local constant [0 x %struct.of_device_id], align 4
@mdp5_dt_match = external dso_local constant [0 x %struct.of_device_id], align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom,mdp4\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* unable to parse port endpoint\0A\00", [57 x i8] zeroinitializer }, align 32
@msm_gpu_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,adreno\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,adreno-3xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amd,imageon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,kgsl-3d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@msm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @msm_open, ptr @msm_postclose, ptr @drm_fb_helper_lastclose, ptr null, ptr null, ptr null, ptr null, ptr @msm_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @msm_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @msm_gem_dumb_create, ptr @msm_gem_dumb_map_offset, ptr null, i32 1, i32 8, i32 0, ptr @.str.19, ptr @.str.45, ptr @.str.46, i32 59, ptr @msm_ioctls, i32 13, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to allocate drm_device\0A\00", [57 x i8] zeroinitializer }, align 32
@msm_drm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->obj_lock\00", [16 x i8] zeroinitializer }, align 32
@msm_drm_init.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->mm_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"*ERROR* failed to load kms\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* kms hw init failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @msm_framebuffer_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mode_config_helper_funcs = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @msm_atomic_commit_tail, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"crtc_event:%d\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to create crtc_event kthread\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to initialize vblank\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to install IRQ handler\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"*ERROR* msm_disp_snapshot_init failed ret = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@msm_init_vram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] using VRAM carveout: %lx@%pa\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msm_init_vram\00", [18 x i8] zeroinitializer }, align 32
@msm_init_vram._entry_ptr = internal global ptr @msm_init_vram._entry, section ".printk_index", align 4
@msm_init_vram._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016[drm] using %s VRAM carveout\0A\00", [32 x i8] zeroinitializer }, align 32
@msm_init_vram._entry_ptr.40 = internal global ptr @msm_init_vram._entry.38, section ".printk_index", align 4
@msm_init_vram.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->vram.lock\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* failed to allocate VRAM\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VRAM: %08x->%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MSM Snapdragon DRM\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20130625\00", [23 x i8] zeroinitializer }, align 32
@msm_ioctls = internal constant { [13 x %struct.drm_ioctl_desc], [48 x i8] } { [13 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @msm_ioctl_get_param, ptr @.str.50 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667582, i32 32, ptr @msm_ioctl_gem_new, ptr @.str.51 }, %struct.drm_ioctl_desc { i32 -1072143293, i32 32, ptr @msm_ioctl_gem_info, ptr @.str.52 }, %struct.drm_ioctl_desc { i32 1075340356, i32 32, ptr @msm_ioctl_gem_cpu_prep, ptr @.str.53 }, %struct.drm_ioctl_desc { i32 1074029637, i32 32, ptr @msm_ioctl_gem_cpu_fini, ptr @.str.54 }, %struct.drm_ioctl_desc { i32 -1068997562, i32 32, ptr @msm_ioctl_gem_submit, ptr @.str.55 }, %struct.drm_ioctl_desc { i32 1075864647, i32 32, ptr @msm_ioctl_wait_fence, ptr @.str.56 }, %struct.drm_ioctl_desc { i32 -1072929720, i32 32, ptr @msm_ioctl_gem_madvise, ptr @.str.57 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072929718, i32 32, ptr @msm_ioctl_submitqueue_new, ptr @.str.58 }, %struct.drm_ioctl_desc { i32 1074029643, i32 32, ptr @msm_ioctl_submitqueue_close, ptr @.str.59 }, %struct.drm_ioctl_desc { i32 1075340364, i32 32, ptr @msm_ioctl_submitqueue_query, ptr @.str.60 }], [48 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@load_gpu.init_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.47, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @load_gpu.init_lock, i64 52), ptr getelementptr (i8, ptr @load_gpu.init_lock, i64 52) }, ptr @load_gpu.init_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_lock\00", [22 x i8] zeroinitializer }, align 32
@context_init.ident = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@context_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctx->queuelock\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MSM_GET_PARAM\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MSM_GEM_NEW\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MSM_GEM_INFO\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MSM_GEM_CPU_PREP\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MSM_GEM_CPU_FINI\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MSM_GEM_SUBMIT\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MSM_WAIT_FENCE\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MSM_GEM_MADVISE\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MSM_SUBMITQUEUE_NEW\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MSM_SUBMITQUEUE_CLOSE\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MSM_SUBMITQUEUE_QUERY\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid flags: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid op: %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid pad: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@wait_fence._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.wait_fence = private unnamed_addr constant [11 x i8] c"wait_fence\00", align 1
@.str.68 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* waiting on invalid fence: %u (of %u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"init\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"reglog\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 61, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"fbdev\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 69, i32 13 }
@___asan_gen_.81 = private unnamed_addr constant [5 x i8] c"vram\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 74, i32 14 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"dumpstate\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 78, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant [8 x i8] c"modeset\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 82, i32 13 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 96, i32 25 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 120, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 183, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 191, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 728, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1475, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c"msm_platform_driver\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1447, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 74, i32 21 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 140, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 149, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 154, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 328, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1452, i32 13 }
@___asan_gen_.168 = private unnamed_addr constant [9 x i8] c"dt_match\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1435, i32 34 }
@___asan_gen_.171 = private unnamed_addr constant [11 x i8] c"msm_pm_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1162, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"msm_drm_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1341, i32 42 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1271, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1277, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1203, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1215, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant [14 x i8] c"msm_gpu_match\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1306, i32 34 }
@___asan_gen_.192 = private unnamed_addr constant [11 x i8] c"msm_driver\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1068, i32 32 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 517, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 527, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 532, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 574, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 587, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant [18 x i8] c"mode_config_funcs\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 49, i32 43 }
@___asan_gen_.219 = private unnamed_addr constant [25 x i8] c"mode_config_helper_funcs\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 56, i32 50 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 600, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 603, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 613, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 622, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 634, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 457, i32 45 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 465, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 472, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 483, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 494, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 499, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1090, i32 24 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1091, i32 24 }
@___asan_gen_.276 = private unnamed_addr constant [11 x i8] c"msm_ioctls\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1052, i32 36 }
@___asan_gen_.279 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1066, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant [10 x i8] c"init_lock\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 662, i32 9 }
@___asan_gen_.291 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 675, i32 18 }
@___asan_gen_.294 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 684, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1053, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1054, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1055, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1056, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1057, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1058, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1059, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1060, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1061, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1062, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1063, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 775, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 230, i32 6 }
@___asan_gen_.340 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 214, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 156, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 797, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 976, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 931, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1102, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.364 = private constant [33 x i8] c"../drivers/gpu/drm/msm/msm_drv.c\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.364, i32 1463, i32 2 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_dumpstate355, ptr @__UNIQUE_ID_dumpstatetype356, ptr @__UNIQUE_ID_fbdev351, ptr @__UNIQUE_ID_fbdevtype352, ptr @__UNIQUE_ID_file362, ptr @__UNIQUE_ID_license363, ptr @__UNIQUE_ID_modeset357, ptr @__UNIQUE_ID_modesettype358, ptr @__UNIQUE_ID_reglog349, ptr @__UNIQUE_ID_reglogtype350, ptr @__UNIQUE_ID_vram353, ptr @__UNIQUE_ID_vramtype354, ptr @__exitcall_msm_drm_unregister, ptr @__initcall__kmod_msm__359_1485_msm_drm_register6, ptr @__param_dumpstate, ptr @__param_fbdev, ptr @__param_modeset, ptr @__param_reglog, ptr @__param_vram, ptr @_msm_ioremap._entry, ptr @_msm_ioremap._entry_ptr, ptr @msm_clk_get._entry, ptr @msm_clk_get._entry_ptr, ptr @msm_drm_unregister, ptr @msm_init_vram._entry, ptr @msm_init_vram._entry.38, ptr @msm_init_vram._entry_ptr, ptr @msm_init_vram._entry_ptr.40, ptr @msm_readl._entry, ptr @msm_readl._entry_ptr, ptr @msm_writel._entry, ptr @msm_writel._entry_ptr, ptr @reglog, ptr @fbdev, ptr @vram, ptr @dumpstate, ptr @modeset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @msm_platform_driver, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @vblank_ctrl_queue_work.__key, ptr @.str.18, ptr @.str.19, ptr @dt_match, ptr @msm_pm_ops, ptr @msm_drm_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @msm_gpu_match, ptr @msm_driver, ptr @.str.24, ptr @msm_drm_init.__key, ptr @.str.25, ptr @msm_drm_init.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mode_config_funcs, ptr @mode_config_helper_funcs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @msm_init_vram.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @msm_ioctls, ptr @fops, ptr @load_gpu.init_lock, ptr @.str.47, ptr @.str.48, ptr @context_init.ident, ptr @context_init.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @wait_fence._rs, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reglog to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbdev to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vram to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dumpstate to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modeset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_clk_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_writel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_readl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_msm_ioremap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vblank_ctrl_queue_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_drm_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpu_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_drm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_drm_init.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_config_helper_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_init_vram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_init_vram._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_init_vram.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_ioctls to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_gpu.init_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_init.ident to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_fence._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_clk_bulk_get_clock(ptr noundef readonly %bulk, i32 noundef %count, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %n) #13
  %0 = call ptr @memset(ptr %n, i32 255, i32 32)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %n, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %name)
  %tobool.not = icmp ne ptr %bulk, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp19 = icmp sgt i32 %count, 0
  %or.cond20 = and i1 %tobool.not, %cmp19
  br i1 %or.cond20, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_bulk_data, ptr %bulk, i32 %i.021
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %name) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %call6 = call i32 @strcmp(ptr noundef %2, ptr noundef nonnull %n) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.then_crit_edge, label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %clk = getelementptr %struct.clk_bulk_data, ptr %bulk, i32 %i.021, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw nsw i32 %i.021, 1
  %cmp = icmp slt i32 %inc, %count
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %n) #13
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_clk_get(ptr noundef %pdev, ptr noundef %name) local_unnamed_addr #4 align 64 {
entry:
  %name2 = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name2) #13
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = call ptr @memset(ptr %name2, i32 255, i32 32)
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef %name) #13
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  %or.cond = or i1 %cmp.i, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name2, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %name)
  %call6 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %name2) #13
  %cmp.i21 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef nonnull %name2) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %call6, %do.end ], [ %call6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name2) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_ioremap(ptr noundef %pdev, ptr noundef %name, ptr noundef %dbgname) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_msm_ioremap(ptr noundef %pdev, ptr noundef %name, ptr noundef %dbgname, i1 noundef zeroext false, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_msm_ioremap(ptr noundef %pdev, ptr noundef %name, ptr noundef %dbgname, i1 noundef zeroext %quiet, ptr noundef writeonly %psize) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull %name) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %res.0 = phi ptr [ %call, %if.then ], [ %call1, %if.else ]
  %tobool2.not = icmp eq ptr %res.0, null
  br i1 %tobool2.not, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  br i1 %quiet, label %if.then3.cleanup_crit_edge, label %if.then5

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef %name) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %end.i = getelementptr inbounds %struct.resource, ptr %res.0, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  %2 = ptrtoint ptr %res.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res.0, align 4
  %sub.i = add i32 %1, 1
  %add.i = sub i32 %sub.i, %3
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call11 = tail call ptr @devm_ioremap(ptr noundef %dev10, i32 noundef %3, i32 noundef %add.i) #13
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end8
  br i1 %quiet, label %if.then13.cleanup_crit_edge, label %if.then15

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev10, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, ptr noundef %name) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %4 = load i8, ptr @reglog, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool20.not = icmp eq i8 %4, 0
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %do.end

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %dbgname, ptr noundef nonnull %call11, i32 noundef %add.i) #17
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.end19.if.end23_crit_edge
  %tobool24.not = icmp eq ptr %psize, null
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %psize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i, ptr %psize, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %if.then15, %if.then13.cleanup_crit_edge, %if.then5, %if.then3.cleanup_crit_edge
  %retval.0 = phi ptr [ %call11, %if.then25 ], [ %call11, %if.end23.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then5 ], [ inttoptr (i32 -22 to ptr), %if.then3.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then15 ], [ inttoptr (i32 -12 to ptr), %if.then13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_ioremap_quiet(ptr noundef %pdev, ptr noundef %name, ptr noundef %dbgname) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %name, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull %name) #13
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %res.0.i = phi ptr [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  %tobool2.not.i = icmp eq ptr %res.0.i, null
  br i1 %tobool2.not.i, label %if.end.i._msm_ioremap.exit_crit_edge, label %if.end8.i

if.end.i._msm_ioremap.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_msm_ioremap.exit

if.end8.i:                                        ; preds = %if.end.i
  %end.i.i = getelementptr inbounds %struct.resource, ptr %res.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i.i, align 4
  %2 = ptrtoint ptr %res.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res.0.i, align 4
  %sub.i.i = add i32 %1, 1
  %add.i.i = sub i32 %sub.i.i, %3
  %dev10.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call11.i = tail call ptr @devm_ioremap(ptr noundef %dev10.i, i32 noundef %3, i32 noundef %add.i.i) #13
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end8.i._msm_ioremap.exit_crit_edge, label %if.end19.i

if.end8.i._msm_ioremap.exit_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_msm_ioremap.exit

if.end19.i:                                       ; preds = %if.end8.i
  %4 = load i8, ptr @reglog, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool20.not.i = icmp eq i8 %4, 0
  br i1 %tobool20.not.i, label %if.end19.i._msm_ioremap.exit_crit_edge, label %do.end.i

if.end19.i._msm_ioremap.exit_crit_edge:           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_msm_ioremap.exit

do.end.i:                                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %dbgname, ptr noundef nonnull %call11.i, i32 noundef %add.i.i) #17
  br label %_msm_ioremap.exit

_msm_ioremap.exit:                                ; preds = %do.end.i, %if.end19.i._msm_ioremap.exit_crit_edge, %if.end8.i._msm_ioremap.exit_crit_edge, %if.end.i._msm_ioremap.exit_crit_edge
  %retval.0.i = phi ptr [ inttoptr (i32 -22 to ptr), %if.end.i._msm_ioremap.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i._msm_ioremap.exit_crit_edge ], [ %call11.i, %do.end.i ], [ %call11.i, %if.end19.i._msm_ioremap.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_ioremap_size(ptr noundef %pdev, ptr noundef %name, ptr noundef %dbgname, ptr noundef %psize) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_msm_ioremap(ptr noundef %pdev, ptr noundef %name, ptr noundef %dbgname, i1 noundef zeroext false, ptr noundef %psize)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_writel(i32 noundef %data, ptr noundef %addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @reglog, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %do.end

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %addr, i32 noundef %data) #17
  br label %do.body1

do.body1:                                         ; preds = %do.end, %entry.do.body1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !229
  tail call void @arm_heavy_mb() #13
  %1 = tail call i32 @llvm.bswap.i32(i32 %data)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %1) #13, !srcloc !230
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_readl(ptr noundef %addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #13, !srcloc !231
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !232
  %2 = load i8, ptr @reglog, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %addr, i32 noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_rmw(ptr noundef %addr, i32 noundef %mask, i32 noundef %or) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #13, !srcloc !231
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !232
  %2 = load i8, ptr @reglog, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %msm_readl.exit.thread, label %msm_readl.exit

msm_readl.exit.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %neg6 = xor i32 %mask, -1
  %and7 = and i32 %1, %neg6
  %or18 = or i32 %and7, %or
  br label %msm_writel.exit

msm_readl.exit:                                   ; preds = %entry
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %addr, i32 noundef %1) #17
  %.pr = load i8, ptr @reglog, align 1
  %neg = xor i32 %mask, -1
  %and = and i32 %1, %neg
  %or1 = or i32 %and, %or
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i4 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i4, label %msm_readl.exit.msm_writel.exit_crit_edge, label %do.end.i5

msm_readl.exit.msm_writel.exit_crit_edge:         ; preds = %msm_readl.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %msm_writel.exit

do.end.i5:                                        ; preds = %msm_readl.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %addr, i32 noundef %or1) #17
  br label %msm_writel.exit

msm_writel.exit:                                  ; preds = %do.end.i5, %msm_readl.exit.msm_writel.exit_crit_edge, %msm_readl.exit.thread
  %or110 = phi i32 [ %or18, %msm_readl.exit.thread ], [ %or1, %msm_readl.exit.msm_writel.exit_crit_edge ], [ %or1, %do.end.i5 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !229
  tail call void @arm_heavy_mb() #13
  %3 = tail call i32 @llvm.bswap.i32(i32 %or110) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %3) #13, !srcloc !230
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hrtimer_queue_work(ptr noundef %work, i64 noundef %wakeup_time, i32 noundef %mode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hrtimer_start_range_ns(ptr noundef %work, i64 noundef %wakeup_time, i64 noundef 0, i32 noundef %mode) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hrtimer_work_init(ptr noundef %work, ptr noundef %worker, ptr noundef %fn, i32 noundef %clock_id, i32 noundef %mode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hrtimer_init(ptr noundef %work, i32 noundef %clock_id, i32 noundef %mode) #13
  %function = getelementptr inbounds %struct.hrtimer, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @msm_hrtimer_worktimer, ptr %function, align 8
  %worker2 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %work, i32 0, i32 2
  %1 = ptrtoint ptr %worker2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %worker, ptr %worker2, align 4
  %work3 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %work, i32 0, i32 1
  %2 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %work, i32 0, i32 1, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 12)
  %4 = ptrtoint ptr %work3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %work3, ptr %work3, align 4
  %prev.i = getelementptr inbounds %struct.msm_hrtimer_work, ptr %work, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %work3, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.msm_hrtimer_work, ptr %work, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fn, ptr %func, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_hrtimer_worktimer(ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %worker = getelementptr inbounds %struct.msm_hrtimer_work, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker, align 4
  %work1 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %t, i32 0, i32 1
  %call = tail call zeroext i1 @kthread_queue_work(ptr noundef %1, ptr noundef %work1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @msm_use_mmu(ptr nocapture noundef readonly %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %is_a2xx = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %is_a2xx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_a2xx, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %call, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_crtc_enable_vblank(ptr nocapture noundef readonly %crtc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %kms2 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %3) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 56) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %cond.end.cleanup_crit_edge, label %do.body.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #13
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @vblank_ctrl_queue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vblank_ctrl_worker, ptr %func.i, align 4
  %crtc_id6.i = getelementptr inbounds %struct.msm_vblank_work, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %crtc_id6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %3, ptr %crtc_id6.i, align 4
  %enable8.i = getelementptr inbounds %struct.msm_vblank_work, ptr %call7.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %enable8.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %enable8.i, align 8
  %priv10.i = getelementptr inbounds %struct.msm_vblank_work, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %priv10.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %priv10.i, align 4
  %wq.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 22
  %18 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wq.i, align 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ 0, %do.body.i ], [ -12, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %kms2 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %3) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 56) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %cond.end.cleanup_crit_edge, label %do.body.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #13
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @vblank_ctrl_queue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vblank_ctrl_worker, ptr %func.i, align 4
  %crtc_id6.i = getelementptr inbounds %struct.msm_vblank_work, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %crtc_id6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %3, ptr %crtc_id6.i, align 4
  %enable8.i = getelementptr inbounds %struct.msm_vblank_work, ptr %call7.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %enable8.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %enable8.i, align 8
  %priv10.i = getelementptr inbounds %struct.msm_vblank_work, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %priv10.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %priv10.i, align 4
  %wq.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 22
  %18 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wq.i, align 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msm_drm_unregister() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm_platform_driver) #13
  tail call void @msm_dp_unregister() #17
  tail call void @msm_hdmi_unregister() #17
  tail call void @adreno_unregister() #17
  tail call void @msm_dsi_unregister() #17
  tail call void @msm_mdp_unregister() #17
  tail call void @msm_dpu_unregister() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_dp_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_hdmi_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @adreno_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_dsi_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_mdp_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_dpu_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_drm_register() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @modeset, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.70) #13
  tail call void @msm_mdp_register() #17
  tail call void @msm_dpu_register() #17
  tail call void @msm_dsi_register() #17
  tail call void @msm_hdmi_register() #17
  %call = tail call i32 @msm_dp_register() #17
  tail call void @adreno_register() #17
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm_platform_driver, ptr noundef null) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vblank_ctrl_worker(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.msm_vblank_work, ptr %work, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %kms2 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms2, align 4
  %enable = getelementptr inbounds %struct.msm_vblank_work, ptr %work, i32 0, i32 2
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %enable_vblank = getelementptr inbounds %struct.msm_kms_funcs, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %enable_vblank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_vblank, align 4
  %crtc_id = getelementptr inbounds %struct.msm_vblank_work, ptr %work, i32 0, i32 1
  %10 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_id, align 4
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 26, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 %9(ptr noundef %3, ptr noundef %13) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %disable_vblank = getelementptr inbounds %struct.msm_kms_funcs, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %disable_vblank to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable_vblank, align 4
  %crtc_id5 = getelementptr inbounds %struct.msm_vblank_work, ptr %work, i32 0, i32 1
  %16 = ptrtoint ptr %crtc_id5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_id5, align 4
  %arrayidx6 = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 26, i32 %17
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx6, align 4
  tail call void %15(ptr noundef %3, ptr noundef %19) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %work) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_pdev_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %ep.i.i = alloca %struct.of_endpoint, align 4
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #13
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %match, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 904, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i65 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #13
  %2 = ptrtoint ptr %call.i65 to i32
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end.if.end7_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb3
  ]

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @mdp5_mdss_init(ptr noundef %pdev) #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call i32 @dpu_mdss_init(ptr noundef %pdev) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %ret.0 = phi i32 [ %call4, %sw.bb3 ], [ %call2, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool5.not = icmp eq i32 %ret.0, 0
  br i1 %tobool5.not, label %sw.epilog.if.end7_crit_edge, label %if.then6

sw.epilog.if.end7_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call.i68 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #13
  %tobool9.not = icmp eq ptr %call.i68, null
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %call.i.i = tail call ptr @of_device_get_match_data(ptr noundef %dev) #13
  %5 = ptrtoint ptr %call.i.i to i32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %5, label %if.then10.sw.epilog.i_crit_edge [
    i32 5, label %if.then10.sw.bb.i_crit_edge
    i32 3, label %if.then10.sw.bb.i_crit_edge93
    i32 4, label %sw.bb8.i
  ]

if.then10.sw.bb.i_crit_edge93:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.then10.sw.bb.i_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.then10.sw.epilog.i_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then10.sw.bb.i_crit_edge, %if.then10.sw.bb.i_crit_edge93
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call i32 @of_platform_populate(ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.20) #13
  br label %fail

if.end.i:                                         ; preds = %sw.bb.i
  %call3.i = tail call ptr @device_find_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @find_mdp_node) #13
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.21) #13
  tail call void @of_platform_depopulate(ptr noundef %dev) #13
  br label %fail

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @put_device(ptr noundef nonnull %call3.i) #13
  %of_node7.i = getelementptr inbounds %struct.device, ptr %call3.i, i32 0, i32 27
  %9 = ptrtoint ptr %of_node7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node7.i, align 8
  call void @drm_of_component_match_add(ptr noundef %dev, ptr noundef nonnull %match, ptr noundef nonnull @compare_of, ptr noundef %10) #13
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb8.i, %if.end6.i, %if.then10.sw.epilog.i_crit_edge
  %mdp_dev.0.i = phi ptr [ inttoptr (i32 -1 to ptr), %if.then10.sw.epilog.i_crit_edge ], [ %dev, %sw.bb8.i ], [ %call3.i, %if.end6.i ]
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %mdp_dev.0.i, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i.i, align 8
  %call.i31.i = call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool.not.i.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %sw.epilog.i.if.end.i.i_crit_edge

sw.epilog.i.if.end.i.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %parent.i.i = getelementptr inbounds %struct.device, ptr %mdp_dev.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %sw.epilog.i.if.end.i.i_crit_edge
  %master_dev.0.i.i = phi ptr [ %14, %if.else.i.i ], [ %mdp_dev.0.i, %sw.epilog.i.if.end.i.i_crit_edge ]
  %call1.i.i = call ptr @of_graph_get_next_endpoint(ptr noundef %12, ptr noundef null) #13
  %cmp.not42.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not42.i.i, label %if.end.i.i.if.end15_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.if.end15_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %15 = getelementptr inbounds %struct.of_endpoint, ptr %ep.i.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.of_endpoint, ptr %ep.i.i, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ep_node.043.i.i = phi ptr [ %call1.i.i, %for.body.lr.ph.i.i ], [ %call20.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ep.i.i) #13
  %17 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %ep.i.i, align 4, !annotation !233
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %15, align 4, !annotation !233
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !233
  %call2.i.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %ep_node.043.i.i, ptr noundef nonnull %ep.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.then11.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %call6.i.i = call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.end10.i.i_crit_edge, label %land.lhs.true.i.i

if.end5.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i.i

land.lhs.true.i.i:                                ; preds = %if.end5.i.i
  %20 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ep.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8.i.i = icmp eq i32 %21, 0
  br i1 %cmp8.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.if.end10.i.i_crit_edge

land.lhs.true.i.i.if.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end10.i.i:                                     ; preds = %land.lhs.true.i.i.if.end10.i.i_crit_edge, %if.end5.i.i.if.end10.i.i_crit_edge
  %call11.i.i = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %ep_node.043.i.i) #13
  %tobool12.not.i.i = icmp eq ptr %call11.i.i, null
  br i1 %tobool12.not.i.i, label %if.end10.i.i.for.inc.i.i_crit_edge, label %if.end14.i.i

if.end10.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %call15.i.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %call11.i.i) #13
  br i1 %call15.i.i, label %if.then16.i.i, label %if.end14.i.i.if.end17.i.i_crit_edge

if.end14.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @drm_of_component_match_add(ptr noundef %master_dev.0.i.i, ptr noundef nonnull %match, ptr noundef nonnull @compare_of, ptr noundef nonnull %call11.i.i) #13
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then16.i.i, %if.end14.i.i.if.end17.i.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call11.i.i) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end17.i.i, %if.end10.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep.i.i) #13
  %call20.i.i = call ptr @of_graph_get_next_endpoint(ptr noundef %12, ptr noundef nonnull %ep_node.043.i.i) #13
  %cmp.not.i.i = icmp eq ptr %call20.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end15_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.if.end15_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then11.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %mdp_dev.0.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.23) #13
  call void @of_node_put(ptr noundef nonnull %ep_node.043.i.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep.i.i) #13
  call void @of_platform_depopulate(ptr noundef %dev) #13
  br label %fail

if.end15:                                         ; preds = %for.inc.i.i.if.end15_crit_edge, %if.end.i.i.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %call.i.i70 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @msm_gpu_match, ptr noundef null) #13
  %tobool.not.i71 = icmp eq ptr %call.i.i70, null
  br i1 %tobool.not.i71, label %if.end15.add_gpu_components.exit_crit_edge, label %if.end.i72

if.end15.add_gpu_components.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %add_gpu_components.exit

if.end.i72:                                       ; preds = %if.end15
  %call1.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %call.i.i70) #13
  br i1 %call1.i, label %if.then2.i, label %if.end.i72.if.end3.i_crit_edge

if.end.i72.if.end3.i_crit_edge:                   ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #15
  call void @drm_of_component_match_add(ptr noundef %dev, ptr noundef nonnull %match, ptr noundef nonnull @compare_of, ptr noundef nonnull %call.i.i70) #13
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i72.if.end3.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i.i70) #13
  br label %add_gpu_components.exit

add_gpu_components.exit:                          ; preds = %if.end3.i, %if.end15.add_gpu_components.exit_crit_edge
  %call.i73 = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp.i = icmp eq i32 %call.i73, 0
  br i1 %cmp.i, label %if.end25, label %add_gpu_components.exit.fail_crit_edge

add_gpu_components.exit.fail_crit_edge:           ; preds = %add_gpu_components.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end25:                                         ; preds = %add_gpu_components.exit
  %call1.i74 = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #13
  %22 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %match, align 4
  %call27 = call i32 @component_master_add_with_match(ptr noundef %dev, ptr noundef nonnull @msm_drm_ops, ptr noundef %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end25.fail_crit_edge

if.end25.fail_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

fail:                                             ; preds = %if.end25.fail_crit_edge, %add_gpu_components.exit.fail_crit_edge, %if.then11.i, %if.then5.i, %if.then.i
  %ret.1 = phi i32 [ %call27, %if.end25.fail_crit_edge ], [ %call.i73, %add_gpu_components.exit.fail_crit_edge ], [ %call2.i.i, %if.then11.i ], [ -19, %if.then5.i ], [ %call2.i, %if.then.i ]
  call void @of_platform_depopulate(ptr noundef %dev) #13
  %mdss = getelementptr inbounds %struct.msm_drm_private, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %mdss to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdss, align 4
  %tobool32.not = icmp eq ptr %25, null
  br i1 %tobool32.not, label %fail.cleanup_crit_edge, label %land.lhs.true

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %fail
  %funcs = getelementptr inbounds %struct.msm_mdss, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %funcs, align 4
  %tobool34.not = icmp eq ptr %27, null
  br i1 %tobool34.not, label %land.lhs.true.cleanup_crit_edge, label %if.then35

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %destroy = getelementptr inbounds %struct.msm_mdss_funcs, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %destroy, align 4
  call void %29(ptr noundef nonnull %25) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %land.lhs.true.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then6 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ %ret.1, %if.then35 ], [ %ret.1, %land.lhs.true.cleanup_crit_edge ], [ %ret.1, %fail.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_pdev_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mdss1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mdss1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdss1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @msm_drm_ops) #13
  tail call void @of_platform_depopulate(ptr noundef %dev) #13
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.msm_mdss, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %destroy = getelementptr inbounds %struct.msm_mdss_funcs, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy, align 4
  tail call void %7(ptr noundef nonnull %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_pdev_shutdown(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @drm_atomic_helper_shutdown(ptr noundef %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_mdss_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_mdss_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @find_mdp_node(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @dpu_dt_match, ptr noundef %1) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_match_node(ptr noundef nonnull @mdp5_dt_match, ptr noundef %3) #13
  %tobool3 = icmp ne ptr %call2, null
  %phi.cast = zext i1 %tobool3 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_of_component_match_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_drm_bind(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @msm_drm_init(ptr noundef %dev, ptr noundef nonnull @msm_driver)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_drm_unbind(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @msm_drm_uninit(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_drm_init(ptr noundef %dev, ptr nocapture noundef readnone %drv) #4 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %r.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @msm_driver, ptr noundef %dev) #13
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24) #13
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %dev_private, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %1, align 8
  %call5 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.19, i32 noundef 655362, i32 noundef 1) #13
  %wq = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %wq, align 8
  %hangcheck_period = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %hangcheck_period to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 500, ptr %hangcheck_period, align 4
  %objects = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %objects to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %objects, ptr %objects, align 4
  %prev.i = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %objects, ptr %prev.i, align 4
  %obj_lock = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %obj_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @msm_drm_init.__key) #13
  %inactive_willneed = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %inactive_willneed to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %inactive_willneed, ptr %inactive_willneed, align 4
  %prev.i249 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 16, i32 1
  %10 = ptrtoint ptr %prev.i249 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %inactive_willneed, ptr %prev.i249, align 4
  %inactive_dontneed = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %inactive_dontneed to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %inactive_dontneed, ptr %inactive_dontneed, align 4
  %prev.i250 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %prev.i250 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %inactive_dontneed, ptr %prev.i250, align 4
  %inactive_unpinned = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %inactive_unpinned to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %inactive_unpinned, ptr %inactive_unpinned, align 4
  %prev.i251 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev.i251 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %inactive_unpinned, ptr %prev.i251, align 4
  %mm_lock = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %mm_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @msm_drm_init.__key.26) #13
  tail call void @fs_reclaim_acquire(i32 noundef 3264) #13
  %dep_map = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 21, i32 5
  br label %__here

__here:                                           ; preds = %if.end
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@msm_drm_init, %__here) to i32)) #13
  br label %__here15

__here15:                                         ; preds = %__here
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@msm_drm_init, %__here15) to i32)) #13
  tail call void @fs_reclaim_release(i32 noundef 3264) #13
  %call.i = tail call i32 @drmm_mode_config_init(ptr noundef %call1) #13
  %15 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 2
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #13
  %21 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %20, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %__here15
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #13
  br label %if.else.i

of_parse_phandle.exit.i:                          ; preds = %__here15
  %22 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #13
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.if.else.i_crit_edge, label %if.then.i

of_parse_phandle.exit.i.if.else.i_crit_edge:      ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i:                                        ; preds = %of_parse_phandle.exit.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r.i) #13
  %24 = call ptr @memset(ptr %r.i, i32 255, i32 32)
  %call2.i = call i32 @of_address_to_resource(ptr noundef nonnull %23, i32 noundef 0, ptr noundef nonnull %r.i) #13
  call void @of_node_put(ptr noundef nonnull %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = getelementptr inbounds %struct.resource, ptr %r.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %r.i, align 4
  %sub.i = sub i32 %27, %29
  %add.i = add i32 %sub.i, 1
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %add.i, ptr noundef nonnull %r.i) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #13
  br label %if.end16.i

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r.i) #13
  br label %cleanup

if.else.i:                                        ; preds = %of_parse_phandle.exit.i.if.else.i_crit_edge, %of_parse_phandle.exit.thread.i
  %30 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_private, align 4
  %is_a2xx.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %is_a2xx.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_a2xx.i.i, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i77.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i77.i, label %msm_use_mmu.exit.i, label %if.else.i.if.end22_crit_edge

if.else.i.if.end22_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

msm_use_mmu.exit.i:                               ; preds = %if.else.i
  %call.i78.i = call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #13
  br i1 %call.i78.i, label %msm_use_mmu.exit.i.if.end22_crit_edge, label %do.end11.i

msm_use_mmu.exit.i.if.end22_crit_edge:            ; preds = %msm_use_mmu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.end11.i:                                       ; preds = %msm_use_mmu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = load ptr, ptr @vram, align 4
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %34) #17
  %35 = load ptr, ptr @vram, align 4
  %call14.i = call i64 @memparse(ptr noundef %35, ptr noundef null) #13
  %conv.i = trunc i64 %call14.i to i32
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end11.i, %cleanup.thread.i
  %size.1.i = phi i32 [ %conv.i, %do.end11.i ], [ %add.i, %cleanup.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1.i)
  %tobool17.not.i = icmp eq i32 %size.1.i, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end22_crit_edge, label %if.then18.i

if.end16.i.if.end22_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then18.i:                                      ; preds = %if.end16.i
  %vram.i = getelementptr inbounds %struct.msm_drm_private, ptr %16, i32 0, i32 35
  %36 = ptrtoint ptr %vram.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %size.1.i, ptr %vram.i, align 8
  %mm.i = getelementptr inbounds %struct.msm_drm_private, ptr %16, i32 0, i32 35, i32 2
  %shr.i = lshr i32 %size.1.i, 12
  %sub21.i = add nsw i32 %shr.i, -1
  %conv22.i = zext i32 %sub21.i to i64
  call void @drm_mm_init(ptr noundef %mm.i, i64 noundef 0, i64 noundef %conv22.i) #13
  %lock.i = getelementptr inbounds %struct.msm_drm_private, ptr %16, i32 0, i32 35, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @msm_init_vram.__key, i16 noundef signext 3) #13
  %37 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1.i, align 4
  %paddr.i = getelementptr inbounds %struct.msm_drm_private, ptr %16, i32 0, i32 35, i32 1
  %call31.i = call ptr @dma_alloc_attrs(ptr noundef %38, i32 noundef %size.1.i, ptr noundef %paddr.i, i32 noundef 3264, i32 noundef 20) #13
  %tobool32.not.i = icmp eq ptr %call31.i, null
  %39 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1.i, align 4
  br i1 %tobool32.not.i, label %cleanup44.thread.i, label %cleanup44.i

cleanup44.thread.i:                               ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %40, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.42) #13
  %41 = ptrtoint ptr %paddr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %paddr.i, align 4
  br label %cleanup

cleanup44.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %paddr.i, align 4
  %add43.i = add i32 %43, %size.1.i
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %40, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %43, i32 noundef %add43.i) #13
  br label %if.end22

if.end22:                                         ; preds = %cleanup44.i, %if.end16.i.if.end22_crit_edge, %msm_use_mmu.exit.i.if.end22_crit_edge, %if.else.i.if.end22_crit_edge
  %call23 = call i32 @component_bind_all(ptr noundef %dev, ptr noundef %call1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 22
  %44 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i252 = icmp eq ptr %45, null
  br i1 %tobool.not.i252, label %if.end26.dma_set_max_seg_size.exit_crit_edge, label %if.then.i253

if.end26.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_set_max_seg_size.exit

if.then.i253:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %45, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i253, %if.end26.dma_set_max_seg_size.exit_crit_edge
  call void @msm_gem_shrinker_init(ptr noundef %call1) #13
  %call.i255 = call ptr @of_device_get_match_data(ptr noundef %dev) #13
  %47 = ptrtoint ptr %call.i255 to i32
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %47, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb31
    i32 3, label %sw.bb33
  ]

sw.bb:                                            ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = call ptr @mdp4_kms_init(ptr noundef %call1) #13
  %kms30 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %kms30 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call29, ptr %kms30, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = call ptr @mdp5_kms_init(ptr noundef %call1) #13
  br label %sw.epilog

sw.bb33:                                          ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = call ptr @dpu_kms_init(ptr noundef %call1) #13
  %kms35 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %kms35 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call34, ptr %kms35, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %dma_set_max_seg_size.exit
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %51 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node, align 8
  %tobool36.not = icmp eq ptr %52, null
  br i1 %tobool36.not, label %sw.default.if.end66.thread_crit_edge, label %do.end48, !prof !234

sw.default.if.end66.thread_crit_edge:             ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.thread

do.end48:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 568, i32 noundef 9, ptr noundef null) #13
  br label %if.end66.thread

if.end66.thread:                                  ; preds = %do.end48, %sw.default.if.end66.thread_crit_edge
  %normalize_zpos267 = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 98
  %53 = ptrtoint ptr %normalize_zpos267 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %normalize_zpos267, align 1
  br label %if.end74

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb31, %sw.bb
  %kms.0 = phi ptr [ %call34, %sw.bb33 ], [ %call32, %sw.bb31 ], [ %call29, %sw.bb ]
  %cmp.i256 = icmp ugt ptr %kms.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i256, label %if.then63, label %if.end66

if.then63:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28) #13
  %54 = ptrtoint ptr %kms.0 to i32
  %kms65 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %kms65 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %kms65, align 4
  br label %err_msm_uninit

if.end66:                                         ; preds = %sw.epilog
  %normalize_zpos = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 98
  %56 = ptrtoint ptr %normalize_zpos to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %normalize_zpos, align 1
  %tobool67.not = icmp eq ptr %kms.0, null
  br i1 %tobool67.not, label %if.end66.if.end74_crit_edge, label %if.then68

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then68:                                        ; preds = %if.end66
  %dev69 = getelementptr inbounds %struct.msm_kms, ptr %kms.0, i32 0, i32 1
  %57 = ptrtoint ptr %dev69 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call1, ptr %dev69, align 4
  %58 = ptrtoint ptr %kms.0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %kms.0, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call70 = call i32 %61(ptr noundef nonnull %kms.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then68.if.end74_crit_edge, label %if.then72

if.then68.if.end74_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.29, i32 noundef %call70) #13
  br label %err_msm_uninit

if.end74:                                         ; preds = %if.then68.if.end74_crit_edge, %if.end66.if.end74_crit_edge, %if.end66.thread
  %tobool67.not269 = phi i1 [ false, %if.then68.if.end74_crit_edge ], [ true, %if.end66.if.end74_crit_edge ], [ true, %if.end66.thread ]
  %kms.0265 = phi ptr [ %kms.0, %if.then68.if.end74_crit_edge ], [ null, %if.end66.if.end74_crit_edge ], [ null, %if.end66.thread ]
  %funcs76 = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 27
  %62 = ptrtoint ptr %funcs76 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @mode_config_funcs, ptr %funcs76, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 103
  %63 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @mode_config_helper_funcs, ptr %helper_private, align 4
  %num_crtcs = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 25
  %64 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_crtcs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp78273.not = icmp eq i32 %65, 0
  br i1 %cmp78273.not, label %if.end74.for.end_crit_edge, label %if.end74.for.body_crit_edge

if.end74.for.body_crit_edge:                      ; preds = %if.end74
  br label %for.body

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end103.for.body_crit_edge, %if.end74.for.body_crit_edge
  %i.0274 = phi i32 [ %inc, %if.end103.for.body_crit_edge ], [ 0, %if.end74.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 26, i32 %i.0274
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %base = getelementptr inbounds %struct.drm_crtc, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %base, align 8
  %arrayidx80 = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 27, i32 %i.0274
  %crtc_id = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 27, i32 %i.0274, i32 1
  %70 = ptrtoint ptr %crtc_id to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %crtc_id, align 4
  %71 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call1, ptr %arrayidx80, align 4
  %call87 = call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef %69) #13
  %worker = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 27, i32 %i.0274, i32 2
  %72 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call87, ptr %worker, align 4
  %cmp.i257 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then94, label %if.end103

if.then94:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.31) #13
  %73 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %worker, align 4
  %75 = ptrtoint ptr %74 to i32
  br label %err_msm_uninit

if.end103:                                        ; preds = %for.body
  %task = getelementptr inbounds %struct.kthread_worker, ptr %call87, i32 0, i32 4
  %76 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task, align 4
  call void @sched_set_fifo(ptr noundef %77) #13
  %inc = add nuw i32 %i.0274, 1
  %78 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_crtcs, align 8
  %cmp78 = icmp ult i32 %inc, %79
  br i1 %cmp78, label %if.end103.for.body_crit_edge, label %if.end103.for.end_crit_edge

if.end103.for.end_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end103.for.body_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end103.for.end_crit_edge, %if.end74.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end74.for.end_crit_edge ], [ %79, %if.end103.for.end_crit_edge ]
  %call108 = call i32 @drm_vblank_init(ptr noundef %call1, i32 noundef %.lcssa) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.32) #13
  br label %err_msm_uninit

if.end112:                                        ; preds = %for.end
  br i1 %tobool67.not269, label %if.end122, label %if.then114

if.then114:                                       ; preds = %if.end112
  %call.i258 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #13
  %irq = getelementptr inbounds %struct.msm_kms, ptr %kms.0265, i32 0, i32 2
  %80 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irq, align 8
  %call116 = call fastcc i32 @msm_irq_install(ptr noundef %call1, i32 noundef %81)
  %call.i259 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp118 = icmp slt i32 %call116, 0
  br i1 %cmp118, label %if.then120, label %if.end122.thread

if.then120:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.33) #13
  br label %err_msm_uninit

if.end122:                                        ; preds = %if.end112
  %call123 = call i32 @drm_dev_register(ptr noundef %call1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end139.critedge, label %if.end122.err_msm_uninit_crit_edge

if.end122.err_msm_uninit_crit_edge:               ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_msm_uninit

if.end122.thread:                                 ; preds = %if.then114
  %call123270 = call i32 @drm_dev_register(ptr noundef %call1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123270)
  %tobool124.not271 = icmp eq i32 %call123270, 0
  br i1 %tobool124.not271, label %if.then128, label %if.end122.thread.err_msm_uninit_crit_edge

if.end122.thread.err_msm_uninit_crit_edge:        ; preds = %if.end122.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_msm_uninit

if.then128:                                       ; preds = %if.end122.thread
  %call129 = call i32 @msm_disp_snapshot_init(ptr noundef %call1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then128.land.lhs.true_crit_edge, label %if.then131

if.then128.land.lhs.true_crit_edge:               ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then131:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.34, i32 noundef %call129) #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then131, %if.then128.land.lhs.true_crit_edge
  call void @drm_mode_config_reset(ptr noundef %call1) #13
  %82 = load i8, ptr @fbdev, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool135.not = icmp eq i8 %82, 0
  br i1 %tobool135.not, label %land.lhs.true.if.end139_crit_edge, label %if.then137

land.lhs.true.if.end139_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.then137:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call138 = call ptr @msm_fbdev_init(ptr noundef %call1) #13
  %fbdev = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 10
  %83 = ptrtoint ptr %fbdev to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call138, ptr %fbdev, align 8
  br label %if.end139

if.end139.critedge:                               ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  call void @drm_mode_config_reset(ptr noundef %call1) #13
  br label %if.end139

if.end139:                                        ; preds = %if.end139.critedge, %if.then137, %land.lhs.true.if.end139_crit_edge
  %call140 = call i32 @msm_debugfs_late_init(ptr noundef %call1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end139.err_msm_uninit_crit_edge

if.end139.err_msm_uninit_crit_edge:               ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_msm_uninit

if.end143:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  call void @drm_kms_helper_poll_init(ptr noundef %call1) #13
  br label %cleanup

err_msm_uninit:                                   ; preds = %if.end139.err_msm_uninit_crit_edge, %if.end122.thread.err_msm_uninit_crit_edge, %if.end122.err_msm_uninit_crit_edge, %if.then120, %if.then111, %if.then94, %if.then72, %if.then63
  %ret.0 = phi i32 [ %54, %if.then63 ], [ %call70, %if.then72 ], [ %75, %if.then94 ], [ %call108, %if.then111 ], [ %call116, %if.then120 ], [ %call123, %if.end122.err_msm_uninit_crit_edge ], [ %call140, %if.end139.err_msm_uninit_crit_edge ], [ %call123270, %if.end122.thread.err_msm_uninit_crit_edge ]
  call fastcc void @msm_drm_uninit(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %err_msm_uninit, %if.end143, %if.end22.cleanup_crit_edge, %cleanup44.thread.i, %cleanup.i, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.0, %err_msm_uninit ], [ 0, %if.end143 ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call2.i, %cleanup.i ], [ -12, %cleanup44.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fs_reclaim_acquire(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fs_reclaim_release(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_shrinker_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_kms_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_kms_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_kms_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_irq_install(ptr noundef %dev, i32 noundef %irq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %irq)
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %kms1.i = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body5.i, label %msm_irq_preinstall.exit, !prof !235

do.body5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/msm_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #13, !srcloc !236
  unreachable

msm_irq_preinstall.exit:                          ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %irq_preinstall.i = getelementptr inbounds %struct.msm_kms_funcs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %irq_preinstall.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_preinstall.i, align 4
  tail call void %7(ptr noundef nonnull %3) #13
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @msm_irq, ptr noundef null, i32 noundef 0, ptr noundef %11, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %msm_irq_preinstall.exit.cleanup_crit_edge

msm_irq_preinstall.exit.cleanup_crit_edge:        ; preds = %msm_irq_preinstall.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %msm_irq_preinstall.exit
  %12 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private.i, align 4
  %kms1.i18 = getelementptr inbounds %struct.msm_drm_private, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %kms1.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kms1.i18, align 4
  %tobool.not.i19 = icmp eq ptr %15, null
  br i1 %tobool.not.i19, label %do.body5.i20, label %do.end10.i, !prof !235

do.body5.i20:                                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/msm_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #13, !srcloc !237
  unreachable

do.end10.i:                                       ; preds = %if.end2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %irq_postinstall.i = getelementptr inbounds %struct.msm_kms_funcs, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %irq_postinstall.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_postinstall.i, align 4
  %tobool11.not.i = icmp eq ptr %19, null
  br i1 %tobool11.not.i, label %do.end10.i.cleanup_crit_edge, label %msm_irq_postinstall.exit

do.end10.i.cleanup_crit_edge:                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

msm_irq_postinstall.exit:                         ; preds = %do.end10.i
  %call.i21 = tail call i32 %19(ptr noundef nonnull %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool4.not = icmp eq i32 %call.i21, 0
  br i1 %tobool4.not, label %msm_irq_postinstall.exit.cleanup_crit_edge, label %if.then5

msm_irq_postinstall.exit.cleanup_crit_edge:       ; preds = %msm_irq_postinstall.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %msm_irq_postinstall.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call ptr @free_irq(i32 noundef %irq, ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %msm_irq_postinstall.exit.cleanup_crit_edge, %do.end10.i.cleanup_crit_edge, %msm_irq_preinstall.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i21, %if.then5 ], [ -107, %entry.cleanup_crit_edge ], [ %call.i, %msm_irq_preinstall.exit.cleanup_crit_edge ], [ 0, %msm_irq_postinstall.exit.cleanup_crit_edge ], [ 0, %do.end10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_disp_snapshot_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_fbdev_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_debugfs_late_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_drm_uninit(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %kms2 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %kms2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms2, align 4
  %registered = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %registered, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @drm_dev_unregister(ptr noundef %3) #13
  tail call void @drm_atomic_helper_shutdown(ptr noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wq = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wq, align 8
  tail call void @flush_workqueue(ptr noundef %9) #13
  %num_crtcs = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_crtcs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.not = icmp eq i32 %11, 0
  br i1 %cmp3.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %worker = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 27, i32 %i.04, i32 2
  %12 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %worker, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kthread_destroy_worker(ptr noundef nonnull %13) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.04, 1
  %14 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_crtcs, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @msm_gem_shrinker_cleanup(ptr noundef %3) #13
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #13
  tail call void @msm_perf_debugfs_cleanup(ptr noundef %1) #13
  tail call void @msm_rd_debugfs_cleanup(ptr noundef %1) #13
  %16 = load i8, ptr @fbdev, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %for.end.if.end12_crit_edge, label %land.lhs.true

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true:                                    ; preds = %for.end
  %fbdev = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %fbdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fbdev, align 8
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %if.then11

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msm_fbdev_free(ptr noundef %3) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true.if.end12_crit_edge, %for.end.if.end12_crit_edge
  tail call void @msm_disp_snapshot_destroy(ptr noundef %3) #13
  tail call void @drm_mode_config_cleanup(ptr noundef %3) #13
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #13
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private.i, align 4
  %kms1.i = getelementptr inbounds %struct.msm_drm_private, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %kms1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kms1.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %irq_uninstall.i = getelementptr inbounds %struct.msm_kms_funcs, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %irq_uninstall.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_uninstall.i, align 4
  tail call void %26(ptr noundef %22) #13
  %irq.i = getelementptr inbounds %struct.msm_kms, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq.i, align 8
  %call.i1 = tail call ptr @free_irq(i32 noundef %28, ptr noundef %3) #13
  %call.i2 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #13
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %if.end12.if.end20_crit_edge, label %land.lhs.true16

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true16:                                  ; preds = %if.end12
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 8
  %tobool17.not = icmp eq ptr %30, null
  br i1 %tobool17.not, label %land.lhs.true16.if.end20_crit_edge, label %if.then18

land.lhs.true16.if.end20_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #15
  %destroy = getelementptr inbounds %struct.msm_kms_funcs, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %destroy, align 4
  tail call void %32(ptr noundef nonnull %5) #13
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true16.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %paddr = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 35, i32 1
  %33 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %paddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool21.not = icmp eq i32 %34, 0
  br i1 %tobool21.not, label %if.end20.if.end27_crit_edge, label %if.then22

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %vram = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 35
  %mm = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 35, i32 2
  tail call void @drm_mm_takedown(ptr noundef %mm) #13
  %35 = ptrtoint ptr %vram to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vram, align 8
  %37 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %36, ptr noundef null, i32 noundef %38, i32 noundef 16) #13
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end20.if.end27_crit_edge
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %3) #13
  %39 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %dev_private.i, align 4
  tail call void @drm_dev_put(ptr noundef %3) #13
  %40 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %41) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_create(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_atomic_commit_tail(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_irq(i32 noundef %irq, ptr nocapture noundef readonly %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %kms1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !235

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/msm_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #13, !srcloc !238
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %irq11 = getelementptr inbounds %struct.msm_kms_funcs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %irq11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq11, align 4
  %call = tail call i32 %7(ptr noundef nonnull %3) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_shrinker_cleanup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_perf_debugfs_cleanup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_rd_debugfs_cleanup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_fbdev_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_open(ptr noundef %dev, ptr nocapture noundef writeonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @load_gpu.init_lock, i32 noundef 0) #13
  %gpu.i = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpu.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.load_gpu.exit_crit_edge

entry.load_gpu.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %load_gpu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @adreno_load_gpu(ptr noundef %dev) #13
  %4 = ptrtoint ptr %gpu.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %gpu.i, align 8
  br label %load_gpu.exit

load_gpu.exit:                                    ; preds = %if.then.i, %entry.load_gpu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @load_gpu.init_lock) #13
  %5 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 116) #18
  %tobool.not.i3 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i3, label %load_gpu.exit.context_init.exit_crit_edge, label %if.end.i

load_gpu.exit.context_init.exit_crit_edge:        ; preds = %load_gpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %context_init.exit

if.end.i:                                         ; preds = %load_gpu.exit
  call void @__sanitizer_cov_trace_pc() #15
  %submitqueues.i = getelementptr inbounds %struct.msm_file_private, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %submitqueues.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %submitqueues.i, ptr %submitqueues.i, align 4
  %prev.i.i = getelementptr inbounds %struct.msm_file_private, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %submitqueues.i, ptr %prev.i.i, align 8
  tail call void @__rwlock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @context_init.__key) #13
  %ref.i = getelementptr inbounds %struct.msm_file_private, ptr %call7.i.i.i, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  %10 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %ref.i, align 4
  %call1.i = tail call i32 @msm_submitqueue_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i) #13
  %gpu.i4 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %gpu.i4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpu.i4, align 8
  %13 = tail call i32 @llvm.read_register.i32(metadata !218) #13
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %call3.i = tail call ptr @msm_gpu_create_private_address_space(ptr noundef %12, ptr noundef %16) #13
  %aspace.i = getelementptr inbounds %struct.msm_file_private, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %aspace.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3.i, ptr %aspace.i, align 8
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %18 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %driver_priv.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @context_init.ident, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !239
  tail call void @llvm.prefetch.p0(ptr nonnull @context_init.ident, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @context_init.ident, ptr nonnull @context_init.ident, i32 1, ptr nonnull elementtype(i32) @context_init.ident) #13, !srcloc !240
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !241
  %seqno.i = getelementptr inbounds %struct.msm_file_private, ptr %call7.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %seqno.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %asmresult.i.i.i.i.i, ptr %seqno.i, align 8
  br label %context_init.exit

context_init.exit:                                ; preds = %if.end.i, %load_gpu.exit.context_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %load_gpu.exit.context_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_postclose(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  tail call void @msm_submitqueue_close(ptr noundef %1) #13
  %ref.i.i = getelementptr inbounds %struct.msm_file_private, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #13, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.context_close.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !234

if.end5.i.i.i.i.i.i.context_close.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %context_close.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #13
  br label %context_close.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !244
  tail call void @__msm_file_private_destroy(ptr noundef %ref.i.i) #13, !callees !245
  br label %context_close.exit

context_close.exit:                               ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.context_close.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_lastclose(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_debugfs_init(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_load_gpu(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_submitqueue_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gpu_create_private_address_space(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_submitqueue_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__msm_file_private_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ioctl_get_param(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr nocapture noundef readnone %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.not = icmp eq i32 %1, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %gpu1 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %gpu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpu1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %param = getelementptr inbounds %struct.drm_msm_param, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %param, align 4
  %value = getelementptr inbounds %struct.drm_msm_param, ptr %data, i32 0, i32 2
  %call = tail call i32 %9(ptr noundef nonnull %5, i32 noundef %11, ptr noundef %value) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ioctl_gem_new(ptr noundef %dev, ptr noundef %data, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_msm_gem_new, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, -983044
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.61, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  %conv = trunc i64 %3 to i32
  %handle = getelementptr inbounds %struct.drm_msm_gem_new, ptr %data, i32 0, i32 2
  %call = tail call i32 @msm_gem_new_handle(ptr noundef %dev, ptr noundef %file, i32 noundef %conv, i32 noundef %1, ptr noundef %handle, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ioctl_gem_info(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.drm_msm_gem_info, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.drm_msm_gem_info, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge156
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 3, label %if.end.sw.epilog_crit_edge157
  ]

if.end.sw.epilog_crit_edge157:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.bb_crit_edge156:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge156
  %len = getelementptr inbounds %struct.drm_msm_gem_info, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge157
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %8) #13
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %sw.epilog.cleanup_crit_edge, label %if.end7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %info, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %10, label %if.end7.if.then.i138_crit_edge [
    i32 0, label %sw.bb9
    i32 1, label %sw.bb11
    i32 2, label %sw.bb14
    i32 3, label %sw.bb46
  ]

if.end7.if.then.i138_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i138

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i64 @msm_gem_mmap_offset(ptr noundef nonnull %call) #13
  %value = getelementptr inbounds %struct.drm_msm_gem_info, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call10, ptr %value, align 8
  br label %if.then.i138

sw.bb11:                                          ; preds = %if.end7
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %13 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private.i, align 4
  %gpu.i = getelementptr inbounds %struct.msm_drm_private, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %gpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpu.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %sw.bb11.if.then.i138_crit_edge, label %if.end.i

sw.bb11.if.then.i138_crit_edge:                   ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i138

if.end.i:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15
  %value12 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %data, i32 0, i32 2
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %17 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_priv.i, align 4
  %aspace.i = getelementptr inbounds %struct.msm_file_private, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %aspace.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aspace.i, align 4
  %call.i = tail call i32 @msm_gem_get_iova(ptr noundef nonnull %call, ptr noundef %20, ptr noundef %value12) #13
  br label %if.then.i138

sw.bb14:                                          ; preds = %if.end7
  %len15 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %data, i32 0, i32 3
  %21 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %22)
  %cmp = icmp ugt i32 %22, 31
  br i1 %cmp, label %sw.bb14.if.then.i138_crit_edge, label %if.end17

sw.bb14.if.then.i138_crit_edge:                   ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i138

if.end17:                                         ; preds = %sw.bb14
  %name = getelementptr inbounds %struct.msm_gem_object, ptr %call, i32 0, i32 12
  %value21 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %data, i32 0, i32 2
  %23 = ptrtoint ptr %value21 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %value21, align 8
  %conv22 = trunc i64 %24 to i32
  %25 = inttoptr i32 %conv22 to ptr
  tail call void @__check_object_size(ptr noundef %name, i32 noundef %22, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end17.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end17.if.end.i.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end17
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 %22, i32 -1226833920) #19, !srcloc !246
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !234

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %name, i32 noundef %22) #13
  %27 = tail call i32 @llvm.read_register.i32(metadata !218) #13
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !247
  %and.i.i.i.i = and i32 %29, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %name, ptr noundef %25, i32 noundef %22) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #13, !srcloc !248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end17.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %22, %if.end17.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %22, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end28, label %if.then11.i.i, !prof !234

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %22, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %name, i32 %sub.i.i
  %30 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  %31 = ptrtoint ptr %name to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %name, align 8
  br label %if.then.i138

if.end28:                                         ; preds = %if.end.i.i
  %32 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len15, align 8
  %arrayidx31 = getelementptr %struct.msm_gem_object, ptr %call, i32 0, i32 12, i32 %33
  %34 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx31, align 1
  %35 = load i32, ptr %len15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp33147.not = icmp eq i32 %35, 0
  br i1 %cmp33147.not, label %if.end28.if.then.i138_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.if.then.i138_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i138

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0148, 1
  %exitcond.not = icmp eq i32 %inc, %35
  br i1 %exitcond.not, label %for.cond.if.then.i138_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.if.then.i138_crit_edge:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i138

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end28.for.body_crit_edge
  %i.0148 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %arrayidx36 = getelementptr %struct.msm_gem_object, ptr %call, i32 0, i32 12, i32 %i.0148
  %36 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %37 to i32
  %arrayidx38 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv37
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx38, align 1
  %40 = and i8 %39, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp40.not = icmp eq i8 %40, 0
  br i1 %cmp40.not, label %if.then42, label %for.cond

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx36, align 1
  br label %if.then.i138

sw.bb46:                                          ; preds = %if.end7
  %value47 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %data, i32 0, i32 2
  %42 = ptrtoint ptr %value47 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %value47, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool48.not = icmp eq i64 %43, 0
  br i1 %tobool48.not, label %if.end56.thread, label %land.lhs.true

if.end56.thread:                                  ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #15
  %name57143 = getelementptr inbounds %struct.msm_gem_object, ptr %call, i32 0, i32 12
  %call59144 = tail call i32 @strlen(ptr noundef %name57143) #16
  %len60145 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %data, i32 0, i32 3
  %44 = ptrtoint ptr %len60145 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call59144, ptr %len60145, align 8
  br label %if.then.i138

land.lhs.true:                                    ; preds = %sw.bb46
  %len49 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %data, i32 0, i32 3
  %45 = ptrtoint ptr %len49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len49, align 8
  %name50 = getelementptr inbounds %struct.msm_gem_object, ptr %call, i32 0, i32 12
  %call52 = tail call i32 @strlen(ptr noundef %name50) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %call52)
  %cmp53 = icmp ult i32 %46, %call52
  br i1 %cmp53, label %land.lhs.true.if.then.i138_crit_edge, label %if.then63

land.lhs.true.if.then.i138_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i138

if.then63:                                        ; preds = %land.lhs.true
  %47 = ptrtoint ptr %len49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call52, ptr %len49, align 8
  %conv71 = trunc i64 %43 to i32
  %48 = inttoptr i32 %conv71 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp9.i.i123 = icmp slt i32 %call52, 0
  br i1 %cmp9.i.i123, label %land.rhs16.i.i126, label %if.then.i.i.i129

land.rhs16.i.i126:                                ; preds = %if.then63
  %.b71.i.i125 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i125, label %land.rhs16.i.i126.if.then.i138_crit_edge, label %if.then27.i.i127, !prof !234

land.rhs16.i.i126.if.then.i138_crit_edge:         ; preds = %land.rhs16.i.i126
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i138

if.then27.i.i127:                                 ; preds = %land.rhs16.i.i126
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.then.i138

if.then.i.i.i129:                                 ; preds = %if.then63
  tail call void @__check_object_size(ptr noundef %name50, i32 noundef %call52, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.64, i32 noundef 174) #13
  %call.i.i130 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i130, label %if.then.i.i.i129.copy_to_user.exit_crit_edge, label %if.end.i.i134

if.then.i.i.i129.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i129
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i134:                                    ; preds = %if.then.i.i.i129
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 %call52, i32 -1226833920) #19, !srcloc !250
  %asmresult.i.i132 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i132)
  %cmp.i6.i133 = icmp eq i32 %asmresult.i.i132, 0
  br i1 %cmp.i6.i133, label %if.then2.i.i, label %if.end.i.i134.copy_to_user.exit_crit_edge

if.end.i.i134.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i134
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i134
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i135 = tail call zeroext i1 @__kasan_check_read(ptr noundef %name50, i32 noundef %call52) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %48, ptr noundef %name50, i32 noundef %call52) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i134.copy_to_user.exit_crit_edge, %if.then.i.i.i129.copy_to_user.exit_crit_edge
  %n.addr.0.i136 = phi i32 [ %call52, %if.then.i.i.i129.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %call52, %if.end.i.i134.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i136)
  %tobool76.not = icmp eq i32 %n.addr.0.i136, 0
  %spec.select = select i1 %tobool76.not, i32 0, i32 -14
  br label %if.then.i138

if.then.i138:                                     ; preds = %copy_to_user.exit, %if.then27.i.i127, %land.rhs16.i.i126.if.then.i138_crit_edge, %land.lhs.true.if.then.i138_crit_edge, %if.end56.thread, %if.then42, %for.cond.if.then.i138_crit_edge, %if.end28.if.then.i138_crit_edge, %if.then11.i.i, %sw.bb14.if.then.i138_crit_edge, %if.end.i, %sw.bb11.if.then.i138_crit_edge, %sw.bb9, %if.end7.if.then.i138_crit_edge
  %ret.0 = phi i32 [ 0, %if.end7.if.then.i138_crit_edge ], [ -14, %if.then11.i.i ], [ 0, %if.then42 ], [ 0, %sw.bb9 ], [ -22, %sw.bb14.if.then.i138_crit_edge ], [ -22, %land.lhs.true.if.then.i138_crit_edge ], [ %call.i, %if.end.i ], [ -22, %sw.bb11.if.then.i138_crit_edge ], [ 0, %if.end56.thread ], [ 0, %if.end28.if.then.i138_crit_edge ], [ -14, %if.then27.i.i127 ], [ -14, %land.rhs16.i.i126.if.then.i138_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ 0, %for.cond.if.then.i138_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #13
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #13, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i139, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !234

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #13
  br label %cleanup

if.then.i.i.i139:                                 ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !244
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #13, !callees !245
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i139, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %sw.epilog.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i139 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ioctl_gem_cpu_prep(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file) #4 align 64 {
entry:
  %timeout = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timeout) #13
  %timeout1 = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %.unpack = load i64, ptr %timeout1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack)
  %cmp.i.i = icmp sgt i64 %.unpack, 9223372035
  br i1 %cmp.i.i, label %entry.to_ktime.exit_crit_edge, label %if.end.i.i, !prof !235

entry.to_ktime.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ktime.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.elt18 = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, ptr %data, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %.elt18 to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack19 = load i64, ptr %.elt18, align 8
  %mul.i.i = mul i64 %.unpack, 1000000000
  %conv.i.i = and i64 %.unpack19, 4294967295
  %add.i.i = add i64 %conv.i.i, %mul.i.i
  br label %to_ktime.exit

to_ktime.exit:                                    ; preds = %if.end.i.i, %entry.to_ktime.exit_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end.i.i ], [ 9223372036854775807, %entry.to_ktime.exit_crit_edge ]
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %retval.0.i.i, ptr %timeout, align 8
  %op = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %tobool.not = icmp ult i32 %4, 8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %to_ktime.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.65, i32 noundef %4) #13
  br label %cleanup

if.end:                                           ; preds = %to_ktime.exit
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 8
  %call3 = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %6) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op, align 4
  %call8 = call i32 @msm_gem_cpu_prep(ptr noundef nonnull %call3, i32 noundef %8, ptr noundef nonnull %timeout) #13
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call3, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !242
  call void @llvm.prefetch.p0(ptr nonnull %call3, i32 1, i32 3, i32 1) #13
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call3, ptr nonnull %call3, i32 1, ptr nonnull elementtype(i32) %call3) #13, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !234

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef nonnull %call3, i32 noundef 3) #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !244
  call void @drm_gem_object_free(ptr noundef nonnull %call3) #13, !callees !245
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -2, %if.end.cleanup_crit_edge ], [ %call8, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call8, %if.then10.i.i.i.i.i.i ], [ %call8, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timeout) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ioctl_gem_cpu_fini(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %1) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %call1 = tail call i32 @msm_gem_cpu_fini(ptr noundef nonnull %call) #13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #13, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !234

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !244
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #13, !callees !245
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %call1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call1, %if.then10.i.i.i.i.i.i ], [ %call1, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_ioctl_gem_submit(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ioctl_wait_fence(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file) #4 align 64 {
entry:
  %old.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.drm_msm_wait_fence, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.66, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %gpu = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpu, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %6 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_priv, align 4
  %queueid = getelementptr inbounds %struct.drm_msm_wait_fence, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %queueid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queueid, align 8
  %call = tail call ptr @msm_submitqueue_get(ptr noundef %7, i32 noundef %9) #13
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 8
  %timeout = getelementptr inbounds %struct.drm_msm_wait_fence, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %12)
  %.unpack = load i64, ptr %timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack)
  %cmp.i.i = icmp sgt i64 %.unpack, 9223372035
  br i1 %cmp.i.i, label %if.end7.to_ktime.exit_crit_edge, label %if.end.i.i, !prof !235

if.end7.to_ktime.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ktime.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %.elt19 = getelementptr inbounds %struct.drm_msm_wait_fence, ptr %data, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %.elt19 to i32
  call void @__asan_load8_noabort(i32 %13)
  %.unpack20 = load i64, ptr %.elt19, align 8
  %mul.i.i = mul i64 %.unpack, 1000000000
  %conv.i.i = and i64 %.unpack20, 4294967295
  %add.i.i = add i64 %conv.i.i, %mul.i.i
  br label %to_ktime.exit

to_ktime.exit:                                    ; preds = %if.end.i.i, %if.end7.to_ktime.exit_crit_edge
  %retval.0.i.i = phi i64 [ %add.i.i, %if.end.i.i ], [ 9223372036854775807, %if.end7.to_ktime.exit_crit_edge ]
  %last_fence.i = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %last_fence.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_fence.i, align 4
  %sub.i.i = sub i32 %11, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i21 = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i21, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %to_ktime.exit
  %call1.i = tail call i32 @___ratelimit(ptr noundef nonnull @wait_fence._rs, ptr noundef nonnull @__func__.wait_fence) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then.i23_crit_edge, label %if.then2.i

if.then.i.if.then.i23_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i23

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %last_fence.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_fence.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.68, i32 noundef %11, i32 noundef %17) #13
  br label %if.then.i23

if.end4.i:                                        ; preds = %to_ktime.exit
  %lock.i = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %call, i32 0, i32 8
  %call5.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.if.then.i23_crit_edge

if.end4.i.if.then.i23_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i23

if.end8.i:                                        ; preds = %if.end4.i
  %fence_idr.i = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %call, i32 0, i32 7
  %call9.i = tail call ptr @idr_find(ptr noundef %fence_idr.i, i32 noundef %11) #13
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end13.thread.i_crit_edge, label %if.then11.i

if.end8.i.if.end13.thread.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.thread.i

if.then11.i:                                      ; preds = %if.end8.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %call9.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #13
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #13
  %18 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %refcount.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.then11.i
  %20 = phi i32 [ %19, %if.then11.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %21 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %20, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #13
  %22 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %24 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %23, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i) #13, !srcloc !251
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %23
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !234

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %25 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %26, 1
  %27 = or i32 %add5.i.i.i.i.i.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !234

if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_get_rcu.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 0) #13
  %28 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr.i = load i32, ptr %old.i.i.i.i.i.i, align 4
  br label %dma_fence_get_rcu.exit.i

dma_fence_get_rcu.exit.i:                         ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge
  %29 = phi i32 [ %26, %if.end4.i.i.i.i.i.i.dma_fence_get_rcu.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.i.i.i.i.not.i.i = icmp eq i32 %29, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #13
  br i1 %tobool12.i.i.i.i.not.i.i, label %dma_fence_get_rcu.exit.i.if.end13.thread.i_crit_edge, label %if.end13.i

dma_fence_get_rcu.exit.i.if.end13.thread.i_crit_edge: ; preds = %dma_fence_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.thread.i

if.end13.thread.i:                                ; preds = %dma_fence_get_rcu.exit.i.if.end13.thread.i_crit_edge, %if.end8.i.if.end13.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #13
  br label %if.then.i23

if.end13.i:                                       ; preds = %dma_fence_get_rcu.exit.i
  call void @mutex_unlock(ptr noundef %lock.i) #13
  %call.i.i = call i64 @ktime_get() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i.i, i64 %call.i.i)
  %cmp.i.i.i = icmp slt i64 %retval.0.i.i, %call.i.i
  br i1 %cmp.i.i.i, label %if.end13.i..thread.i.i_crit_edge, label %if.else.i.i

if.end13.i..thread.i.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread.i.i

if.else.i.i:                                      ; preds = %if.end13.i
  %sub.i40.i = sub i64 %retval.0.i.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i40.i)
  %cmp8.i.i.i = icmp sgt i64 %sub.i40.i, -1
  %30 = call i64 @llvm.abs.i64(i64 %sub.i40.i, i1 false) #13
  %31 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %30) #19, !srcloc !252
  %32 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %30, i64 %31, i32 0) #19, !srcloc !253
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388607, i64 %asmresult10.i.i.i.i)
  %cmp3.i.i = icmp ugt i64 %asmresult10.i.i.i.i, 8388607
  %or.cond.i.i = select i1 %cmp8.i.i.i, i1 %cmp3.i.i, i1 false
  br i1 %or.cond.i.i, label %33, label %if.else.i.i..thread.i.i_crit_edge

if.else.i.i..thread.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread.i.i

33:                                               ; preds = %if.else.i.i
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 23
  call void @__sanitizer_cov_trace_const_cmp8(i64 18014398501093376, i64 %asmresult10.i.i.i.i)
  %cmp5.i.i = icmp ult i64 %asmresult10.i.i.i.i, 18014398501093376
  %extract.t.i.i = trunc i64 %div1811.i.i.i to i32
  br i1 %cmp5.i.i, label %..thread.i.i_crit_edge, label %.if.then.i.i_crit_edge

.if.then.i.i_crit_edge:                           ; preds = %33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

..thread.i.i_crit_edge:                           ; preds = %33
  call void @__sanitizer_cov_trace_pc() #15
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread.i.i_crit_edge, %if.else.i.i..thread.i.i_crit_edge, %if.end13.i..thread.i.i_crit_edge
  %extract.t20.i.i = phi i32 [ %extract.t.i.i, %..thread.i.i_crit_edge ], [ 0, %if.end13.i..thread.i.i_crit_edge ], [ 0, %if.else.i.i..thread.i.i_crit_edge ]
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %.thread.i.i, %.if.then.i.i_crit_edge
  %34 = phi i32 [ %extract.t20.i.i, %.thread.i.i ], [ 2147483647, %.if.then.i.i_crit_edge ]
  %call19.i = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %call9.i, i1 noundef zeroext true, i32 noundef %34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp.i = icmp eq i32 %call19.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call19.i)
  %cmp21.not.i = icmp eq i32 %call19.i, -512
  %spec.store.select.i = select i1 %cmp21.not.i, i32 -512, i32 0
  %ret.0.i = select i1 %cmp.i, i32 -110, i32 %spec.store.select.i
  %call.i.i.i.i.i.i.i42.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !242
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #13
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #13, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i43.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i43.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i43.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i43.i)
  %.not.i.i.i.i.i44.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i43.i, 0
  br i1 %.not.i.i.i.i.i44.i, label %if.end5.i.i.i.i.i.i.if.then.i23_crit_edge, label %if.then10.i.i.i.i.i45.i, !prof !234

if.end5.i.i.i.i.i.i.if.then.i23_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i23

if.then10.i.i.i.i.i45.i:                          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #13
  br label %if.then.i23

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !244
  call void @dma_fence_release(ptr noundef %refcount.i.i) #13, !callees !245
  br label %if.then.i23

if.then.i23:                                      ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i45.i, %if.end5.i.i.i.i.i.i.if.then.i23_crit_edge, %if.end13.thread.i, %if.end4.i.if.then.i23_crit_edge, %if.then2.i, %if.then.i.if.then.i23_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then2.i ], [ -22, %if.then.i.if.then.i23_crit_edge ], [ %call5.i, %if.end4.i.if.then.i23_crit_edge ], [ 0, %if.end13.thread.i ], [ %ret.0.i, %if.end5.i.i.i.i.i.i.if.then.i23_crit_edge ], [ %ret.0.i, %if.then10.i.i.i.i.i45.i ], [ %ret.0.i, %if.then.i.i.i ]
  %ref.i = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %call, i32 0, i32 9
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !242
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #13
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #13, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i24, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !234

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #13
  br label %cleanup

if.then.i.i24:                                    ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !244
  call void @msm_submitqueue_destroy(ptr noundef %ref.i) #13, !callees !245
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i24, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ -2, %if.end4.cleanup_crit_edge ], [ %retval.0.i, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %retval.0.i, %if.then10.i.i.i.i.i ], [ %retval.0.i, %if.then.i.i24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ioctl_gem_madvise(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %madv = getelementptr inbounds %struct.drm_msm_gem_madvise, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %3) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %4 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %madv, align 4
  %call2 = tail call i32 @msm_gem_madvise(ptr noundef nonnull %call, i32 noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then3, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %retained = getelementptr inbounds %struct.drm_msm_gem_madvise, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %retained to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2, ptr %retained, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then3, %if.end.if.then.i_crit_edge
  %ret.0 = phi i32 [ 0, %if.then3 ], [ %call2, %if.end.if.then.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #13, !srcloc !243
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !234

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !244
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #13, !callees !245
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %sw.epilog.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ioctl_submitqueue_new(ptr noundef %dev, ptr noundef %data, ptr nocapture noundef readonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %prio = getelementptr inbounds %struct.drm_msm_submitqueue, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prio, align 4
  %id = getelementptr inbounds %struct.drm_msm_submitqueue, ptr %data, i32 0, i32 2
  %call = tail call i32 @msm_submitqueue_create(ptr noundef %dev, ptr noundef %3, i32 noundef %5, i32 noundef 0, ptr noundef %id) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ioctl_submitqueue_close(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %call = tail call i32 @msm_submitqueue_remove(ptr noundef %3, i32 noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ioctl_submitqueue_query(ptr noundef %dev, ptr noundef %data, ptr nocapture noundef readonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %call = tail call i32 @msm_submitqueue_query(ptr noundef %dev, ptr noundef %1, ptr noundef %data) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_new_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @msm_gem_mmap_offset(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_cpu_prep(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_cpu_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_submitqueue_get(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_submitqueue_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_madvise(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_submitqueue_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_submitqueue_remove(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_submitqueue_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_pm_prepare(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call4 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_pm_complete(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call4 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_pm_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.return_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pm_runtime_suspended.exit.return_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %mdss1.i = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %mdss1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdss1.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.69) #13
  %tobool.not.i3 = icmp eq ptr %6, null
  br i1 %tobool.not.i3, label %if.end.return_crit_edge, label %land.lhs.true.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true.i:                                  ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.msm_mdss, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.return_crit_edge, label %if.then.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %disable.i = getelementptr inbounds %struct.msm_mdss_funcs, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disable.i, align 4
  %call4.i = tail call i32 %10(ptr noundef nonnull %6) #13
  br label %return

return:                                           ; preds = %if.then.i, %land.lhs.true.i.return_crit_edge, %if.end.return_crit_edge, %pm_runtime_suspended.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_suspended.exit.return_crit_edge ], [ %call4.i, %if.then.i ], [ 0, %land.lhs.true.i.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_pm_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.return_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

pm_runtime_suspended.exit.return_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %mdss1.i = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %mdss1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdss1.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.69) #13
  %tobool.not.i3 = icmp eq ptr %6, null
  br i1 %tobool.not.i3, label %if.end.return_crit_edge, label %land.lhs.true.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true.i:                                  ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.msm_mdss, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.return_crit_edge, label %if.then.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call4.i = tail call i32 %10(ptr noundef nonnull %6) #13
  br label %return

return:                                           ; preds = %if.then.i, %land.lhs.true.i.return_crit_edge, %if.end.return_crit_edge, %pm_runtime_suspended.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_suspended.exit.return_crit_edge ], [ %call4.i, %if.then.i ], [ 0, %land.lhs.true.i.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_runtime_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mdss1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mdss1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdss1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.69) #13
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.msm_mdss, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %disable = getelementptr inbounds %struct.msm_mdss_funcs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable, align 4
  %call4 = tail call i32 %7(ptr noundef nonnull %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_runtime_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mdss1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mdss1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdss1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.69) #13
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.msm_mdss, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call4 = tail call i32 %7(ptr noundef nonnull %3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_mdp_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_dpu_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_dsi_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_hdmi_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @msm_dp_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @adreno_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !65, !66, !68, !69, !71, !73, !74, !75, !77, !79, !80, !82, !84, !85, !86, !87, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !144, !146, !147, !149, !151, !153, !155, !157, !159, !160, !161, !163, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !195, !197, !199, !201, !203, !205, !206, !207, !208, !210, !212, !214, !216}
!llvm.named.register.sp = !{!218}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @__UNIQUE_ID_reglog349, !1, !"__UNIQUE_ID_reglog349", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 62, i32 1}
!2 = !{ptr @__param_reglog, !3, !"__param_reglog", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 63, i32 1}
!4 = !{ptr @__UNIQUE_ID_reglogtype350, !3, !"__UNIQUE_ID_reglogtype350", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_fbdev351, !6, !"__UNIQUE_ID_fbdev351", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 70, i32 1}
!7 = !{ptr @__param_fbdev, !8, !"__param_fbdev", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 71, i32 1}
!9 = !{ptr @__UNIQUE_ID_fbdevtype352, !8, !"__UNIQUE_ID_fbdevtype352", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_vram353, !11, !"__UNIQUE_ID_vram353", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 75, i32 1}
!12 = !{ptr @__param_vram, !13, !"__param_vram", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 76, i32 1}
!14 = !{ptr @__UNIQUE_ID_vramtype354, !13, !"__UNIQUE_ID_vramtype354", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_dumpstate355, !16, !"__UNIQUE_ID_dumpstate355", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 79, i32 1}
!17 = !{ptr @__param_dumpstate, !18, !"__param_dumpstate", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 80, i32 1}
!19 = !{ptr @__UNIQUE_ID_dumpstatetype356, !18, !"__UNIQUE_ID_dumpstatetype356", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_modeset357, !21, !"__UNIQUE_ID_modeset357", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 83, i32 1}
!22 = !{ptr @__param_modeset, !23, !"__param_modeset", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 84, i32 1}
!24 = !{ptr @__UNIQUE_ID_modesettype358, !23, !"__UNIQUE_ID_modesettype358", i1 false, i1 false}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 96, i32 25}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 120, i32 3}
!29 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @msm_clk_get._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @msm_clk_get._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 183, i32 3}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @msm_writel._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @msm_writel._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 191, i32 3}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @msm_readl._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @msm_readl._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 728, i32 2}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1475, i32 2}
!49 = !{ptr @__initcall__kmod_msm__359_1485_msm_drm_register6, !50, !"__initcall__kmod_msm__359_1485_msm_drm_register6", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1485, i32 1}
!51 = !{ptr @__exitcall_msm_drm_unregister, !52, !"__exitcall_msm_drm_unregister", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1486, i32 1}
!53 = !{ptr @__UNIQUE_ID_author360, !54, !"__UNIQUE_ID_author360", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1488, i32 1}
!55 = !{ptr @__UNIQUE_ID_description361, !56, !"__UNIQUE_ID_description361", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1489, i32 1}
!57 = !{ptr @__UNIQUE_ID_file362, !58, !"__UNIQUE_ID_file362", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1490, i32 1}
!59 = !{ptr @__UNIQUE_ID_license363, !58, !"__UNIQUE_ID_license363", i1 false, i1 false}
!60 = !{ptr @reglog, !61, !"reglog", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 61, i32 13}
!62 = !{ptr @dumpstate, !63, !"dumpstate", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 78, i32 6}
!64 = !{ptr @__param_str_reglog, !3, !"__param_str_reglog", i1 false, i1 false}
!65 = !{ptr @__param_str_fbdev, !8, !"__param_str_fbdev", i1 false, i1 false}
!66 = !{ptr @fbdev, !67, !"fbdev", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 69, i32 13}
!68 = !{ptr @__param_str_vram, !13, !"__param_str_vram", i1 false, i1 false}
!69 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 74, i32 21}
!71 = !{ptr @vram, !72, !"vram", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 74, i32 14}
!73 = !{ptr @__param_str_dumpstate, !18, !"__param_str_dumpstate", i1 false, i1 false}
!74 = !{ptr @__param_str_modeset, !23, !"__param_str_modeset", i1 false, i1 false}
!75 = !{ptr @modeset, !76, !"modeset", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 82, i32 13}
!77 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 140, i32 4}
!79 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.15, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 149, i32 4}
!82 = !{ptr @.str.16, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 154, i32 3}
!84 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @_msm_ioremap._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @_msm_ioremap._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @vblank_ctrl_queue_work.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 328, i32 2}
!89 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.19, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1452, i32 13}
!92 = !{ptr @msm_platform_driver, !93, !"msm_platform_driver", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1447, i32 31}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1271, i32 4}
!96 = !{ptr @.str.21, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1277, i32 4}
!98 = !{ptr @.str.22, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1203, i32 34}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1215, i32 4}
!102 = !{ptr @msm_gpu_match, !103, !"msm_gpu_match", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1306, i32 34}
!104 = !{ptr @msm_drm_ops, !105, !"msm_drm_ops", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1341, i32 42}
!106 = !{ptr @.str.24, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 517, i32 3}
!108 = !{ptr @msm_drm_init.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 527, i32 2}
!110 = !{ptr @.str.25, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @msm_drm_init.__key.26, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 532, i32 2}
!113 = !{ptr @.str.27, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 574, i32 3}
!116 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 587, i32 4}
!118 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 600, i32 4}
!120 = !{ptr @.str.31, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 603, i32 4}
!122 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 613, i32 3}
!124 = !{ptr @.str.33, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 622, i32 4}
!126 = !{ptr @.str.34, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 634, i32 4}
!128 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 457, i32 45}
!130 = !{ptr @.str.36, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 465, i32 3}
!132 = !{ptr @.str.37, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @msm_init_vram._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @msm_init_vram._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.39, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 472, i32 3}
!137 = !{ptr @msm_init_vram._entry.38, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @msm_init_vram._entry_ptr.40, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @msm_init_vram.__key, !140, !"__key", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 483, i32 3}
!141 = !{ptr @.str.41, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.42, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 494, i32 4}
!144 = !{ptr @.str.43, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 499, i32 3}
!146 = !{ptr @.str.44, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mode_config_funcs, !148, !"mode_config_funcs", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 49, i32 43}
!149 = !{ptr @mode_config_helper_funcs, !150, !"mode_config_helper_funcs", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 56, i32 50}
!151 = !{ptr @.str.45, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1090, i32 24}
!153 = !{ptr @.str.46, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1091, i32 24}
!155 = !{ptr @msm_driver, !156, !"msm_driver", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1068, i32 32}
!157 = !{ptr @.str.47, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 662, i32 9}
!159 = !{ptr @.str.48, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @load_gpu.init_lock, !158, !"init_lock", i1 false, i1 false}
!161 = !{ptr @context_init.ident, !162, !"ident", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 675, i32 18}
!163 = !{ptr @context_init.__key, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 684, i32 2}
!165 = !{ptr @.str.49, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.50, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1053, i32 2}
!168 = !{ptr @.str.51, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1054, i32 2}
!170 = !{ptr @.str.52, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1055, i32 2}
!172 = !{ptr @.str.53, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1056, i32 2}
!174 = !{ptr @.str.54, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1057, i32 2}
!176 = !{ptr @.str.55, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1058, i32 2}
!178 = !{ptr @.str.56, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1059, i32 2}
!180 = !{ptr @.str.57, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1060, i32 2}
!182 = !{ptr @.str.58, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1061, i32 2}
!184 = !{ptr @.str.59, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1062, i32 2}
!186 = !{ptr @.str.60, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1063, i32 2}
!188 = !{ptr @msm_ioctls, !189, !"msm_ioctls", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1052, i32 36}
!190 = !{ptr @.str.61, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 775, i32 3}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!194 = !{ptr @.str.62, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.63, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!197 = !{ptr @.str.64, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!199 = !{ptr @.str.65, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 797, i32 3}
!201 = !{ptr @.str.66, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 976, i32 3}
!203 = !{ptr @.str.67, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 931, i32 3}
!205 = !{ptr @wait_fence._rs, !204, !"_rs", i1 false, i1 false}
!206 = !{ptr @__func__.wait_fence, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.68, !204, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @fops, !209, !"fops", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1066, i32 1}
!210 = !{ptr @dt_match, !211, !"dt_match", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1435, i32 34}
!212 = !{ptr @msm_pm_ops, !213, !"msm_pm_ops", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1162, i32 32}
!214 = !{ptr @.str.69, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1102, i32 2}
!216 = !{ptr @.str.70, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/msm/msm_drv.c", i32 1463, i32 2}
!218 = !{!"sp"}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{i8 0, i8 2}
!229 = !{i64 2157765332}
!230 = !{i64 6250225}
!231 = !{i64 6250643}
!232 = !{i64 2157765931}
!233 = !{!"auto-init"}
!234 = !{!"branch_weights", i32 2000, i32 1}
!235 = !{!"branch_weights", i32 1, i32 2000}
!236 = !{i64 2157770703, i64 2157771197, i64 2157770740, i64 2157770796, i64 2157770830, i64 2157770854, i64 2157770895, i64 2157770916, i64 2157770944, i64 2157770978}
!237 = !{i64 2157772297, i64 2157772791, i64 2157772334, i64 2157772390, i64 2157772424, i64 2157772448, i64 2157772489, i64 2157772510, i64 2157772538, i64 2157772572}
!238 = !{i64 2157769109, i64 2157769603, i64 2157769146, i64 2157769202, i64 2157769236, i64 2157769260, i64 2157769301, i64 2157769322, i64 2157769350, i64 2157769384}
!239 = !{i64 2148627178}
!240 = !{i64 2148542487, i64 2148542519, i64 2148542548, i64 2148542582, i64 2148542613, i64 2148542636}
!241 = !{i64 2148627407}
!242 = !{i64 2148631298}
!243 = !{i64 2148545762, i64 2148545794, i64 2148545823, i64 2148545857, i64 2148545888, i64 2148545911}
!244 = !{i64 2149653351}
!245 = !{ptr @__msm_file_private_destroy, ptr @dma_fence_release, ptr @drm_gem_object_free, ptr @msm_submitqueue_destroy}
!246 = !{i64 2153246101, i64 2153246126}
!247 = !{i64 5741656}
!248 = !{i64 5741853}
!249 = !{i64 2153227086}
!250 = !{i64 2153246782, i64 2153246807}
!251 = !{i64 1027280, i64 1027304, i64 1027325, i64 1027342, i64 1027359}
!252 = !{i64 894516, i64 894543}
!253 = !{i64 895211, i64 895238, i64 895271, i64 895292, i64 895319, i64 895345}
