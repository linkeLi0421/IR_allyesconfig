; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/drm.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/drm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.host1x_driver = type { %struct.device_driver, ptr, %struct.list_head, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_tegra_syncpt = type { i32, i32 }
%struct.drm_tegra_cmdbuf = type { i32, i32, i32, i32 }
%struct.drm_tegra_submit = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, [5 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.92 = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.tegra_drm_context = type { ptr, ptr, i32, %struct.xarray }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.host1x_reloc = type { %struct.anon.98, %struct.anon.99, i32, i32 }
%struct.anon.98 = type { ptr, i32 }
%struct.anon.99 = type { ptr, i32 }
%struct.drm_tegra_reloc = type { %struct.anon.96, %struct.anon.97, i32, i32 }
%struct.anon.96 = type { i32, i32 }
%struct.anon.97 = type { i32, i32 }
%struct.tegra_drm_client = type { %struct.host1x_client, %struct.list_head, ptr, ptr, i32, ptr }
%struct.tegra_drm_client_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.93, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.93 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.host1x_device = type { ptr, %struct.list_head, %struct.device, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, %struct.device_dma_parameters }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.tegra_drm_file = type { %struct.idr, %struct.mutex, %struct.xarray, %struct.xarray }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.88, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.88 = type { [4 x i8] }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_tegra_gem_create = type { i64, i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_tegra_gem_mmap = type { i32, i32, i64 }
%struct.drm_tegra_syncpt_read = type { i32, i32 }
%struct.drm_tegra_syncpt_wait = type { i32, i32, i32, i32 }
%struct.drm_tegra_open_channel = type { i32, i32, i64 }
%struct.drm_tegra_get_syncpt = type { i64, i32, i32 }
%struct.drm_tegra_get_syncpt_base = type { i64, i32, i32 }
%struct.drm_tegra_gem_set_tiling = type { i32, i32, i32, i32 }
%struct.tegra_bo = type { %struct.drm_gem_object, %struct.host1x_bo, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.tegra_bo_tiling }
%struct.host1x_bo = type { ptr, %struct.list_head, %struct.spinlock }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.drm_tegra_gem_get_tiling = type { i32, i32, i32, i32 }
%struct.drm_tegra_gem_set_flags = type { i32, i32 }
%struct.drm_tegra_gem_get_flags = type { i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@__initcall__kmod_tegra_drm__341_1427_host1x_drm_init6 = internal global ptr @host1x_drm_init, section ".initcall6.init", align 4
@drivers = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @tegra_display_hub_driver, ptr @tegra_dc_driver, ptr @tegra_hdmi_driver, ptr @tegra_dsi_driver, ptr @tegra_dpaux_driver, ptr @tegra_sor_driver, ptr @tegra_gr2d_driver, ptr @tegra_gr3d_driver, ptr @tegra_vic_driver, ptr @tegra_nvdec_driver], [56 x i8] zeroinitializer }, align 32
@host1x_drm_driver = internal global { %struct.host1x_driver, [60 x i8] } { %struct.host1x_driver { %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @host1x_drm_pm_ops, ptr null, ptr null }, ptr @host1x_drm_subdevs, %struct.list_head zeroinitializer, ptr @host1x_drm_probe, ptr @host1x_drm_remove, ptr null }, [60 x i8] zeroinitializer }, align 32
@__exitcall_host1x_drm_exit = internal global ptr @host1x_drm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author342 = internal constant [67 x i8] c"tegra_drm.author=Thierry Reding <thierry.reding@avionic-design.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description343 = internal constant [46 x i8] c"tegra_drm.description=NVIDIA Tegra DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file344 = internal constant [47 x i8] c"tegra_drm.file=drivers/gpu/drm/tegra/tegra-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [25 x i8] c"tegra_drm.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/tegra/drm.c\00", [36 x i8] zeroinitializer }, align 32
@tegra_display_hub_driver = external dso_local global %struct.platform_driver, align 4
@tegra_dc_driver = external dso_local global %struct.platform_driver, align 4
@tegra_hdmi_driver = external dso_local global %struct.platform_driver, align 4
@tegra_dsi_driver = external dso_local global %struct.platform_driver, align 4
@tegra_dpaux_driver = external dso_local global %struct.platform_driver, align 4
@tegra_sor_driver = external dso_local global %struct.platform_driver, align 4
@tegra_gr2d_driver = external dso_local global %struct.platform_driver, align 4
@tegra_gr3d_driver = external dso_local global %struct.platform_driver, align 4
@tegra_vic_driver = external dso_local global %struct.platform_driver, align 4
@tegra_nvdec_driver = external dso_local global %struct.platform_driver, align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"drm\00", [28 x i8] zeroinitializer }, align 32
@host1x_drm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @host1x_drm_suspend, ptr @host1x_drm_resume, ptr @host1x_drm_suspend, ptr @host1x_drm_resume, ptr @host1x_drm_suspend, ptr @host1x_drm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@host1x_drm_subdevs = internal constant { [37 x %struct.of_device_id], [1804 x i8] } { [37 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sor1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-sor1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [1804 x i8] zeroinitializer }, align 32
@tegra_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @tegra_drm_open, ptr @tegra_drm_postclose, ptr @drm_fb_helper_lastclose, ptr null, ptr null, ptr null, ptr null, ptr @tegra_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr @tegra_gem_prime_import, ptr null, ptr null, ptr @tegra_bo_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 59, ptr @tegra_drm_ioctls, i32 35, ptr @tegra_drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@host1x_drm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&tegra->clients_lock\00", [43 x i8] zeroinitializer }, align 32
@tegra_drm_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @tegra_fb_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr @tegra_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_drm_mode_config_helpers = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @tegra_atomic_commit_tail, ptr null }, [24 x i8] zeroinitializer }, align 32
@host1x_drm_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&tegra->mm_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IOMMU apertures:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  GEM: %#llx-%#llx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  Carveout: %#llx-%#llx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tegra\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NVIDIA Tegra graphics\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20120330\00", [23 x i8] zeroinitializer }, align 32
@tegra_drm_ioctls = internal constant { [35 x %struct.drm_ioctl_desc], [144 x i8] } { [35 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @tegra_gem_create, ptr @.str.19 }, %struct.drm_ioctl_desc { i32 -1072667583, i32 32, ptr @tegra_gem_mmap, ptr @.str.20 }, %struct.drm_ioctl_desc { i32 -1073191870, i32 32, ptr @tegra_syncpt_read, ptr @.str.21 }, %struct.drm_ioctl_desc { i32 -1073191869, i32 32, ptr @tegra_syncpt_incr, ptr @.str.22 }, %struct.drm_ioctl_desc { i32 -1072667580, i32 32, ptr @tegra_syncpt_wait, ptr @.str.23 }, %struct.drm_ioctl_desc { i32 -1072667579, i32 32, ptr @tegra_open_channel, ptr @.str.24 }, %struct.drm_ioctl_desc { i32 -1073191866, i32 32, ptr @tegra_close_channel, ptr @.str.25 }, %struct.drm_ioctl_desc { i32 -1072667577, i32 32, ptr @tegra_get_syncpt, ptr @.str.26 }, %struct.drm_ioctl_desc { i32 -1067948984, i32 32, ptr @tegra_submit, ptr @.str.27 }, %struct.drm_ioctl_desc { i32 -1072667575, i32 32, ptr @tegra_get_syncpt_base, ptr @.str.28 }, %struct.drm_ioctl_desc { i32 -1072667574, i32 32, ptr @tegra_gem_set_tiling, ptr @.str.29 }, %struct.drm_ioctl_desc { i32 -1072667573, i32 32, ptr @tegra_gem_get_tiling, ptr @.str.30 }, %struct.drm_ioctl_desc { i32 -1073191860, i32 32, ptr @tegra_gem_set_flags, ptr @.str.31 }, %struct.drm_ioctl_desc { i32 -1073191859, i32 32, ptr @tegra_gem_get_flags, ptr @.str.32 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072143280, i32 32, ptr @tegra_drm_ioctl_channel_open, ptr @.str.33 }, %struct.drm_ioctl_desc { i32 -1073191855, i32 32, ptr @tegra_drm_ioctl_channel_close, ptr @.str.34 }, %struct.drm_ioctl_desc { i32 -1072667566, i32 32, ptr @tegra_drm_ioctl_channel_map, ptr @.str.35 }, %struct.drm_ioctl_desc { i32 -1073191853, i32 32, ptr @tegra_drm_ioctl_channel_unmap, ptr @.str.36 }, %struct.drm_ioctl_desc { i32 -1069521836, i32 32, ptr @tegra_drm_ioctl_channel_submit, ptr @.str.37 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1073191840, i32 32, ptr @tegra_drm_ioctl_syncpoint_allocate, ptr @.str.38 }, %struct.drm_ioctl_desc { i32 -1073191839, i32 32, ptr @tegra_drm_ioctl_syncpoint_free, ptr @.str.39 }, %struct.drm_ioctl_desc { i32 -1072143262, i32 32, ptr @tegra_drm_ioctl_syncpoint_wait, ptr @.str.40 }], [144 x i8] zeroinitializer }, align 32
@tegra_drm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @tegra_drm_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra_drm_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&fpriv->lock\00", [19 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@tegra_debugfs_list = internal global { [2 x %struct.drm_info_list], [32 x i8] } { [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.16, ptr @tegra_debugfs_framebuffers, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.17, ptr @tegra_debugfs_iova, i32 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"framebuffers\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iova\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%3d: user size: %d x %d, depth %d, %d bpp, refcount %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TEGRA_GEM_CREATE\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TEGRA_GEM_MMAP\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TEGRA_SYNCPT_READ\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TEGRA_SYNCPT_INCR\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TEGRA_SYNCPT_WAIT\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TEGRA_OPEN_CHANNEL\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TEGRA_CLOSE_CHANNEL\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TEGRA_GET_SYNCPT\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TEGRA_SUBMIT\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TEGRA_GET_SYNCPT_BASE\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TEGRA_GEM_SET_TILING\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TEGRA_GEM_GET_TILING\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TEGRA_GEM_SET_FLAGS\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TEGRA_GEM_GET_FLAGS\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TEGRA_CHANNEL_OPEN\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TEGRA_CHANNEL_CLOSE\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TEGRA_CHANNEL_MAP\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TEGRA_CHANNEL_UNMAP\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TEGRA_CHANNEL_SUBMIT\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TEGRA_SYNCPOINT_ALLOCATE\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TEGRA_SYNCPOINT_FREE\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TEGRA_SYNCPOINT_WAIT\00", [43 x i8] zeroinitializer }, align 32
@host1x_drm_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 1311, ptr @.str.43, ptr @.str.44 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"host1x device cleanup failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"host1x_drm_remove\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@host1x_drm_remove._entry_ptr = internal global ptr @host1x_drm_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.46 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1396, i32 39 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"host1x_drm_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1386, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 156, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 136, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1388, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"host1x_drm_pm_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1343, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"host1x_drm_subdevs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1346, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"tegra_drm_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 882, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1164, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"tegra_drm_mode_config_funcs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 56, i32 43 }
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"tegra_drm_mode_config_helpers\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 100, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1223, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1225, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1226, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1227, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 903, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 904, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 905, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"tegra_drm_ioctls\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 748, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"tegra_drm_fops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 796, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 115, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 378, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"tegra_debugfs_list\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 869, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 870, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 871, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 841, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 767, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 768, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 769, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 771, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 773, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 775, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 777, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 779, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 781, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 783, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 785, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 787, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 789, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 791, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 750, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 752, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 754, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 756, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 758, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 760, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 762, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 764, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [31 x i8] c"../drivers/gpu/drm/tegra/drm.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1311, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__exitcall_host1x_drm_exit, ptr @__initcall__kmod_tegra_drm__341_1427_host1x_drm_init6, ptr @host1x_drm_exit, ptr @host1x_drm_remove._entry, ptr @host1x_drm_remove._entry_ptr, ptr @drivers, ptr @host1x_drm_driver, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @host1x_drm_pm_ops, ptr @host1x_drm_subdevs, ptr @tegra_drm_driver, ptr @host1x_drm_probe.__key, ptr @.str.5, ptr @tegra_drm_mode_config_funcs, ptr @tegra_drm_mode_config_helpers, ptr @host1x_drm_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @tegra_drm_ioctls, ptr @tegra_drm_fops, ptr @tegra_drm_open.__key, ptr @.str.14, ptr @xa_init_flags.__key, ptr @.str.15, ptr @tegra_debugfs_list, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_drm_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_drm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_drm_subdevs to i32), i32 7252, i32 9056, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_drm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_drm_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_ioctls to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_drm_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_debugfs_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host1x_drm_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_submit(ptr nocapture noundef readonly %context, ptr nocapture noundef %args, ptr nocapture noundef readonly %drm, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  %syncpt = alloca %struct.drm_tegra_syncpt, align 4
  %cmdbuf = alloca %struct.drm_tegra_cmdbuf, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %num_cmdbufs2 = getelementptr inbounds %struct.drm_tegra_submit, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %num_cmdbufs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cmdbufs2, align 4
  %num_relocs3 = getelementptr inbounds %struct.drm_tegra_submit, ptr %args, i32 0, i32 3
  %4 = ptrtoint ptr %num_relocs3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_relocs3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %syncpt) #10
  %6 = ptrtoint ptr %syncpt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %syncpt, align 4, !annotation !133
  %7 = getelementptr inbounds %struct.drm_tegra_syncpt, ptr %syncpt, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !133
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i, align 4
  %cmdbufs = getelementptr inbounds %struct.drm_tegra_submit, ptr %args, i32 0, i32 8
  %15 = ptrtoint ptr %cmdbufs to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cmdbufs, align 8
  %conv5 = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv5 to ptr
  %relocs = getelementptr inbounds %struct.drm_tegra_submit, ptr %args, i32 0, i32 9
  %18 = ptrtoint ptr %relocs to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %relocs, align 8
  %conv12 = trunc i64 %19 to i32
  %20 = inttoptr i32 %conv12 to ptr
  %syncpts = getelementptr inbounds %struct.drm_tegra_submit, ptr %args, i32 0, i32 7
  %21 = ptrtoint ptr %syncpts to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %syncpts, align 8
  %conv19 = trunc i64 %22 to i32
  %23 = inttoptr i32 %conv19 to ptr
  %num_syncpts = getelementptr inbounds %struct.drm_tegra_submit, ptr %args, i32 0, i32 1
  %24 = ptrtoint ptr %num_syncpts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_syncpts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp20.not = icmp eq i32 %25, 1
  br i1 %cmp20.not, label %if.end, label %entry.cleanup163_crit_edge

