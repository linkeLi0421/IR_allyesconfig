; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/rockchip_drm_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/rockchip_drm_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.92 = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.rockchip_drm_private = type { ptr, %struct.mutex, %struct.drm_mm }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@is_support_iommu = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Failed to attach iommu device\0A\00", [57 x i8] zeroinitializer }, align 32
@num_rockchip_sub_drivers = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rockchip_sub_drivers = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@rockchip_drm_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_drm_platform_probe, ptr @rockchip_drm_platform_remove, ptr @rockchip_drm_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_drm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_rockchipdrm__320_500_rockchip_drm_init6 = internal global ptr @rockchip_drm_init, section ".initcall6.init", align 4
@__exitcall_rockchip_drm_fini = internal global ptr @rockchip_drm_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [54 x i8] c"rockchipdrm.author=Mark Yao <mark.yao@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [44 x i8] c"rockchipdrm.description=ROCKCHIP DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [54 x i8] c"rockchipdrm.file=drivers/gpu/drm/rockchip/rockchipdrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [27 x i8] c"rockchipdrm.license=GPL v2\00", section ".modinfo", align 1
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip-drm\00", [19 x i8] zeroinitializer }, align 32
@rockchip_drm_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,display-subsystem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rockchip_drm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_drm_sys_suspend, ptr @rockchip_drm_sys_resume, ptr @rockchip_drm_sys_suspend, ptr @rockchip_drm_sys_resume, ptr @rockchip_drm_sys_suspend, ptr @rockchip_drm_sys_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rockchip_drm_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @rockchip_drm_bind, ptr @rockchip_drm_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iommus\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"no iommu attached for %pOF, using non-iommu buffers\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* missing 'ports' property\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"*ERROR* No available vop found for display-subsystem.\0A\00", [41 x i8] zeroinitializer }, align 32
@rockchip_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @rockchip_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @rockchip_gem_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 19, ptr null, i32 0, ptr @rockchip_drm_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"*ERROR* Failed to remove existing framebuffers - %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rockchip\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RockChip Soc DRM\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20140818\00", [23 x i8] zeroinitializer }, align 32
@rockchip_drm_driver_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"IOMMU context initialized (aperture: %#llx-%#llx)\0A\00", [45 x i8] zeroinitializer }, align 32
@rockchip_drm_init_iommu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&private->mm_lock\00", [46 x i8] zeroinitializer }, align 32
@vop_platform_driver = external dso_local global %struct.platform_driver, align 4
@rockchip_lvds_driver = external dso_local global %struct.platform_driver, align 4
@rockchip_dp_driver = external dso_local global %struct.platform_driver, align 4
@cdn_dp_driver = external dso_local global %struct.platform_driver, align 4
@dw_hdmi_rockchip_pltfm_driver = external dso_local global %struct.platform_driver, align 4
@dw_mipi_dsi_rockchip_driver = external dso_local global %struct.platform_driver, align 4
@inno_hdmi_driver = external dso_local global %struct.platform_driver, align 4
@rk3066_hdmi_driver = external dso_local global %struct.platform_driver, align 4
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"is_support_iommu\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 56, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"num_rockchip_sub_drivers\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"rockchip_sub_drivers\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 236, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [29 x i8] c"rockchip_drm_platform_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 439, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 444, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"rockchip_drm_dt_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 433, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"rockchip_drm_pm_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 230, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"rockchip_drm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 334, i32 42 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 352, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 361, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 363, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 380, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 385, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"rockchip_drm_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 199, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 120, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 207, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 208, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 209, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant [25 x i8] c"rockchip_drm_driver_fops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 197, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 92, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [47 x i8] c"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 95, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_rockchip_drm_fini, ptr @__initcall__kmod_rockchipdrm__320_500_rockchip_drm_init6, ptr @rockchip_drm_fini, ptr @is_support_iommu, ptr @.str, ptr @.str.1, ptr @num_rockchip_sub_drivers, ptr @rockchip_sub_drivers, ptr @rockchip_drm_platform_driver, ptr @.str.2, ptr @rockchip_drm_dt_ids, ptr @rockchip_drm_pm_ops, ptr @rockchip_drm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rockchip_drm_driver, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rockchip_drm_driver_fops, ptr @.str.12, ptr @rockchip_drm_init_iommu.__key, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_support_iommu to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_rockchip_sub_drivers to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sub_drivers to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_drm_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_drm_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_drm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_drm_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_drm_driver_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_drm_init_iommu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rockchip_drm_dma_attach_device(ptr nocapture noundef readonly %drm_dev, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @is_support_iommu, align 1
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call i32 @iommu_attach_device(ptr noundef %3, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rockchip_drm_dma_detach_device(ptr nocapture noundef readonly %drm_dev, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @is_support_iommu, align 1
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @iommu_detach_device(ptr noundef %3, ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rockchip_drm_endpoint_is_subdriver(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_graph_get_remote_port_parent(ptr noundef %ep) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call) #5
  br i1 %call1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call) #5
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %driver = getelementptr inbounds %struct.platform_device, ptr %call4, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.then9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  %.b = load i1, ptr @num_rockchip_sub_drivers, align 4
  %2 = select i1 %.b, i32 8, i32 0
  br i1 %.b, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr = getelementptr i8, ptr %1, i32 -20
  br label %for.body

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_device_put(ptr noundef nonnull %call4) #5
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 %i.029
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp11 = icmp eq ptr %4, %add.ptr
  br i1 %cmp11, label %if.then12, label %for.cond

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_device_put(ptr noundef nonnull %call4) #5
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @platform_device_put(ptr noundef nonnull %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then12, %if.then9, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 0, %for.end ], [ 0, %if.then9 ], [ -19, %if.then2 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_drm_fini() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_drm_platform_driver) #5
  %.b = load i1, ptr @num_rockchip_sub_drivers, align 4
  %0 = select i1 %.b, i32 8, i32 0
  tail call void @platform_unregister_drivers(ptr noundef nonnull @rockchip_sub_drivers, i32 noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_drm_init() #3 section ".init.text" align 64 {
if.end93:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @vop_platform_driver, ptr @rockchip_sub_drivers, align 4
  store ptr @rockchip_lvds_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 1), align 4
  store ptr @rockchip_dp_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 2), align 4
  store ptr @cdn_dp_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 3), align 4
  store ptr @dw_hdmi_rockchip_pltfm_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 4), align 4
  store ptr @dw_mipi_dsi_rockchip_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 5), align 4
  store ptr @inno_hdmi_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 6), align 4
  store i1 true, ptr @num_rockchip_sub_drivers, align 4
  store ptr @rk3066_hdmi_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 7), align 4
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @rockchip_sub_drivers, i32 noundef 8, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool274.not = icmp eq i32 %call, 0
  br i1 %tobool274.not, label %if.end276, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end276:                                        ; preds = %if.end93
  %call277 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_drm_platform_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.end276.cleanup_crit_edge, label %err_unreg_drivers