entry.cleanup163_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup163

if.end:                                           ; preds = %entry
  %num_waitchks = getelementptr inbounds %struct.drm_tegra_submit, ptr %args, i32 0, i32 4
  %26 = ptrtoint ptr %num_waitchks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_waitchks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp22.not = icmp eq i32 %27, 0
  br i1 %cmp22.not, label %if.end25, label %if.end.cleanup163_crit_edge

if.end.cleanup163_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup163

if.end25:                                         ; preds = %if.end
  %channel = getelementptr inbounds %struct.tegra_drm_context, ptr %context, i32 0, i32 1
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel, align 4
  %call28 = tail call ptr @host1x_job_alloc(ptr noundef %29, i32 noundef %3, i32 noundef %5, i1 noundef zeroext false) #10
  %tobool.not = icmp eq ptr %call28, null
  br i1 %tobool.not, label %if.end25.cleanup163_crit_edge, label %if.end30

if.end25.cleanup163_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup163

if.end30:                                         ; preds = %if.end25
  %30 = ptrtoint ptr %num_relocs3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_relocs3, align 8
  %num_relocs32 = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 7
  %32 = ptrtoint ptr %num_relocs32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %num_relocs32, align 4
  %client33 = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 3
  %33 = ptrtoint ptr %client33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %client33, align 4
  %class = getelementptr inbounds %struct.host1x_client, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %class, align 4
  %class34 = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 26
  %36 = ptrtoint ptr %class34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %class34, align 4
  %serialize = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 27
  %37 = ptrtoint ptr %serialize to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %serialize, align 4
  %syncpt_recovery = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 28
  %38 = ptrtoint ptr %syncpt_recovery to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %syncpt_recovery, align 1
  %mul = shl i32 %5, 1
  %add = add i32 %mul, %3
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #10
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %if.end30.put_crit_edge, label %if.end7.i, !prof !134

if.end30.put_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %put

if.end7.i:                                        ; preds = %if.end30
  %41 = extractvalue { i32, i1 } %39, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3264) #13
  %tobool36.not = icmp eq ptr %call8.i, null
  br i1 %tobool36.not, label %if.end7.i.put_crit_edge, label %while.cond.preheader

if.end7.i.put_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put

while.cond.preheader:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool39.not309 = icmp eq i32 %3, 0
  br i1 %tobool39.not309, label %while.cond.preheader.while.cond71.preheader_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.cond71.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond71.preheader

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %42 = getelementptr inbounds %struct.drm_tegra_cmdbuf, ptr %cmdbuf, i32 0, i32 1
  %43 = getelementptr inbounds %struct.drm_tegra_cmdbuf, ptr %cmdbuf, i32 0, i32 2
  br label %while.body

while.cond71.preheader:                           ; preds = %cleanup.while.cond71.preheader_crit_edge, %while.cond.preheader.while.cond71.preheader_crit_edge
  %relocs76 = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 6
  br label %while.cond71

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %num_cmdbufs.0312 = phi i32 [ %3, %while.body.lr.ph ], [ %dec, %cleanup.while.body_crit_edge ]
  %user_cmdbufs.0311 = phi ptr [ %17, %while.body.lr.ph ], [ %incdec.ptr, %cleanup.while.body_crit_edge ]
  %num_refs.0310 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmdbuf) #10
  %44 = call ptr @memset(ptr %cmdbuf, i32 255, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %while.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

while.body.if.then11.i.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_cmdbufs.0311, i32 16, i32 -1226833920) #14, !srcloc !135
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !136

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmdbuf, i32 noundef 16) #10
  %46 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !137
  %and.i.i.i.i = and i32 %48, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmdbuf, ptr noundef %user_cmdbufs.0311, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end43, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !136

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %while.body.if.then11.i.i_crit_edge
  %res.0.i.i287 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %while.body.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i287
  %add.ptr.i.i = getelementptr i8, ptr %cmdbuf, i32 %sub.i.i
  %49 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i287)
  br label %cleanup.thread

if.end43:                                         ; preds = %if.end.i.i
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %51)
  %cmp44 = icmp ugt i32 %51, 16383
  br i1 %cmp44, label %if.end43.cleanup.thread_crit_edge, label %if.end47

if.end43.cleanup.thread_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end47:                                         ; preds = %if.end43
  %52 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cmdbuf, align 4
  %call48 = call ptr @tegra_gem_lookup(ptr noundef %file, i32 noundef %53) #10
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.cleanup.thread_crit_edge, label %if.end51

if.end47.cleanup.thread_crit_edge:                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.end51:                                         ; preds = %if.end47
  %54 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %42, align 4
  %conv53 = zext i32 %55 to i64
  %56 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %43, align 4
  %conv55 = zext i32 %57 to i64
  %mul56 = shl nuw nsw i64 %conv55, 2
  %add57 = add nuw nsw i64 %mul56, %conv53
  %add.ptr.i = getelementptr i8, ptr %call48, i32 -352
  %inc = add nuw i32 %num_refs.0310, 1
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %num_refs.0310
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i, ptr %arrayidx, align 4
  %and = and i64 %add57, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool59.not = icmp eq i64 %and, 0
  br i1 %tobool59.not, label %lor.lhs.false, label %if.end51.cleanup.thread_crit_edge

if.end51.cleanup.thread_crit_edge:                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.end51
  %size = getelementptr i8, ptr %call48, i32 -168
  %59 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size, align 8
  %conv61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add57, i64 %conv61)
  %cmp62 = icmp ugt i64 %add57, %conv61
  br i1 %cmp62, label %lor.lhs.false.cleanup.thread_crit_edge, label %cleanup

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %if.end51.cleanup.thread_crit_edge, %if.end47.cleanup.thread_crit_edge, %if.end43.cleanup.thread_crit_edge, %if.then11.i.i
  %num_refs.1.ph = phi i32 [ %num_refs.0310, %if.then11.i.i ], [ %num_refs.0310, %if.end43.cleanup.thread_crit_edge ], [ %num_refs.0310, %if.end47.cleanup.thread_crit_edge ], [ %inc, %lor.lhs.false.cleanup.thread_crit_edge ], [ %inc, %if.end51.cleanup.thread_crit_edge ]
  %err.1.ph = phi i32 [ -14, %if.then11.i.i ], [ -22, %if.end43.cleanup.thread_crit_edge ], [ -2, %if.end47.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false.cleanup.thread_crit_edge ], [ -22, %if.end51.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmdbuf) #10
  br label %fail