if.end276.cleanup_crit_edge:                      ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_unreg_drivers:                                ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #7
  %.b = load i1, ptr @num_rockchip_sub_drivers, align 4
  %0 = select i1 %.b, i32 8, i32 0
  tail call void @platform_unregister_drivers(ptr noundef nonnull @rockchip_sub_drivers, i32 noundef %0) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_drivers, %if.end276.cleanup_crit_edge, %if.end93.cleanup_crit_edge
  %retval.0 = phi i32 [ %call277, %err_unreg_drivers ], [ %call, %if.end93.cleanup_crit_edge ], [ 0, %if.end276.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_drm_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %match.i = alloca ptr, align 4
  %args.i38.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %2 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i59.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool.not.i60.i = icmp eq i32 %call.i59.i, 0
  br i1 %tobool.not.i60.i, label %for.cond.preheader.i.of_parse_phandle.exit.i_crit_edge, label %for.cond.preheader.i.of_parse_phandle.exit.thread.i_crit_edge

for.cond.preheader.i.of_parse_phandle.exit.thread.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit.thread.i

for.cond.preheader.i.of_parse_phandle.exit.i_crit_edge: ; preds = %for.cond.preheader.i
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.thread.i:                   ; preds = %for.inc.i.of_parse_phandle.exit.thread.i_crit_edge, %for.cond.preheader.i.of_parse_phandle.exit.thread.i_crit_edge
  %found.0.off0.lcssa.i = phi i1 [ false, %for.cond.preheader.i.of_parse_phandle.exit.thread.i_crit_edge ], [ %found.1.off0.i, %for.inc.i.of_parse_phandle.exit.thread.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.of_parse_phandle.exit.thread.i_crit_edge ], [ %inc.i, %for.inc.i.of_parse_phandle.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  br label %for.end.i

of_parse_phandle.exit.i:                          ; preds = %for.inc.i.of_parse_phandle.exit.i_crit_edge, %for.cond.preheader.i.of_parse_phandle.exit.i_crit_edge
  %i.062.i = phi i32 [ %inc.i, %for.inc.i.of_parse_phandle.exit.i_crit_edge ], [ 0, %for.cond.preheader.i.of_parse_phandle.exit.i_crit_edge ]
  %found.0.off061.i = phi i1 [ %found.1.off0.i, %for.inc.i.of_parse_phandle.exit.i_crit_edge ], [ false, %for.cond.preheader.i.of_parse_phandle.exit.i_crit_edge ]
  %3 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %of_parse_phandle.exit.i.for.end.i_crit_edge, label %if.end3.i

of_parse_phandle.exit.i.for.end.i_crit_edge:      ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end3.i:                                        ; preds = %of_parse_phandle.exit.i
  %parent.i = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 4
  %call4.i = call zeroext i1 @of_device_is_available(ptr noundef %6) #5
  br i1 %call4.i, label %if.end6.i, label %if.end3.i.for.inc.i_crit_edge

if.end3.i.for.inc.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end3.i
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i38.i) #5
  %9 = call ptr @memset(ptr %args.i38.i, i32 255, i32 72)
  %call.i39.i = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i38.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %tobool.not.i40.i = icmp eq i32 %call.i39.i, 0
  br i1 %tobool.not.i40.i, label %of_parse_phandle.exit43.i, label %of_parse_phandle.exit43.thread.i

of_parse_phandle.exit43.thread.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i38.i) #5
  br label %if.then11.i

of_parse_phandle.exit43.i:                        ; preds = %if.end6.i
  %10 = ptrtoint ptr %args.i38.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.i38.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i38.i) #5
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %of_parse_phandle.exit43.i.if.then11.i_crit_edge, label %lor.lhs.false.i

of_parse_phandle.exit43.i.if.then11.i_crit_edge:  ; preds = %of_parse_phandle.exit43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %of_parse_phandle.exit43.i
  %call10.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %11) #5
  br i1 %call10.i, label %lor.lhs.false.i.if.end13.i_crit_edge, label %lor.lhs.false.i.if.then11.i_crit_edge

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then11.i:                                      ; preds = %lor.lhs.false.i.if.then11.i_crit_edge, %of_parse_phandle.exit43.i.if.then11.i_crit_edge, %of_parse_phandle.exit43.thread.i
  %retval.0.i4248.i = phi ptr [ null, %of_parse_phandle.exit43.thread.i ], [ %11, %lor.lhs.false.i.if.then11.i_crit_edge ], [ null, %of_parse_phandle.exit43.i.if.then11.i_crit_edge ]
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %13) #5
  store i1 true, ptr @is_support_iommu, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %lor.lhs.false.i.if.end13.i_crit_edge
  %retval.0.i4249.i = phi ptr [ %retval.0.i4248.i, %if.then11.i ], [ %11, %lor.lhs.false.i.if.end13.i_crit_edge ]
  call void @of_node_put(ptr noundef %retval.0.i4249.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %if.end3.i.for.inc.i_crit_edge
  %found.1.off0.i = phi i1 [ true, %if.end13.i ], [ %found.0.off061.i, %if.end3.i.for.inc.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %4) #5
  %inc.i = add i32 %i.062.i, 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %14 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef %inc.i, ptr noundef nonnull %args.i.i) #5
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.of_parse_phandle.exit.i_crit_edge, label %for.inc.i.of_parse_phandle.exit.thread.i_crit_edge

for.inc.i.of_parse_phandle.exit.thread.i_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit.thread.i

for.inc.i.of_parse_phandle.exit.i_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit.i