cleanup:                                          ; preds = %lor.lhs.false
  call void @host1x_job_add_gather(ptr noundef nonnull %call28, ptr noundef nonnull %call48, i32 noundef %57, i32 noundef %55) #10
  %dec = add i32 %num_cmdbufs.0312, -1
  %incdec.ptr = getelementptr %struct.drm_tegra_cmdbuf, ptr %user_cmdbufs.0311, i32 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmdbuf) #10
  %tobool39.not = icmp eq i32 %dec, 0
  br i1 %tobool39.not, label %cleanup.while.cond71.preheader_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.cond71.preheader_crit_edge:         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond71.preheader

while.cond71:                                     ; preds = %if.end104.while.cond71_crit_edge, %while.cond71.preheader
  %num_refs.2 = phi i32 [ %inc108, %if.end104.while.cond71_crit_edge ], [ %3, %while.cond71.preheader ]
  %num_relocs.0 = phi i32 [ %dec72, %if.end104.while.cond71_crit_edge ], [ %5, %while.cond71.preheader ]
  %dec72 = add i32 %num_relocs.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_relocs.0)
  %tobool73.not = icmp eq i32 %num_relocs.0, 0
  br i1 %tobool73.not, label %if.end59.i.i251, label %while.body74

while.body74:                                     ; preds = %while.cond71
  %61 = ptrtoint ptr %relocs76 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %relocs76, align 4
  %arrayidx77 = getelementptr %struct.host1x_reloc, ptr %62, i32 %dec72
  %arrayidx78 = getelementptr %struct.drm_tegra_reloc, ptr %20, i32 %dec72
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 136) #10
  %63 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i.i.i275 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i275 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !137
  %and.i.i = and i32 %65, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %66 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arrayidx78, i32 -1226833921) #10, !srcloc !140
  %asmresult.i = extractvalue { i32, i32 } %66, 0
  %asmresult2.i = extractvalue { i32, i32 } %66, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp slt i32 %asmresult.i, 0
  br i1 %cmp.i, label %fail.loopexit.split.loop.exit, label %if.end.i276

if.end.i276:                                      ; preds = %while.body74
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 140) #10
  %offset.i = getelementptr inbounds %struct.anon.96, ptr %arrayidx78, i32 0, i32 1
  %67 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i.i1.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i1.i to ptr
  %cpu_domain.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 4
  %69 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i2.i) #7, !srcloc !137
  %and.i3.i = and i32 %69, -13
  %or.i4.i = or i32 %and.i3.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i4.i) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %70 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %offset.i, i32 -1226833921) #10, !srcloc !141
  %asmresult14.i = extractvalue { i32, i32 } %70, 0
  %asmresult15.i = extractvalue { i32, i32 } %70, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %offset17.i = getelementptr inbounds %struct.anon.98, ptr %arrayidx77, i32 0, i32 1
  %71 = ptrtoint ptr %offset17.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %asmresult15.i, ptr %offset17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult14.i)
  %cmp19.i = icmp slt i32 %asmresult14.i, 0
  br i1 %cmp19.i, label %fail.loopexit.split.loop.exit385, label %if.end21.i

if.end21.i:                                       ; preds = %if.end.i276
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 144) #10
  %target25.i = getelementptr %struct.drm_tegra_reloc, ptr %20, i32 %dec72, i32 1
  %72 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i.i5.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i5.i to ptr
  %cpu_domain.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 4
  %74 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i6.i) #7, !srcloc !137
  %and.i7.i = and i32 %74, -13
  %or.i8.i = or i32 %and.i7.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i8.i) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %75 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %target25.i, i32 -1226833921) #10, !srcloc !142
  %asmresult33.i = extractvalue { i32, i32 } %75, 0
  %asmresult34.i = extractvalue { i32, i32 } %75, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult33.i)
  %cmp36.i = icmp slt i32 %asmresult33.i, 0
  br i1 %cmp36.i, label %fail.loopexit.split.loop.exit388, label %if.end38.i

if.end38.i:                                       ; preds = %if.end21.i
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 148) #10
  %offset43.i = getelementptr %struct.drm_tegra_reloc, ptr %20, i32 %dec72, i32 1, i32 1
  %76 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i.i9.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i9.i to ptr
  %cpu_domain.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 4
  %78 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i10.i) #7, !srcloc !137
  %and.i11.i = and i32 %78, -13
  %or.i12.i = or i32 %and.i11.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i12.i) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %79 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %offset43.i, i32 -1226833921) #10, !srcloc !143
  %asmresult50.i = extractvalue { i32, i32 } %79, 0
  %asmresult51.i = extractvalue { i32, i32 } %79, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %target52.i = getelementptr %struct.host1x_reloc, ptr %62, i32 %dec72, i32 1
  %offset53.i = getelementptr %struct.host1x_reloc, ptr %62, i32 %dec72, i32 1, i32 1
  %80 = ptrtoint ptr %offset53.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %asmresult51.i, ptr %offset53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult50.i)
  %cmp55.i = icmp slt i32 %asmresult50.i, 0
  br i1 %cmp55.i, label %fail.loopexit.split.loop.exit391, label %if.end57.i

if.end57.i:                                       ; preds = %if.end38.i
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 152) #10
  %shift.i = getelementptr %struct.drm_tegra_reloc, ptr %20, i32 %dec72, i32 2
  %81 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i.i13.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i13.i to ptr
  %cpu_domain.i.i14.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 4
  %83 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i14.i) #7, !srcloc !137
  %and.i15.i = and i32 %83, -13
  %or.i16.i = or i32 %and.i15.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i16.i) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %84 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %shift.i, i32 -1226833921) #10, !srcloc !144
  %asmresult67.i = extractvalue { i32, i32 } %84, 0
  %asmresult68.i = extractvalue { i32, i32 } %84, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %shift69.i = getelementptr %struct.host1x_reloc, ptr %62, i32 %dec72, i32 2
  %85 = ptrtoint ptr %shift69.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %asmresult68.i, ptr %shift69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult67.i)
  %cmp71.i = icmp slt i32 %asmresult67.i, 0
  br i1 %cmp71.i, label %fail.loopexit.split.loop.exit394, label %if.end73.i

if.end73.i:                                       ; preds = %if.end57.i
  %flags.i = getelementptr %struct.host1x_reloc, ptr %62, i32 %dec72, i32 3
  %86 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %flags.i, align 4
  %call74.i = call ptr @tegra_gem_lookup(ptr noundef %file, i32 noundef %asmresult2.i) #10
  %87 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call74.i, ptr %arrayidx77, align 4
  %tobool.not.i = icmp eq ptr %call74.i, null
  br i1 %tobool.not.i, label %if.end73.i.fail_crit_edge, label %if.end79.i

if.end73.i.fail_crit_edge:                        ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end79.i:                                       ; preds = %if.end73.i
  %call80.i = call ptr @tegra_gem_lookup(ptr noundef %file, i32 noundef %asmresult34.i) #10
  %88 = ptrtoint ptr %target52.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call80.i, ptr %target52.i, align 4
  %tobool85.not.i = icmp eq ptr %call80.i, null
  br i1 %tobool85.not.i, label %if.end79.i.fail_crit_edge, label %if.end83

if.end79.i.fail_crit_edge:                        ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end83:                                         ; preds = %if.end79.i
  %89 = ptrtoint ptr %relocs76 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %relocs76, align 4
  %arrayidx85 = getelementptr %struct.host1x_reloc, ptr %90, i32 %dec72
  %91 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx85, align 4
  %add.ptr.i278 = getelementptr i8, ptr %92, i32 -352
  %inc90 = add i32 %num_refs.2, 1
  %arrayidx91 = getelementptr ptr, ptr %call8.i, i32 %num_refs.2
  %93 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr.i278, ptr %arrayidx91, align 4
  %offset93 = getelementptr inbounds %struct.anon.98, ptr %arrayidx85, i32 0, i32 1
  %94 = ptrtoint ptr %offset93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset93, align 4
  %and94 = and i32 %95, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %lor.lhs.false96, label %if.end83.fail_crit_edge

if.end83.fail_crit_edge:                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

lor.lhs.false96:                                  ; preds = %if.end83
  %size100 = getelementptr i8, ptr %92, i32 -168
  %96 = ptrtoint ptr %size100 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size100, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp101.not = icmp ult i32 %95, %97
  br i1 %cmp101.not, label %if.end104, label %lor.lhs.false96.fail_crit_edge

lor.lhs.false96.fail_crit_edge:                   ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end104:                                        ; preds = %lor.lhs.false96
  %target = getelementptr %struct.host1x_reloc, ptr %90, i32 %dec72, i32 1
  %98 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %target, align 4
  %add.ptr.i279 = getelementptr i8, ptr %99, i32 -352
  %inc108 = add i32 %num_refs.2, 2
  %arrayidx109 = getelementptr ptr, ptr %call8.i, i32 %inc90
  %100 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %add.ptr.i279, ptr %arrayidx109, align 4
  %offset111 = getelementptr %struct.host1x_reloc, ptr %90, i32 %dec72, i32 1, i32 1
  %101 = ptrtoint ptr %offset111 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offset111, align 4
  %size113 = getelementptr i8, ptr %99, i32 -168
  %103 = ptrtoint ptr %size113 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %size113, align 8
  %cmp114.not = icmp ult i32 %102, %104
  br i1 %cmp114.not, label %if.end104.while.cond71_crit_edge, label %if.end104.fail_crit_edge

if.end104.fail_crit_edge:                         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end104.while.cond71_crit_edge:                 ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond71

if.end59.i.i251:                                  ; preds = %while.cond71
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #10
  %call.i.i252 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i252, label %if.end59.i.i251.if.then11.i.i268_crit_edge, label %land.lhs.true.i.i255

if.end59.i.i251.if.then11.i.i268_crit_edge:       ; preds = %if.end59.i.i251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i268

land.lhs.true.i.i255:                             ; preds = %if.end59.i.i251
  %105 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 8, i32 -1226833920) #14, !srcloc !135
  %asmresult.i.i253 = extractvalue { i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i253)
  %cmp.i6.i254 = icmp eq i32 %asmresult.i.i253, 0
  br i1 %cmp.i6.i254, label %if.end.i.i265, label %land.lhs.true.i.i255.if.then11.i.i268_crit_edge, !prof !136

land.lhs.true.i.i255.if.then11.i.i268_crit_edge:  ; preds = %land.lhs.true.i.i255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i268