for.end.i:                                        ; preds = %of_parse_phandle.exit.i.for.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  %found.0.off058.i = phi i1 [ %found.0.off0.lcssa.i, %of_parse_phandle.exit.thread.i ], [ %found.0.off061.i, %of_parse_phandle.exit.i.for.end.i_crit_edge ]
  %i.056.i = phi i32 [ %i.0.lcssa.i, %of_parse_phandle.exit.thread.i ], [ %i.062.i, %of_parse_phandle.exit.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.056.i)
  %cmp.i = icmp eq i32 %i.056.i, 0
  %found.0.off058.not.i = xor i1 %found.0.off058.i, true
  %brmerge.i = select i1 %cmp.i, i1 true, i1 %found.0.off058.not.i
  br i1 %brmerge.i, label %cleanup19.sink.split.i, label %if.end

cleanup19.sink.split.i:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %.str.6.mux.i = select i1 %cmp.i, ptr @.str.6, ptr @.str.7
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull %.str.6.mux.i) #5
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match.i) #5
  %15 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %match.i, align 4
  %.b35 = load i1, ptr @num_rockchip_sub_drivers, align 4
  br i1 %.b35, label %if.end.for.body.i_crit_edge, label %if.end.rockchip_drm_match_add.exit_crit_edge

if.end.rockchip_drm_match_add.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_drm_match_add.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i21, %do.end.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 %i.019.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %driver.i = getelementptr inbounds %struct.platform_driver, ptr %17, i32 0, i32 5
  %call15.i = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %driver.i) #5
  call void @put_device(ptr noundef null) #5
  %tobool.not16.i = icmp eq ptr %call15.i, null
  br i1 %tobool.not16.i, label %for.body.i.do.end.i_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  br label %if.end.i

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %call17.i = phi ptr [ %call.i, %if.end.i.if.end.i_crit_edge ], [ %call15.i, %for.body.i.if.end.i_crit_edge ]
  %call1.i = call ptr @device_link_add(ptr noundef %dev1, ptr noundef nonnull %call17.i, i32 noundef 1) #5
  call void @component_match_add_release(ptr noundef %dev1, ptr noundef nonnull %match.i, ptr noundef null, ptr noundef nonnull @compare_dev, ptr noundef nonnull %call17.i) #5
  %call.i = call ptr @platform_find_device_by_driver(ptr noundef nonnull %call17.i, ptr noundef %driver.i) #5
  call void @put_device(ptr noundef nonnull %call17.i) #5
  %tobool.not.i20 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i20, label %if.end.i.do.end.i_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %inc.i21 = add nuw nsw i32 %i.019.i, 1
  %.b = load i1, ptr @num_rockchip_sub_drivers, align 4
  %18 = select i1 %.b, i32 8, i32 0
  %cmp.i22 = icmp ult i32 %inc.i21, %18
  br i1 %cmp.i22, label %do.end.i.for.body.i_crit_edge, label %for.end.i23

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i23:                                      ; preds = %do.end.i
  %19 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr20.i = load ptr, ptr %match.i, align 4
  %cmp.i.i = icmp ugt ptr %.pr20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %for.end.i23.rockchip_drm_match_add.exit_crit_edge

for.end.i23.rockchip_drm_match_add.exit_crit_edge: ; preds = %for.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_drm_match_add.exit

if.then3.i:                                       ; preds = %for.end.i23
  %consumers.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 11, i32 1
  %20 = ptrtoint ptr %consumers.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn11.i.i = load ptr, ptr %consumers.i.i, align 4
  %cmp.not12.i.i = icmp eq ptr %.pn11.i.i, %consumers.i.i
  br i1 %cmp.not12.i.i, label %if.then3.i.if.end4thread-pre-split.i_crit_edge, label %if.then3.i.for.body.i.i_crit_edge

if.then3.i.for.body.i.i_crit_edge:                ; preds = %if.then3.i
  br label %for.body.i.i

if.then3.i.if.end4thread-pre-split.i_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4thread-pre-split.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then3.i.for.body.i.i_crit_edge
  %.pn13.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn11.i.i, %if.then3.i.for.body.i.i_crit_edge ]
  %link.0.i.i = getelementptr i8, ptr %.pn13.i.i, i32 -4
  call void @device_link_del(ptr noundef %link.0.i.i) #5
  %21 = ptrtoint ptr %.pn13.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i.i = load ptr, ptr %.pn13.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %consumers.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.if.end4thread-pre-split.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.if.end4thread-pre-split.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4thread-pre-split.i

if.end4thread-pre-split.i:                        ; preds = %for.body.i.i.if.end4thread-pre-split.i_crit_edge, %if.then3.i.if.end4thread-pre-split.i_crit_edge
  %22 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i = load ptr, ptr %match.i, align 4
  br label %rockchip_drm_match_add.exit

rockchip_drm_match_add.exit:                      ; preds = %if.end4thread-pre-split.i, %for.end.i23.rockchip_drm_match_add.exit_crit_edge, %if.end.rockchip_drm_match_add.exit_crit_edge
  %23 = phi ptr [ %.pr.i, %if.end4thread-pre-split.i ], [ %.pr20.i, %for.end.i23.rockchip_drm_match_add.exit_crit_edge ], [ null, %if.end.rockchip_drm_match_add.exit_crit_edge ]
  %tobool5.not.i = icmp eq ptr %23, null
  %spec.select.i = select i1 %tobool5.not.i, ptr inttoptr (i32 -19 to ptr), ptr %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match.i) #5
  %cmp.i24 = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %if.then4, label %if.end6

if.then4:                                         ; preds = %rockchip_drm_match_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %spec.select.i to i32
  br label %cleanup

if.end6:                                          ; preds = %rockchip_drm_match_add.exit
  %call7 = call i32 @component_master_add_with_match(ptr noundef %dev1, ptr noundef nonnull @rockchip_drm_ops, ptr noundef %spec.select.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %consumers.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 11, i32 1
  %25 = ptrtoint ptr %consumers.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn11.i = load ptr, ptr %consumers.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %consumers.i
  br i1 %cmp.not12.i, label %if.then8.cleanup_crit_edge, label %if.then8.for.body.i25_crit_edge

if.then8.for.body.i25_crit_edge:                  ; preds = %if.then8
  br label %for.body.i25

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i25:                                     ; preds = %for.body.i25.for.body.i25_crit_edge, %if.then8.for.body.i25_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i25.for.body.i25_crit_edge ], [ %.pn11.i, %if.then8.for.body.i25_crit_edge ]
  %link.0.i = getelementptr i8, ptr %.pn13.i, i32 -4
  call void @device_link_del(ptr noundef %link.0.i) #5
  %26 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %consumers.i
  br i1 %cmp.not.i, label %for.body.i25.cleanup_crit_edge, label %for.body.i25.for.body.i25_crit_edge

for.body.i25.for.body.i25_crit_edge:              ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i25

for.body.i25.cleanup_crit_edge:                   ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i25.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %cleanup19.sink.split.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %if.then4 ], [ 0, %if.end6.cleanup_crit_edge ], [ %call7, %if.then8.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %cleanup19.sink.split.i ], [ %call7, %for.body.i25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_drm_platform_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @rockchip_drm_ops) #5
  %consumers.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 11, i32 1
  %0 = ptrtoint ptr %consumers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11.i = load ptr, ptr %consumers.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %consumers.i
  br i1 %cmp.not12.i, label %entry.rockchip_drm_match_remove.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rockchip_drm_match_remove.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_drm_match_remove.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn11.i, %entry.for.body.i_crit_edge ]
  %link.0.i = getelementptr i8, ptr %.pn13.i, i32 -4
  tail call void @device_link_del(ptr noundef %link.0.i) #5
  %1 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %consumers.i
  br i1 %cmp.not.i, label %for.body.i.rockchip_drm_match_remove.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.rockchip_drm_match_remove.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_drm_match_remove.exit