if.end.i.i265:                                    ; preds = %land.lhs.true.i.i255
  %call.i.i.i256 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %syncpt, i32 noundef 8) #10
  %106 = call i32 @llvm.read_register.i32(metadata !123) #10
  %and.i.i.i.i.i.i257 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i.i257 to ptr
  %cpu_domain.i.i.i.i.i258 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 4
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i258) #7, !srcloc !137
  %and.i.i.i.i259 = and i32 %108, -13
  %or.i.i.i.i260 = or i32 %and.i.i.i.i259, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i260) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %call1.i.i.i261 = call i32 @arm_copy_from_user(ptr noundef nonnull %syncpt, ptr noundef %23, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #10, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i261)
  %tobool4.not.i.i264 = icmp eq i32 %call1.i.i.i261, 0
  br i1 %tobool4.not.i.i264, label %if.end126, label %if.end.i.i265.if.then11.i.i268_crit_edge, !prof !136

if.end.i.i265.if.then11.i.i268_crit_edge:         ; preds = %if.end.i.i265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i268

if.then11.i.i268:                                 ; preds = %if.end.i.i265.if.then11.i.i268_crit_edge, %land.lhs.true.i.i255.if.then11.i.i268_crit_edge, %if.end59.i.i251.if.then11.i.i268_crit_edge
  %res.0.i.i263303 = phi i32 [ %call1.i.i.i261, %if.end.i.i265.if.then11.i.i268_crit_edge ], [ 8, %if.end59.i.i251.if.then11.i.i268_crit_edge ], [ 8, %land.lhs.true.i.i255.if.then11.i.i268_crit_edge ]
  %sub.i.i266 = sub i32 8, %res.0.i.i263303
  %add.ptr.i.i267 = getelementptr i8, ptr %syncpt, i32 %sub.i.i266
  %109 = call ptr @memset(ptr %add.ptr.i.i267, i32 0, i32 %res.0.i.i263303)
  br label %fail

if.end126:                                        ; preds = %if.end.i.i265
  %110 = ptrtoint ptr %syncpt to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %syncpt, align 4
  %call127 = call ptr @host1x_syncpt_get_by_id(ptr noundef %14, i32 noundef %111) #10
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %if.end126.fail_crit_edge, label %if.end130

if.end126.fail_crit_edge:                         ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end130:                                        ; preds = %if.end126
  %112 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %context, align 4
  %ops = getelementptr inbounds %struct.tegra_drm_client, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops, align 4
  %is_addr_reg = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %is_addr_reg to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %is_addr_reg, align 4
  %is_addr_reg132 = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 24
  %118 = ptrtoint ptr %is_addr_reg132 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %is_addr_reg132, align 4
  %119 = load ptr, ptr %context, align 4
  %ops134 = getelementptr inbounds %struct.tegra_drm_client, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %ops134 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops134, align 4
  %is_valid_class = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %is_valid_class to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %is_valid_class, align 4
  %is_valid_class135 = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 25
  %124 = ptrtoint ptr %is_valid_class135 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %is_valid_class135, align 4
  %125 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %7, align 4
  %syncpt_incrs = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 14
  %127 = ptrtoint ptr %syncpt_incrs to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %syncpt_incrs, align 4
  %syncpt136 = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 13
  %128 = ptrtoint ptr %syncpt136 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call127, ptr %syncpt136, align 4
  %timeout = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 17
  %129 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 10000, ptr %timeout, align 4
  %timeout137 = getelementptr inbounds %struct.drm_tegra_submit, ptr %args, i32 0, i32 6
  %130 = ptrtoint ptr %timeout137 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %timeout137, align 4
  %132 = add i32 %131, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %132)
  %133 = icmp ult i32 %132, 9999
  %spec.store.select = select i1 %133, i32 %131, i32 10000
  %134 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %spec.store.select, ptr %timeout, align 4
  %135 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %context, align 4
  %dev148 = getelementptr inbounds %struct.host1x_client, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev148, align 4
  %call149 = call i32 @host1x_job_pin(ptr noundef nonnull %call28, ptr noundef %138) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.end130.fail_crit_edge

if.end130.fail_crit_edge:                         ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end152:                                        ; preds = %if.end130
  %call153 = call i32 @host1x_job_submit(ptr noundef nonnull %call28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %if.then155

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  call void @host1x_job_unpin(ptr noundef nonnull %call28) #10
  br label %fail

if.end156:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  %syncpt_end = getelementptr inbounds %struct.host1x_job, ptr %call28, i32 0, i32 15
  %139 = ptrtoint ptr %syncpt_end to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %syncpt_end, align 4
  %fence = getelementptr inbounds %struct.drm_tegra_submit, ptr %args, i32 0, i32 11
  %141 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %fence, align 8
  br label %fail

fail.loopexit.split.loop.exit:                    ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult.i.le = extractvalue { i32, i32 } %66, 0
  br label %fail

fail.loopexit.split.loop.exit385:                 ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult14.i.le = extractvalue { i32, i32 } %70, 0
  br label %fail

fail.loopexit.split.loop.exit388:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult33.i.le = extractvalue { i32, i32 } %75, 0
  br label %fail

fail.loopexit.split.loop.exit391:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult50.i.le = extractvalue { i32, i32 } %79, 0
  br label %fail

fail.loopexit.split.loop.exit394:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult67.i.le = extractvalue { i32, i32 } %84, 0
  br label %fail

fail:                                             ; preds = %fail.loopexit.split.loop.exit394, %fail.loopexit.split.loop.exit391, %fail.loopexit.split.loop.exit388, %fail.loopexit.split.loop.exit385, %fail.loopexit.split.loop.exit, %if.end156, %if.then155, %if.end130.fail_crit_edge, %if.end126.fail_crit_edge, %if.then11.i.i268, %if.end104.fail_crit_edge, %lor.lhs.false96.fail_crit_edge, %if.end83.fail_crit_edge, %if.end79.i.fail_crit_edge, %if.end73.i.fail_crit_edge, %cleanup.thread
  %num_refs.4 = phi i32 [ %num_refs.2, %if.end130.fail_crit_edge ], [ %num_refs.2, %if.then155 ], [ %num_refs.2, %if.end156 ], [ %num_refs.2, %if.end126.fail_crit_edge ], [ %num_refs.1.ph, %cleanup.thread ], [ %num_refs.2, %if.then11.i.i268 ], [ %num_refs.2, %fail.loopexit.split.loop.exit ], [ %num_refs.2, %fail.loopexit.split.loop.exit385 ], [ %num_refs.2, %fail.loopexit.split.loop.exit388 ], [ %num_refs.2, %fail.loopexit.split.loop.exit391 ], [ %num_refs.2, %fail.loopexit.split.loop.exit394 ], [ %num_refs.2, %if.end79.i.fail_crit_edge ], [ %num_refs.2, %if.end73.i.fail_crit_edge ], [ %inc108, %if.end104.fail_crit_edge ], [ %inc90, %if.end83.fail_crit_edge ], [ %inc90, %lor.lhs.false96.fail_crit_edge ]
  %err.3 = phi i32 [ %call149, %if.end130.fail_crit_edge ], [ %call153, %if.then155 ], [ 0, %if.end156 ], [ -2, %if.end126.fail_crit_edge ], [ %err.1.ph, %cleanup.thread ], [ -14, %if.then11.i.i268 ], [ %asmresult.i.le, %fail.loopexit.split.loop.exit ], [ %asmresult14.i.le, %fail.loopexit.split.loop.exit385 ], [ %asmresult33.i.le, %fail.loopexit.split.loop.exit388 ], [ %asmresult50.i.le, %fail.loopexit.split.loop.exit391 ], [ %asmresult67.i.le, %fail.loopexit.split.loop.exit394 ], [ -2, %if.end79.i.fail_crit_edge ], [ -2, %if.end73.i.fail_crit_edge ], [ -22, %if.end104.fail_crit_edge ], [ -22, %if.end83.fail_crit_edge ], [ -22, %lor.lhs.false96.fail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_refs.4)
  %tobool159.not344 = icmp eq i32 %num_refs.4, 0
  br i1 %tobool159.not344, label %fail.while.end162_crit_edge, label %fail.while.body160_crit_edge

fail.while.body160_crit_edge:                     ; preds = %fail
  br label %while.body160

fail.while.end162_crit_edge:                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end162

while.body160:                                    ; preds = %drm_gem_object_put.exit.while.body160_crit_edge, %fail.while.body160_crit_edge
  %num_refs.5345 = phi i32 [ %dec158, %drm_gem_object_put.exit.while.body160_crit_edge ], [ %num_refs.4, %fail.while.body160_crit_edge ]
  %dec158 = add i32 %num_refs.5345, -1
  %arrayidx161 = getelementptr ptr, ptr %call8.i, i32 %dec158
  %142 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx161, align 4
  %tobool.not.i280 = icmp eq ptr %143, null
  br i1 %tobool.not.i280, label %while.body160.drm_gem_object_put.exit_crit_edge, label %if.then.i

while.body160.drm_gem_object_put.exit_crit_edge:  ; preds = %while.body160
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %while.body160
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %143, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @llvm.prefetch.p0(ptr nonnull %143, i32 1, i32 3, i32 1) #10
  %144 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %143, ptr nonnull %143, i32 1, ptr nonnull elementtype(i32) %143) #10, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %143, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !147
  call void @drm_gem_object_free(ptr noundef nonnull %143) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %while.body160.drm_gem_object_put.exit_crit_edge
  %tobool159.not = icmp eq i32 %dec158, 0
  br i1 %tobool159.not, label %drm_gem_object_put.exit.while.end162_crit_edge, label %drm_gem_object_put.exit.while.body160_crit_edge

drm_gem_object_put.exit.while.body160_crit_edge:  ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body160

drm_gem_object_put.exit.while.end162_crit_edge:   ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end162

while.end162:                                     ; preds = %drm_gem_object_put.exit.while.end162_crit_edge, %fail.while.end162_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %put

put:                                              ; preds = %while.end162, %if.end7.i.put_crit_edge, %if.end30.put_crit_edge
  %err.4 = phi i32 [ %err.3, %while.end162 ], [ -12, %if.end7.i.put_crit_edge ], [ -12, %if.end30.put_crit_edge ]
  call void @host1x_job_put(ptr noundef nonnull %call28) #10
  br label %cleanup163