rockchip_drm_match_remove.exit:                   ; preds = %for.body.i.rockchip_drm_match_remove.exit_crit_edge, %entry.rockchip_drm_match_remove.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_drm_platform_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_atomic_helper_shutdown(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_find_device_by_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_dev(ptr noundef readnone %dev, ptr noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_drm_bind(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @rockchip_drm_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %call.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @rockchip_drm_driver, ptr noundef %dev) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %driver_data.i, align 4
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev6, align 4
  %call.i64 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 248, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i64, null
  br i1 %tobool8.not, label %if.end5.err_free_crit_edge, label %if.end10

if.end5.err_free_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end10:                                         ; preds = %if.end5
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i64, ptr %dev_private, align 4
  %.b.i = load i1, ptr @is_support_iommu, align 1
  br i1 %.b.i, label %if.end10.if.end14_crit_edge, label %if.end.i

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.i:                                         ; preds = %if.end10
  %call.i65 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #5
  %5 = ptrtoint ptr %call.i64 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i65, ptr %call.i64, align 8
  %tobool2.not.i = icmp eq ptr %call.i65, null
  br i1 %tobool2.not.i, label %if.end.i.err_free_crit_edge, label %if.end4.i

if.end.i.err_free_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %geometry6.i = getelementptr inbounds %struct.iommu_domain, ptr %call.i65, i32 0, i32 5
  %6 = ptrtoint ptr %geometry6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %geometry6.i, align 4
  %conv.i = zext i32 %7 to i64
  %aperture_end.i = getelementptr inbounds %struct.iommu_domain, ptr %call.i65, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %aperture_end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aperture_end.i, align 4
  %conv7.i = zext i32 %9 to i64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i64 noundef %conv.i, i64 noundef %conv7.i) #5
  %mm.i = getelementptr inbounds %struct.rockchip_drm_private, ptr %call.i64, i32 0, i32 2
  %sub.i = sub nsw i64 1, %conv.i
  %add.i = add nsw i64 %sub.i, %conv7.i
  tail call void @drm_mm_init(ptr noundef %mm.i, i64 noundef %conv.i, i64 noundef %add.i) #5
  %mm_lock.i = getelementptr inbounds %struct.rockchip_drm_private, ptr %call.i64, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mm_lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @rockchip_drm_init_iommu.__key) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end4.i, %if.end10.if.end14_crit_edge
  %call15 = tail call i32 @drmm_mode_config_init(ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_iommu_cleanup_crit_edge

if.end14.err_iommu_cleanup_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_iommu_cleanup

if.end18:                                         ; preds = %if.end14
  tail call void @rockchip_drm_mode_config_init(ptr noundef %call1) #5
  %call19 = tail call i32 @component_bind_all(ptr noundef %dev, ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_iommu_cleanup_crit_edge

if.end18.err_iommu_cleanup_crit_edge:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_iommu_cleanup

if.end22:                                         ; preds = %if.end18
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 19
  %10 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_crtc, align 4
  %call23 = tail call i32 @drm_vblank_init(ptr noundef %call1, i32 noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.err_unbind_all_crit_edge

if.end22.err_unbind_all_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unbind_all

if.end26:                                         ; preds = %if.end22
  tail call void @drm_mode_config_reset(ptr noundef %call1) #5
  tail call void @drm_kms_helper_poll_init(ptr noundef %call1) #5
  %call27 = tail call i32 @drm_dev_register(ptr noundef %call1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %err_kms_helper_poll_fini

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_fbdev_generic_setup(ptr noundef %call1, i32 noundef 0) #5
  br label %cleanup

err_kms_helper_poll_fini:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call1) #5
  br label %err_unbind_all

err_unbind_all:                                   ; preds = %err_kms_helper_poll_fini, %if.end22.err_unbind_all_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end22.err_unbind_all_crit_edge ], [ %call27, %err_kms_helper_poll_fini ]
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %call1) #5
  br label %err_iommu_cleanup

err_iommu_cleanup:                                ; preds = %err_unbind_all, %if.end18.err_iommu_cleanup_crit_edge, %if.end14.err_iommu_cleanup_crit_edge
  %ret.1 = phi i32 [ %call15, %if.end14.err_iommu_cleanup_crit_edge ], [ %call19, %if.end18.err_iommu_cleanup_crit_edge ], [ %ret.0, %err_unbind_all ]
  %.b.i66 = load i1, ptr @is_support_iommu, align 1
  br i1 %.b.i66, label %err_iommu_cleanup.err_free_crit_edge, label %if.end.i69

err_iommu_cleanup.err_free_crit_edge:             ; preds = %err_iommu_cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free

if.end.i69:                                       ; preds = %err_iommu_cleanup
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private, align 4
  %mm.i68 = getelementptr inbounds %struct.rockchip_drm_private, ptr %13, i32 0, i32 2
  tail call void @drm_mm_takedown(ptr noundef %mm.i68) #5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  tail call void @iommu_domain_free(ptr noundef %15) #5
  br label %err_free

err_free:                                         ; preds = %if.end.i69, %err_iommu_cleanup.err_free_crit_edge, %if.end.i.err_free_crit_edge, %if.end5.err_free_crit_edge
  %ret.2 = phi i32 [ -12, %if.end5.err_free_crit_edge ], [ -12, %if.end.i.err_free_crit_edge ], [ %ret.1, %err_iommu_cleanup.err_free_crit_edge ], [ %ret.1, %if.end.i69 ]
  tail call void @drm_dev_put(ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end30, %if.then3, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %0, %if.then3 ], [ %ret.2, %err_free ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_drm_unbind(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %1) #5
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #5
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %1) #5
  %.b.i = load i1, ptr @is_support_iommu, align 1
  br i1 %.b.i, label %entry.rockchip_iommu_cleanup.exit_crit_edge, label %if.end.i

entry.rockchip_iommu_cleanup.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rockchip_iommu_cleanup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %mm.i = getelementptr inbounds %struct.rockchip_drm_private, ptr %3, i32 0, i32 2
  tail call void @drm_mm_takedown(ptr noundef %mm.i) #5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @iommu_domain_free(ptr noundef %5) #5
  br label %rockchip_iommu_cleanup.exit

rockchip_iommu_cleanup.exit:                      ; preds = %if.end.i, %entry.rockchip_iommu_cleanup.exit_crit_edge
  tail call void @drm_dev_put(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_drm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_gem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #2

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
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_drm_sys_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_drm_sys_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 56, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_rockchipdrm__320_500_rockchip_drm_init6, !4, !"__initcall__kmod_rockchipdrm__320_500_rockchip_drm_init6", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 500, i32 1}
!5 = !{ptr @__exitcall_rockchip_drm_fini, !6, !"__exitcall_rockchip_drm_fini", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 501, i32 1}
!7 = !{ptr @__UNIQUE_ID_author321, !8, !"__UNIQUE_ID_author321", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 503, i32 1}
!9 = !{ptr @__UNIQUE_ID_description322, !10, !"__UNIQUE_ID_description322", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 504, i32 1}
!11 = !{ptr @__UNIQUE_ID_file323, !12, !"__UNIQUE_ID_file323", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 505, i32 1}
!13 = !{ptr @__UNIQUE_ID_license324, !12, !"__UNIQUE_ID_license324", i1 false, i1 false}
!14 = !{ptr @rockchip_sub_drivers, !15, !"rockchip_sub_drivers", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 236, i32 32}
!16 = distinct !{null, !17, !"num_rockchip_sub_drivers", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 237, i32 12}
!18 = distinct !{null, !19, !"is_support_iommu", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 37, i32 13}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 444, i32 11}
!22 = !{ptr @rockchip_drm_platform_driver, !23, !"rockchip_drm_platform_driver", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 439, i32 31}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 352, i32 31}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 361, i32 42}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 363, i32 4}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 380, i32 3}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 385, i32 3}
!34 = !{ptr @rockchip_drm_ops, !35, !"rockchip_drm_ops", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 334, i32 42}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 120, i32 3}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 207, i32 10}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 208, i32 10}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 209, i32 10}
!44 = !{ptr @rockchip_drm_driver, !45, !"rockchip_drm_driver", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 199, i32 32}
!46 = !{ptr @rockchip_drm_driver_fops, !47, !"rockchip_drm_driver_fops", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 197, i32 1}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 92, i32 2}
!50 = !{ptr @rockchip_drm_init_iommu.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 95, i32 2}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rockchip_drm_dt_ids, !54, !"rockchip_drm_dt_ids", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 433, i32 34}
!55 = !{ptr @rockchip_drm_pm_ops, !56, !"rockchip_drm_pm_ops", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 230, i32 32}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_drv.c", i32 461, i32 2}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