cleanup163:                                       ; preds = %put, %if.end25.cleanup163_crit_edge, %if.end.cleanup163_crit_edge, %entry.cleanup163_crit_edge
  %retval.0 = phi i32 [ %err.4, %put ], [ -22, %entry.cleanup163_crit_edge ], [ -22, %if.end.cleanup163_crit_edge ], [ -12, %if.end25.cleanup163_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %syncpt) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_job_alloc(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_gem_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_add_gather(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_get_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_job_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_job_submit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_register_client(ptr noundef %tegra, ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @host1x_channel_request(ptr noundef %client) #10
  %shared_channel = getelementptr inbounds %struct.tegra_drm_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %shared_channel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %shared_channel, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %clients_lock = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %clients_lock, i32 noundef 0) #10
  %list = getelementptr inbounds %struct.tegra_drm_client, ptr %client, i32 0, i32 1
  %clients = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %2, ptr noundef %clients) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %clients, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tegra_drm_client, ptr %client, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %drm = getelementptr inbounds %struct.tegra_drm_client, ptr %client, i32 0, i32 2
  %7 = ptrtoint ptr %drm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tegra, ptr %drm, align 4
  tail call void @mutex_unlock(ptr noundef %clients_lock) #10
  br label %return

return:                                           ; preds = %list_add_tail.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_unregister_client(ptr noundef %tegra, ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clients_lock = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %clients_lock, i32 noundef 0) #10
  %list = getelementptr inbounds %struct.tegra_drm_client, ptr %client, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.tegra_drm_client, ptr %client, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.tegra_drm_client, ptr %client, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i3.i, align 4
  %drm = getelementptr inbounds %struct.tegra_drm_client, ptr %client, i32 0, i32 2
  %8 = ptrtoint ptr %drm to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %drm, align 4
  tail call void @mutex_unlock(ptr noundef %clients_lock) #10
  %shared_channel = getelementptr inbounds %struct.tegra_drm_client, ptr %client, i32 0, i32 3
  %9 = ptrtoint ptr %shared_channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shared_channel, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @host1x_channel_put(ptr noundef nonnull %10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @host1x_client_iommu_attach(ptr nocapture noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @iommu_get_domain_for_dev(ptr noundef %1) #10
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %archdata = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %archdata, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @arm_iommu_detach_device(ptr noundef %9) #10
  tail call void @arm_iommu_release_mapping(ptr noundef nonnull %11) #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call9 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %domain.0 = phi ptr [ %call9, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %tobool10.not = icmp eq ptr %domain.0, null
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %domain11 = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %domain11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domain11, align 4
  %cmp.not = icmp eq ptr %domain.0, %15
  br i1 %cmp.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %domain14 = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %domain14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain14, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %if.end13.if.end31_crit_edge, label %if.then16

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then16:                                        ; preds = %if.end13
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call18 = tail call ptr @iommu_group_get(ptr noundef %19) #10
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then16.cleanup_crit_edge, label %if.end21

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.then16
  %20 = ptrtoint ptr %domain14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain14, align 4
  %cmp23.not = icmp eq ptr %domain.0, %21
  br i1 %cmp23.not, label %if.end21.if.end30_crit_edge, label %if.then24

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then24:                                        ; preds = %if.end21
  %call26 = tail call i32 @iommu_attach_group(ptr noundef %21, ptr noundef nonnull %call18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.then24.if.end30_crit_edge

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iommu_group_put(ptr noundef nonnull %call18) #10
  br label %cleanup

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %use_explicit_iommu = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %use_explicit_iommu to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %use_explicit_iommu, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end13.if.end31_crit_edge
  %group.0 = phi ptr [ %call18, %if.end30 ], [ null, %if.end13.if.end31_crit_edge ]
  %group32 = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 3
  %23 = ptrtoint ptr %group32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %group.0, ptr %group32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then28, %if.then16.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ 0, %if.end31 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_detach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_release_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @host1x_client_iommu_detach(ptr nocapture noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %group = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.host1x_client, ptr %client, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call1 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %9) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %domain4 = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %domain4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domain4, align 4
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group, align 4
  tail call void @iommu_detach_group(ptr noundef %11, ptr noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group, align 4
  tail call void @iommu_group_put(ptr noundef %15) #10
  %16 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %group, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_drm_alloc(ptr noundef %tegra, i32 noundef %size, ptr nocapture noundef writeonly %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %granule.i = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 5, i32 0, i32 4
  %2 = ptrtoint ptr %granule.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %granule.i, align 4
  %sub.i65 = add i32 %size, -1
  %add.i66 = add i32 %sub.i65, %3
  %neg.i = sub i32 0, %3
  %and.i = and i32 %add.i66, %neg.i
  br label %if.end14.i

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else, %if.then
  %spec.select = phi i32 [ 3521, %if.else ], [ 3520, %if.then ]
  %size.addr.0 = phi i32 [ %and, %if.else ], [ %and.i, %if.then ]
  %dec.i = add i32 %size.addr.0, -1
  %shr.i = lshr i32 %dec.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %4 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #10, !range !148
  %sub.i.i = sub nuw nsw i32 32, %4
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call7 = tail call i32 @__get_free_pages(i32 noundef %spec.select, i32 noundef %cond.i.i) #10
  %5 = inttoptr i32 %call7 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14.i.cleanup_crit_edge, label %if.end11

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end14.i
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %call7) #10
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %dma, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %carveout17 = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 5
  %shift = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %shr = lshr i32 %size.addr.0, %10
  %limit = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %limit, align 8
  %call21 = tail call ptr @alloc_iova(ptr noundef %carveout17, i32 noundef %shr, i32 noundef %12, i1 noundef zeroext true) #10
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end16.free_pages_crit_edge, label %if.end24

if.end16.free_pages_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_pages

if.end24:                                         ; preds = %if.end16
  %pfn_lo.i = getelementptr inbounds %struct.iova, ptr %call21, i32 0, i32 2
  %13 = ptrtoint ptr %pfn_lo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pfn_lo.i, align 4
  %granule.i.i = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 5, i32 0, i32 4
  %15 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %granule.i.i, align 4
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 false) #10, !range !148
  %shl.i = shl i32 %14, %17
  %18 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl.i, ptr %dma, align 4
  %19 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %domain, align 4
  %call.i67 = tail call i32 @__virt_to_phys(i32 noundef %call7) #10
  %call30 = tail call i32 @iommu_map(ptr noundef %20, i32 noundef %shl.i, i32 noundef %call.i67, i32 noundef %size.addr.0, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %free_iova, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

free_iova:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__free_iova(ptr noundef %carveout17, ptr noundef nonnull %call21) #10
  %phi.cast = inttoptr i32 %call30 to ptr
  br label %free_pages

free_pages:                                       ; preds = %free_iova, %if.end16.free_pages_crit_edge
  %err.0 = phi ptr [ %phi.cast, %free_iova ], [ inttoptr (i32 -16 to ptr), %if.end16.free_pages_crit_edge ]
  tail call void @free_pages(i32 noundef %call7, i32 noundef %cond.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_pages, %if.end24.cleanup_crit_edge, %if.then14, %if.end14.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %free_pages ], [ %5, %if.then14 ], [ %5, %if.end24.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end14.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_iova(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_drm_free(ptr noundef %tegra, i32 noundef %size, ptr noundef %virt, i32 noundef %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.thread, label %if.then4

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  br label %get_order.exit

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %granule.i = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 5, i32 0, i32 4
  %2 = ptrtoint ptr %granule.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %granule.i, align 4
  %sub.i23 = add i32 %size, -1
  %add.i24 = add i32 %sub.i23, %3
  %neg.i = sub i32 0, %3
  %and.i = and i32 %add.i24, %neg.i
  %call6 = tail call i32 @iommu_unmap(ptr noundef nonnull %1, i32 noundef %dma, i32 noundef %and.i) #10
  %carveout7 = getelementptr inbounds %struct.tegra_drm, ptr %tegra, i32 0, i32 5
  %4 = ptrtoint ptr %granule.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %granule.i, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #10, !range !148
  %shr.i25 = lshr i32 %dma, %6
  tail call void @free_iova(ptr noundef %carveout7, i32 noundef %shr.i25) #10
  br label %get_order.exit

get_order.exit:                                   ; preds = %if.then4, %if.end.thread
  %size.addr.027 = phi i32 [ %and, %if.end.thread ], [ %and.i, %if.then4 ]
  %dec.i = add i32 %size.addr.027, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %7 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #10, !range !148
  %sub.i.i = sub nuw nsw i32 32, %7
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %8 = ptrtoint ptr %virt to i32
  tail call void @free_pages(i32 noundef %8, i32 noundef %cond.i.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_iova(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_drm_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @host1x_driver_register_full(ptr noundef nonnull @host1x_drm_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 10, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %unregister_host1x, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

unregister_host1x:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @host1x_driver_unregister(ptr noundef nonnull @host1x_drm_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %unregister_host1x, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %unregister_host1x ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @host1x_drm_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 10) #10
  tail call void @host1x_driver_unregister(ptr noundef nonnull @host1x_drm_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_drm_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_device, ptr %dev, i32 0, i32 2
  %call = tail call ptr @drm_dev_alloc(ptr noundef nonnull @tegra_drm_driver, ptr noundef %dev1) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1568) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.put_crit_edge, label %if.end6

if.end.put_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %put

if.end6:                                          ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.host1x_device, ptr %dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call4.i = tail call ptr @iommu_get_domain_for_dev(ptr noundef %3) #10
  %tobool.i.not = icmp eq ptr %call4.i, null
  br i1 %tobool.i.not, label %land.lhs.true.i, label %if.end6.land.lhs.true_crit_edge

if.end6.land.lhs.true_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %if.end6
  %call5.i = tail call i64 @host1x_get_dma_mask(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call5.i)
  %cmp.i220 = icmp ult i64 %call5.i, 4294967296
  br i1 %cmp.i220, label %land.lhs.true.i.land.lhs.true_crit_edge, label %land.lhs.true.i.do.body_crit_edge

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.i.land.lhs.true_crit_edge, %if.end6.land.lhs.true_crit_edge
  %call8 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #10
  br i1 %call8, label %if.then9, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then9:                                         ; preds = %land.lhs.true
  %call10 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #10
  %domain = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %domain, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.then9.free_crit_edge, label %if.end14

if.then9.free_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

if.end14:                                         ; preds = %if.then9
  %call15 = tail call i32 @iova_cache_get() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.domain127_crit_edge, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end14.domain127_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %domain127

do.body:                                          ; preds = %if.end14.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge
  %clients_lock = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %clients_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @host1x_drm_probe.__key) #10
  %clients = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %clients to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %clients, ptr %clients, align 8
  %prev.i = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %clients, ptr %prev.i, align 4
  %driver_data.i = getelementptr inbounds %struct.host1x_device, ptr %dev, i32 0, i32 2, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %dev_private, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %call7.i.i, align 8
  %call.i = tail call i32 @drmm_mode_config_init(ptr noundef %call) #10
  %min_width = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 23
  %max_width = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 25
  %max_height = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 26
  %normalize_zpos = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 98
  %12 = call ptr @memset(ptr %min_width, i32 0, i32 16)
  %13 = ptrtoint ptr %normalize_zpos to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %normalize_zpos, align 1
  %funcs = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 27
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tegra_drm_mode_config_funcs, ptr %funcs, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 103
  %15 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tegra_drm_mode_config_helpers, ptr %helper_private, align 4
  %call28 = tail call i32 @tegra_drm_fb_prepare(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.body.config_crit_edge, label %if.end31

do.body.config_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %config

if.end31:                                         ; preds = %do.body
  tail call void @drm_kms_helper_poll_init(ptr noundef %call) #10
  %call32 = tail call i32 @host1x_device_init(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.fbdev_crit_edge, label %if.end35

if.end31.fbdev_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %fbdev

if.end35:                                         ; preds = %if.end31
  %16 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_width, align 4
  %sub = add i32 %17, -1
  %hmask = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %hmask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %hmask, align 4
  %19 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_height, align 4
  %sub40 = add i32 %20, -1
  %vmask = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %vmask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub40, ptr %vmask, align 8
  %use_explicit_iommu = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %use_explicit_iommu to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %use_explicit_iommu, align 8, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool41.not = icmp eq i8 %23, 0
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end35
  %dma_mask.i = getelementptr inbounds %struct.host1x_device, ptr %dev, i32 0, i32 2, i32 18
  %24 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_mask.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then42.if.end.i222_crit_edge, label %land.lhs.true.i221

if.then42.if.end.i222_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i222

land.lhs.true.i221:                               ; preds = %if.then42
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool2.not.i = icmp eq i64 %27, 0
  %extract.t = trunc i64 %27 to i32
  br i1 %tobool2.not.i, label %land.lhs.true.i221.if.end.i222_crit_edge, label %land.lhs.true.i221.dma_get_mask.exit_crit_edge

land.lhs.true.i221.dma_get_mask.exit_crit_edge:   ; preds = %land.lhs.true.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_get_mask.exit

land.lhs.true.i221.if.end.i222_crit_edge:         ; preds = %land.lhs.true.i221
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i222

if.end.i222:                                      ; preds = %land.lhs.true.i221.if.end.i222_crit_edge, %if.then42.if.end.i222_crit_edge
  br label %dma_get_mask.exit

dma_get_mask.exit:                                ; preds = %if.end.i222, %land.lhs.true.i221.dma_get_mask.exit_crit_edge
  %retval.0.i223.off0 = phi i32 [ -1, %if.end.i222 ], [ %extract.t, %land.lhs.true.i221.dma_get_mask.exit_crit_edge ]
  %domain45 = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %domain45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %domain45, align 4
  %geometry = getelementptr inbounds %struct.iommu_domain, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %geometry to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %geometry, align 4
  %conv46 = and i32 %31, %retval.0.i223.off0
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %29, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %aperture_end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %aperture_end, align 4
  %conv51 = and i32 %33, %retval.0.i223.off0
  %conv52 = zext i32 %conv46 to i64
  %sub53 = add i32 %conv51, -67108864
  %conv54 = zext i32 %sub53 to i64
  %add = add nuw nsw i64 %conv54, 1
  %conv55 = zext i32 %conv51 to i64
  %pgsize_bitmap = getelementptr inbounds %struct.iommu_domain, ptr %29, i32 0, i32 2
  %34 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pgsize_bitmap, align 4
  %36 = tail call i32 @llvm.cttz.i32(i32 %35, i1 false) #10, !range !148
  %carveout = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 5
  %shl = shl nuw i32 1, %36
  %sh_prom = zext i32 %36 to i64
  %shr = lshr i64 %add, %sh_prom
  %conv59 = trunc i64 %shr to i32
  tail call void @init_iova_domain(ptr noundef %carveout, i32 noundef %shl, i32 noundef %conv59) #10
  %granule.i = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 4
  %37 = ptrtoint ptr %granule.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %granule.i, align 8
  %39 = tail call i32 @llvm.cttz.i32(i32 %38, i1 false) #10, !range !148
  %shift = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %shift, align 4
  %sh_prom66 = zext i32 %39 to i64
  %shr67 = lshr i64 %conv55, %sh_prom66
  %conv68 = trunc i64 %shr67 to i32
  %limit = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv68, ptr %limit, align 8
  %mm = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 4
  %sub70 = sub nsw i64 1, %conv52
  %add71 = add nsw i64 %sub70, %conv54
  tail call void @drm_mm_init(ptr noundef %mm, i64 noundef %conv52, i64 noundef %add71) #10
  %mm_lock = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mm_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @host1x_drm_probe.__key.6) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i64 noundef %conv52, i64 noundef %conv54) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i64 noundef %add, i64 noundef %conv55) #10
  br label %if.end81

if.else:                                          ; preds = %if.end35
  %domain75 = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %domain75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %domain75, align 4
  %tobool76.not = icmp eq ptr %43, null
  br i1 %tobool76.not, label %if.else.if.end81_crit_edge, label %if.then77

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then77:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iommu_domain_free(ptr noundef nonnull %43) #10
  %44 = ptrtoint ptr %domain75 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %domain75, align 4
  tail call void @iova_cache_put() #10
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.else.if.end81_crit_edge, %dma_get_mask.exit
  %hub = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 13
  %45 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hub, align 4
  %tobool82.not = icmp eq ptr %46, null
  br i1 %tobool82.not, label %if.end81.if.end90_crit_edge, label %if.then83

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then83:                                        ; preds = %if.end81
  %call85 = tail call i32 @tegra_display_hub_prepare(ptr noundef nonnull %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then83.device_crit_edge, label %if.then83.if.end90_crit_edge

if.then83.if.end90_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then83.device_crit_edge:                       ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %device

if.end90:                                         ; preds = %if.then83.if.end90_crit_edge, %if.end81.if.end90_crit_edge
  %max_vblank_count = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 26
  %47 = ptrtoint ptr %max_vblank_count to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %max_vblank_count, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 19
  %48 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_crtc, align 4
  %call92 = tail call i32 @drm_vblank_init(ptr noundef %call, i32 noundef %49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end90.hub112_crit_edge, label %if.end96

if.end90.hub112_crit_edge:                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %hub112

if.end96:                                         ; preds = %if.end90
  tail call void @drm_mode_config_reset(ptr noundef %call) #10
  %call.i224 = tail call i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @tegra_drm_driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %cmp98 = icmp slt i32 %call.i224, 0
  br i1 %cmp98, label %if.end96.hub112_crit_edge, label %if.end101

if.end96.hub112_crit_edge:                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %hub112

if.end101:                                        ; preds = %if.end96
  %call102 = tail call i32 @tegra_drm_fb_init(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.end101.hub112_crit_edge, label %if.end106

if.end101.hub112_crit_edge:                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %hub112

if.end106:                                        ; preds = %if.end101
  %call107 = tail call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %fb, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fb:                                               ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tegra_drm_fb_exit(ptr noundef %call) #10
  br label %hub112

hub112:                                           ; preds = %fb, %if.end101.hub112_crit_edge, %if.end96.hub112_crit_edge, %if.end90.hub112_crit_edge
  %err.0 = phi i32 [ %call92, %if.end90.hub112_crit_edge ], [ %call.i224, %if.end96.hub112_crit_edge ], [ %call102, %if.end101.hub112_crit_edge ], [ %call107, %fb ]
  %50 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hub, align 4
  %tobool114.not = icmp eq ptr %51, null
  br i1 %tobool114.not, label %hub112.device_crit_edge, label %if.then115

hub112.device_crit_edge:                          ; preds = %hub112
  call void @__sanitizer_cov_trace_pc() #12
  br label %device

if.then115:                                       ; preds = %hub112
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tegra_display_hub_cleanup(ptr noundef nonnull %51) #10
  br label %device

device:                                           ; preds = %if.then115, %hub112.device_crit_edge, %if.then83.device_crit_edge
  %err.1 = phi i32 [ %call85, %if.then83.device_crit_edge ], [ %err.0, %if.then115 ], [ %err.0, %hub112.device_crit_edge ]
  %domain118 = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %domain118 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %domain118, align 4
  %tobool119.not = icmp eq ptr %53, null
  br i1 %tobool119.not, label %device.if.end125_crit_edge, label %if.then120

device.if.end125_crit_edge:                       ; preds = %device
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.then120:                                       ; preds = %device
  call void @__sanitizer_cov_trace_pc() #12
  %mm_lock121 = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %mm_lock121) #10
  %mm122 = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %mm122) #10
  %carveout123 = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 5
  tail call void @put_iova_domain(ptr noundef %carveout123) #10
  tail call void @iova_cache_put() #10
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %device.if.end125_crit_edge
  %call126 = tail call i32 @host1x_device_exit(ptr noundef %dev) #10
  br label %fbdev

fbdev:                                            ; preds = %if.end125, %if.end31.fbdev_crit_edge
  %err.2 = phi i32 [ %call32, %if.end31.fbdev_crit_edge ], [ %err.1, %if.end125 ]
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call) #10
  tail call void @tegra_drm_fb_free(ptr noundef %call) #10
  br label %config

config:                                           ; preds = %fbdev, %do.body.config_crit_edge
  %err.3 = phi i32 [ %call28, %do.body.config_crit_edge ], [ %err.2, %fbdev ]
  tail call void @drm_mode_config_cleanup(ptr noundef %call) #10
  br label %domain127

domain127:                                        ; preds = %config, %if.end14.domain127_crit_edge
  %err.4 = phi i32 [ %call15, %if.end14.domain127_crit_edge ], [ %err.3, %config ]
  %domain128 = getelementptr inbounds %struct.tegra_drm, ptr %call7.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %domain128 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %domain128, align 4
  %tobool129.not = icmp eq ptr %55, null
  br i1 %tobool129.not, label %domain127.free_crit_edge, label %if.then130

domain127.free_crit_edge:                         ; preds = %domain127
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

if.then130:                                       ; preds = %domain127
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iommu_domain_free(ptr noundef nonnull %55) #10
  br label %free

free:                                             ; preds = %if.then130, %domain127.free_crit_edge, %if.then9.free_crit_edge
  %err.5 = phi i32 [ %err.4, %if.then130 ], [ %err.4, %domain127.free_crit_edge ], [ -12, %if.then9.free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %put

put:                                              ; preds = %free, %if.end.put_crit_edge
  %err.6 = phi i32 [ %err.5, %free ], [ -12, %if.end.put_crit_edge ]
  tail call void @drm_dev_put(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %put, %if.end106.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.6, %put ], [ 0, %if.end106.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_drm_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.host1x_device, ptr %dev, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.host1x_device, ptr %dev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #10
  tail call void @drm_kms_helper_poll_fini(ptr noundef %1) #10
  tail call void @tegra_drm_fb_exit(ptr noundef %1) #10
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #10
  tail call void @drm_mode_config_cleanup(ptr noundef %1) #10
  %hub = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hub, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tegra_display_hub_cleanup(ptr noundef nonnull %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @host1x_device_exit(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %call3) #16
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %domain = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %mm_lock = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %mm_lock) #10
  %mm = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %mm) #10
  %carveout = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 5
  tail call void @put_iova_domain(ptr noundef %carveout) #10
  tail call void @iova_cache_put() #10
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain, align 4
  tail call void @iommu_domain_free(ptr noundef %9) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  tail call void @kfree(ptr noundef %3) #10
  tail call void @drm_dev_put(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_drm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host1x_drm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iova_cache_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_fb_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_iova_domain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iova_cache_put() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_display_hub_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_fb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_drm_fb_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_display_hub_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_iova_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_device_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_drm_fb_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_drm_open(ptr nocapture noundef readnone %drm, ptr nocapture noundef writeonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 67108868, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa_head.i.i, align 8
  %idr_base.i = getelementptr inbounds %struct.idr, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %idr_base.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %idr_base.i, align 4
  %idr_next.i = getelementptr inbounds %struct.idr, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %idr_next.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idr_next.i, align 8
  %contexts = getelementptr inbounds %struct.tegra_drm_file, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %contexts, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i = getelementptr inbounds %struct.tegra_drm_file, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.tegra_drm_file, ptr %call7.i.i, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xa_head.i, align 8
  %syncpoints = getelementptr inbounds %struct.tegra_drm_file, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %syncpoints, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i6 = getelementptr inbounds %struct.tegra_drm_file, ptr %call7.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %xa_flags.i.i6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %xa_flags.i.i6, align 8
  %xa_head.i.i7 = getelementptr inbounds %struct.tegra_drm_file, ptr %call7.i.i, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %xa_head.i.i7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %xa_head.i.i7, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @tegra_drm_open.__key) #10
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %9 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_drm_postclose(ptr nocapture noundef readnone %drm, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call = tail call i32 @idr_for_each(ptr noundef %1, ptr noundef nonnull @tegra_drm_context_cleanup, ptr noundef null) #10
  tail call void @tegra_drm_uapi_close_file(ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  tail call void @idr_destroy(ptr noundef %1) #10
  tail call void @mutex_destroy(ptr noundef %lock) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_lastclose(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_debugfs_init(ptr noundef %minor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @tegra_debugfs_list, i32 noundef 2, ptr noundef %1, ptr noundef %minor) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_gem_prime_import(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bo_dumb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_drm_context_cleanup(i32 noundef %id, ptr noundef %p, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %ops.i = getelementptr inbounds %struct.tegra_drm_client, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %close_channel.i = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %close_channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %close_channel.i, align 4
  tail call void %5(ptr noundef %p) #10
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 4
  %dev.i = getelementptr inbounds %struct.host1x_client, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 5) #10
  tail call void @kfree(ptr noundef %p) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_drm_uapi_close_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_debugfs_framebuffers(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %fb_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 6
  tail call void @mutex_lock_nested(ptr noundef %fb_lock, i32 noundef 0) #10
  %fb_list = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 8
  %6 = ptrtoint ptr %fb_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn24 = load ptr, ptr %fb_list, align 4
  %cmp.not25 = icmp eq ptr %.pn24, %fb_list
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn26 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn24, %entry.for.body_crit_edge ]
  %base = getelementptr i8, ptr %.pn26, i32 8
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %width = getelementptr i8, ptr %.pn26, i32 92
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 8
  %height = getelementptr i8, ptr %.pn26, i32 96
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %format = getelementptr i8, ptr %.pn26, i32 44
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %format, align 8
  %depth = getelementptr inbounds %struct.drm_format_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %depth, align 4
  %conv = zext i8 %16 to i32
  %17 = getelementptr inbounds %struct.drm_format_info, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 2
  %conv5 = zext i8 %19 to i32
  %mul = shl nuw nsw i32 %conv5, 3
  %refcount.i = getelementptr i8, ptr %.pn26, i32 20
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %refcount.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %conv, i32 noundef %mul, i32 noundef %21) #10
  %22 = ptrtoint ptr %.pn26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn26, align 4
  %cmp.not = icmp eq ptr %.pn, %fb_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %fb_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_debugfs_iova(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #10
  %8 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %9 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %10 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !150
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__drm_puts_seq_file, ptr %8, align 4, !alias.scope !150
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %s, ptr %9, align 4, !alias.scope !150
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %10, align 4, !alias.scope !150
  %domain = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mm_lock = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #10
  %mm = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 4
  call void @drm_mm_print(ptr noundef %mm, ptr noundef nonnull %p) #10
  call void @mutex_unlock(ptr noundef %mm_lock) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_print(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gem_create(ptr noundef %drm, ptr noundef %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %conv = trunc i64 %1 to i32
  %flags = getelementptr inbounds %struct.drm_tegra_gem_create, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %handle = getelementptr inbounds %struct.drm_tegra_gem_create, ptr %data, i32 0, i32 2
  %call = tail call ptr @tegra_bo_create_with_handle(ptr noundef %file, ptr noundef %drm, i32 noundef %conv, i32 noundef %3, ptr noundef %handle) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %4, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gem_mmap(ptr nocapture noundef readnone %drm, ptr nocapture noundef %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start.i, align 8
  %shl.i = shl i64 %3, 12
  %offset = getelementptr inbounds %struct.drm_tegra_gem_mmap, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %shl.i, ptr %offset, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_syncpt_read(ptr nocapture noundef readonly %drm, ptr nocapture noundef %data, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %call1 = tail call ptr @host1x_syncpt_get_by_id_noref(ptr noundef %5, i32 noundef %7) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @host1x_syncpt_read_min(ptr noundef nonnull %call1) #10
  %value = getelementptr inbounds %struct.drm_tegra_syncpt_read, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_syncpt_incr(ptr nocapture noundef readonly %drm, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %call1 = tail call ptr @host1x_syncpt_get_by_id_noref(ptr noundef %5, i32 noundef %7) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @host1x_syncpt_incr(ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_syncpt_wait(ptr nocapture noundef readonly %drm, ptr noundef %data, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %call1 = tail call ptr @host1x_syncpt_get_by_id_noref(ptr noundef %5, i32 noundef %7) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %thresh = getelementptr inbounds %struct.drm_tegra_syncpt_wait, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %thresh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %thresh, align 4
  %timeout = getelementptr inbounds %struct.drm_tegra_syncpt_wait, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #10
  %value = getelementptr inbounds %struct.drm_tegra_syncpt_wait, ptr %data, i32 0, i32 3
  %call3 = tail call i32 @host1x_syncpt_wait(ptr noundef nonnull %call1, i32 noundef %9, i32 noundef %call2.i, ptr noundef %value) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_open_channel(ptr nocapture noundef readonly %drm, ptr nocapture noundef %data, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %clients = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %clients, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %clients
  br i1 %cmp.not, label %for.cond.if.then18_crit_edge, label %for.body

for.cond.if.then18_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

for.body:                                         ; preds = %for.cond
  %class = getelementptr i8, ptr %.pn, i32 -216
  %6 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %class, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 8
  %cmp3 = icmp eq i32 %7, %9
  br i1 %cmp3, label %if.then4, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then4:                                         ; preds = %for.body
  %client.0.le = getelementptr i8, ptr %.pn, i32 -240
  %dev.i = getelementptr i8, ptr %.pn, i32 -228
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %if.then4
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !154
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.then18_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.then18_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !155
  br label %if.then18

if.end.i:                                         ; preds = %if.then4
  %ops.i = getelementptr i8, ptr %.pn, i32 20
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call1.i = tail call i32 %16(ptr noundef %client.0.le, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %call.i32.i = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 5) #10
  br label %if.then18

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @idr_alloc(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %for.end

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %close_channel.i = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %close_channel.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %close_channel.i, align 4
  tail call void %22(ptr noundef nonnull %call7.i.i) #10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %call.i33.i = tail call i32 @__pm_runtime_idle(ptr noundef %24, i32 noundef 5) #10
  br label %if.then18

for.end:                                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %client.0.le, ptr %call7.i.i, align 8
  %id.i = getelementptr inbounds %struct.tegra_drm_context, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call7.i, ptr %id.i, align 8
  %conv = zext i32 %call7.i to i64
  %context9 = getelementptr inbounds %struct.drm_tegra_open_channel, ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %context9 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv, ptr %context9, align 8
  br label %if.end19

if.then18:                                        ; preds = %if.then9.i, %if.then2.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.if.then18_crit_edge, %for.cond.if.then18_crit_edge
  %err.0.ph = phi i32 [ %call.i.i, %do.end11.i.i.i.i.i.i ], [ %call.i.i, %if.then.i.i.if.then18_crit_edge ], [ %call7.i, %if.then9.i ], [ %call1.i, %if.then2.i ], [ -19, %for.cond.if.then18_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %for.end
  %err.042 = phi i32 [ %err.0.ph, %if.then18 ], [ 0, %for.end ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.042, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_close_channel(ptr nocapture noundef readnone %drm, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  %conv = trunc i64 %3 to i32
  %call = tail call ptr @idr_find(ptr noundef %1, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.tegra_drm_context, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call3 = tail call ptr @idr_remove(ptr noundef %1, i32 noundef %5) #10
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %ops.i = getelementptr inbounds %struct.tegra_drm_client, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %close_channel.i = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %close_channel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %close_channel.i, align 4
  tail call void %11(ptr noundef nonnull %call) #10
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %dev.i = getelementptr inbounds %struct.host1x_client, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 5) #10
  tail call void @kfree(ptr noundef nonnull %call) #10
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end ], [ -22, %entry.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_get_syncpt(ptr nocapture noundef readnone %drm, ptr nocapture noundef %data, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  %conv = trunc i64 %3 to i32
  %call = tail call ptr @idr_find(ptr noundef %1, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.drm_tegra_get_syncpt, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %num_syncpts = getelementptr inbounds %struct.host1x_client, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %num_syncpts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_syncpts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp.not = icmp ult i32 %5, %9
  br i1 %cmp.not, label %if.end4, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %syncpts = getelementptr inbounds %struct.host1x_client, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %syncpts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %syncpts, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call i32 @host1x_syncpt_id(ptr noundef %13) #10
  %id = getelementptr inbounds %struct.drm_tegra_get_syncpt, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call8, ptr %id, align 4
  br label %unlock

unlock:                                           ; preds = %if.end4, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end4 ], [ -19, %entry.unlock_crit_edge ], [ -22, %if.end.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_submit(ptr noundef %drm, ptr noundef %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  %conv = trunc i64 %3 to i32
  %call = tail call ptr @idr_find(ptr noundef %1, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %ops = getelementptr inbounds %struct.tegra_drm_client, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %submit = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %submit, align 4
  %call2 = tail call i32 %9(ptr noundef nonnull %call, ptr noundef %data, ptr noundef %drm, ptr noundef %file) #10
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_get_syncpt_base(ptr nocapture noundef readnone %drm, ptr nocapture noundef %data, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.tegra_drm_file, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  %conv = trunc i64 %3 to i32
  %call = tail call ptr @idr_find(ptr noundef %1, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %entry
  %syncpt2 = getelementptr inbounds %struct.drm_tegra_get_syncpt_base, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %syncpt2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %syncpt2, align 8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %num_syncpts = getelementptr inbounds %struct.host1x_client, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %num_syncpts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_syncpts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp.not = icmp ult i32 %5, %9
  br i1 %cmp.not, label %if.end6, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end6:                                          ; preds = %if.end
  %syncpts = getelementptr inbounds %struct.host1x_client, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %syncpts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %syncpts, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call ptr @host1x_syncpt_get_base(ptr noundef %13) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end6.unlock_crit_edge, label %if.end13

if.end6.unlock_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @host1x_syncpt_base_id(ptr noundef nonnull %call10) #10
  %id = getelementptr inbounds %struct.drm_tegra_get_syncpt_base, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call14, ptr %id, align 4
  br label %unlock

unlock:                                           ; preds = %if.end13, %if.end6.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end13 ], [ -19, %entry.unlock_crit_edge ], [ -22, %if.end.unlock_crit_edge ], [ -6, %if.end6.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gem_set_tiling(ptr nocapture noundef readnone %drm, ptr nocapture noundef readonly %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.drm_tegra_gem_set_tiling, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %value2 = getelementptr inbounds %struct.drm_tegra_gem_set_tiling, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %value4 = getelementptr inbounds %struct.drm_tegra_gem_set_tiling, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %value4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not = icmp eq i32 %6, 0
  br i1 %cmp5.not, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %value9 = getelementptr inbounds %struct.drm_tegra_gem_set_tiling, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %value9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp10 = icmp ugt i32 %8, 5
  br i1 %cmp10, label %sw.bb8.cleanup_crit_edge, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %value.0 = phi i32 [ 0, %sw.bb3.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %8, %sw.bb8.sw.epilog_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %10) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  %tiling = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 10
  %11 = ptrtoint ptr %tiling to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %1, ptr %tiling, align 8
  %value19 = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %value19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %value.0, ptr %value19, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -2, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gem_get_tiling(ptr nocapture noundef readnone %drm, ptr nocapture noundef %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tiling = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %tiling to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tiling, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %3, label %if.end.if.then.i_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
  ]

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mode2 = getelementptr inbounds %struct.drm_tegra_gem_get_tiling, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %mode2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mode2, align 4
  br label %if.then.i.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mode4 = getelementptr inbounds %struct.drm_tegra_gem_get_tiling, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %mode4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %mode4, align 4
  br label %if.then.i.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mode7 = getelementptr inbounds %struct.drm_tegra_gem_get_tiling, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %mode7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %mode7, align 4
  %value9 = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %value9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value9, align 4
  br label %if.then.i.sink.split

if.then.i.sink.split:                             ; preds = %sw.bb6, %sw.bb3, %sw.bb
  %.sink = phi i32 [ 0, %sw.bb ], [ 0, %sw.bb3 ], [ %9, %sw.bb6 ]
  %value = getelementptr inbounds %struct.drm_tegra_gem_get_tiling, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %value, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.sink.split, %if.end.if.then.i_crit_edge
  %err.0 = phi i32 [ -22, %if.end.if.then.i_crit_edge ], [ 0, %if.then.i.sink.split ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %err.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i.i ], [ %err.0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gem_set_flags(ptr nocapture noundef readnone %drm, ptr nocapture noundef readonly %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_tegra_gem_set_flags, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %tobool.not = icmp ult i32 %1, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %3) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %flags5 = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flags5, align 8
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and7 = and i32 %6, 1
  store i32 %and7, ptr %flags5, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_gem_get_flags(ptr nocapture noundef readnone %drm, ptr nocapture noundef %data, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_tegra_gem_get_flags, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  %flags2 = getelementptr inbounds %struct.tegra_bo, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags2, align 8
  %and = and i32 %4, 1
  store i32 %and, ptr %flags, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !136

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_ioctl_channel_open(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_ioctl_channel_close(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_ioctl_channel_map(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_ioctl_channel_unmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_ioctl_channel_submit(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_ioctl_syncpoint_allocate(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_ioctl_syncpoint_free(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_ioctl_syncpoint_wait(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_bo_create_with_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_get_by_id_noref(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_read_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_incr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_wait(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_get_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_base_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @host1x_get_dma_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_fb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_atomic_check(ptr noundef %drm, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_atomic_helper_check(ptr noundef %drm, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @tegra_display_hub_atomic_check(ptr noundef %drm, ptr noundef %state) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_display_hub_atomic_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_atomic_commit_tail(ptr noundef %old_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %hub = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hub, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @dma_fence_begin_signalling() #10
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %1, ptr noundef %old_state) #10
  tail call void @tegra_display_hub_atomic_commit(ptr noundef %1, ptr noundef %old_state) #10
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %old_state, i32 noundef 0) #10
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %old_state) #10
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %old_state) #10
  tail call void @dma_fence_end_signalling(i1 noundef zeroext %call) #10
  tail call void @drm_atomic_helper_wait_for_vblanks(ptr noundef %1, ptr noundef %old_state) #10
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %1, ptr noundef %old_state) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_atomic_helper_commit_tail_rpm(ptr noundef %old_state) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %num_crtc1.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 19
  %8 = ptrtoint ptr %num_crtc1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_crtc1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not.i = icmp eq i32 %9, 0
  br i1 %cmp2.not.i, label %if.end.tegra_atomic_post_commit.exit_crit_edge, label %for.body.lr.ph.i

if.end.tegra_atomic_post_commit.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_atomic_post_commit.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtcs.i, align 4
  %arrayidx.i = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %i.03.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tegra_crtc_atomic_post_commit(ptr noundef nonnull %13, ptr noundef %old_state) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.03.i, 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 30, i32 19
  %16 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_crtc.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tegra_atomic_post_commit.exit_crit_edge

for.inc.i.tegra_atomic_post_commit.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tegra_atomic_post_commit.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

tegra_atomic_post_commit.exit:                    ; preds = %for.inc.i.tegra_atomic_post_commit.exit_crit_edge, %if.end.tegra_atomic_post_commit.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_begin_signalling() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_display_hub_atomic_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_end_signalling(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_vblanks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail_rpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_crtc_atomic_post_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !122}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_tegra_drm__341_1427_host1x_drm_init6, !1, !"__initcall__kmod_tegra_drm__341_1427_host1x_drm_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1427, i32 1}
!2 = !{ptr @__exitcall_host1x_drm_exit, !3, !"__exitcall_host1x_drm_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1434, i32 1}
!4 = !{ptr @__UNIQUE_ID_author342, !5, !"__UNIQUE_ID_author342", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1436, i32 1}
!6 = !{ptr @__UNIQUE_ID_description343, !7, !"__UNIQUE_ID_description343", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1437, i32 1}
!8 = !{ptr @__UNIQUE_ID_file344, !9, !"__UNIQUE_ID_file344", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1438, i32 1}
!10 = !{ptr @__UNIQUE_ID_license345, !9, !"__UNIQUE_ID_license345", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!13 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 136, i32 8}
!20 = !{ptr @drivers, !21, !"drivers", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1396, i32 39}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1388, i32 11}
!24 = !{ptr @host1x_drm_driver, !25, !"host1x_drm_driver", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1386, i32 29}
!26 = !{ptr @host1x_drm_pm_ops, !27, !"host1x_drm_pm_ops", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1343, i32 8}
!28 = !{ptr @host1x_drm_subdevs, !29, !"host1x_drm_subdevs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1346, i32 34}
!30 = !{ptr @host1x_drm_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1164, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @host1x_drm_probe.__key.6, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1223, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1225, i32 3}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1226, i32 3}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1227, i32 3}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 903, i32 10}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 904, i32 10}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 905, i32 10}
!48 = !{ptr @tegra_drm_driver, !49, !"tegra_drm_driver", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 882, i32 32}
!50 = !{ptr @tegra_drm_open.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 115, i32 2}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @xa_init_flags.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!55 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 870, i32 4}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 871, i32 4}
!60 = !{ptr @tegra_debugfs_list, !61, !"tegra_debugfs_list", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 869, i32 29}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 841, i32 17}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 767, i32 2}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 768, i32 2}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 769, i32 2}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 771, i32 2}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 773, i32 2}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 775, i32 2}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 777, i32 2}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 779, i32 2}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 781, i32 2}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 783, i32 2}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 785, i32 2}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 787, i32 2}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 789, i32 2}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 791, i32 2}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 750, i32 2}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 752, i32 2}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 754, i32 2}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 756, i32 2}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 758, i32 2}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 760, i32 2}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 762, i32 2}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 764, i32 2}
!108 = !{ptr @tegra_drm_ioctls, !109, !"tegra_drm_ioctls", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 748, i32 36}
!110 = !{ptr @tegra_drm_fops, !111, !"tegra_drm_fops", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 796, i32 37}
!112 = !{ptr @tegra_drm_mode_config_funcs, !113, !"tegra_drm_mode_config_funcs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 56, i32 43}
!114 = !{ptr @tegra_drm_mode_config_helpers, !115, !"tegra_drm_mode_config_helpers", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 100, i32 1}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/tegra/drm.c", i32 1311, i32 3}
!118 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @host1x_drm_remove._entry, !117, !"_entry", i1 false, i1 false}
!122 = !{ptr @host1x_drm_remove._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 2153278618, i64 2153278643}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 5774173}
!138 = !{i64 5774370}
!139 = !{i64 2153259603}
!140 = !{i64 2157369403, i64 2157369683, i64 2157370017, i64 2157370351}
!141 = !{i64 2157381753, i64 2157382033, i64 2157382367, i64 2157382701}
!142 = !{i64 2157393999, i64 2157394279, i64 2157394613, i64 2157394947}
!143 = !{i64 2157406349, i64 2157406629, i64 2157406963, i64 2157407297}
!144 = !{i64 2157418603, i64 2157418883, i64 2157419217, i64 2157419551}
!145 = !{i64 2148285677}
!146 = !{i64 2148200141, i64 2148200173, i64 2148200202, i64 2148200236, i64 2148200267, i64 2148200290}
!147 = !{i64 2149645332}
!148 = !{i32 0, i32 33}
!149 = !{i8 0, i8 2}
!150 = !{!151}
!151 = distinct !{!151, !152, !"drm_seq_file_printer: %agg.result"}
!152 = distinct !{!152, !"drm_seq_file_printer"}
!153 = !{i64 2148195565}
!154 = !{i64 680388, i64 680413, i64 680435, i64 680451, i64 680463, i64 680483, i64 680507, i64 680523, i64 680535}
!155 = !{i64 2148195753}
