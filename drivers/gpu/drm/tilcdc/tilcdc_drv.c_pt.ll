; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tilcdc/tilcdc_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/tilcdc/tilcdc_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.anon.93 = type { ptr, i8, i8, i32 }
%struct.tilcdc_module = type { ptr, %struct.list_head, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.tilcdc_drm_private = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.notifier_block, ptr, ptr, i32, [8 x ptr], i32, [8 x ptr], ptr, ptr, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.tilcdc_module_ops = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_vma_offset_manager = type { %struct.rwlock_t, %struct.drm_mm }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@module_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @module_list, ptr @module_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fini\0A\00", [26 x i8] zeroinitializer }, align 32
@tilcdc_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tilcdc_pdev_probe, ptr @tilcdc_pdev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tilcdc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tilcdc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_tilcdc__331_621_tilcdc_drm_init6 = internal global ptr @tilcdc_drm_init, section ".initcall6.init", align 4
@__exitcall_tilcdc_drm_fini = internal global ptr @tilcdc_drm_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author332 = internal constant [45 x i8] c"tilcdc.author=Rob Clark <robdclark@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description333 = internal constant [48 x i8] c"tilcdc.description=TI LCD Controller DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file334 = internal constant [42 x i8] c"tilcdc.file=drivers/gpu/drm/tilcdc/tilcdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license335 = internal constant [19 x i8] c"tilcdc.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tilcdc\00", [25 x i8] zeroinitializer }, align 32
@tilcdc_of_match = internal global { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am33xx-tilcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da850-tilcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tilcdc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tilcdc_pm_suspend, ptr @tilcdc_pm_resume, ptr @tilcdc_pm_suspend, ptr @tilcdc_pm_resume, ptr @tilcdc_pm_suspend, ptr @tilcdc_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tilcdc_pdev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 560, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"device-tree data is missing\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tilcdc_pdev_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/tilcdc/tilcdc_drv.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tilcdc_pdev_probe._entry_ptr = internal global ptr @tilcdc_pdev_probe._entry, section ".printk_index", align 4
@tilcdc_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tilcdc_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.1, ptr @.str.50, ptr @.str.51, i32 19, ptr null, i32 0, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tilcdc_comp_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @tilcdc_bind, ptr @tilcdc_unbind }, [24 x i8] zeroinitializer }, align 32
@tilcdc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get memory resource\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tilcdc_init\00", [20 x i8] zeroinitializer }, align 32
@tilcdc_init._entry_ptr = internal global ptr @tilcdc_init._entry, section ".printk_index", align 4
@tilcdc_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 239, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to ioremap\0A\00", [45 x i8] zeroinitializer }, align 32
@tilcdc_init._entry_ptr.11 = internal global ptr @tilcdc_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@tilcdc_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.4, i32 246, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get functional clock\0A\00", [32 x i8] zeroinitializer }, align 32
@tilcdc_init._entry_ptr.15 = internal global ptr @tilcdc_init._entry.13, section ".printk_index", align 4
@tilcdc_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.4, i32 266, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Unknown PID Reg value 0x%08x, defaulting to LCD revision 1\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tilcdc_init._entry_ptr.19 = internal global ptr @tilcdc_init._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Revision 1 LCDC supports only RGB565 format\0A\00", [51 x i8] zeroinitializer }, align 32
@tilcdc_rev1_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 909199186], [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"blue-and-red-wiring\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"crossed\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Configured for crossed blue and red wires\0A\00", [53 x i8] zeroinitializer }, align 32
@tilcdc_crossed_formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 909199170, i32 875710290, i32 875713112], [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"straight\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Configured for straight blue and red wires\0A\00", [52 x i8] zeroinitializer }, align 32
@tilcdc_straight_formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 909199186, i32 875710274, i32 875709016], [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Blue and red wiring '%s' unknown, use legacy mode\0A\00", [45 x i8] zeroinitializer }, align 32
@tilcdc_legacy_formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 909199186, i32 875710290, i32 875713112], [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max-bandwidth\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Maximum Bandwidth Value %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max-width\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Maximum Horizontal Pixel Width Value %dpixels\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max-pixelclock\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Maximum Pixel Clock Value %dKHz\0A\00", [63 x i8] zeroinitializer }, align 32
@tilcdc_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.8, ptr @.str.4, i32 326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to create crtc\0A\00", [41 x i8] zeroinitializer }, align 32
@tilcdc_init._entry_ptr.36 = internal global ptr @tilcdc_init._entry.34, section ".printk_index", align 4
@tilcdc_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.8, ptr @.str.4, i32 336, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register cpufreq notifier\0A\00", [59 x i8] zeroinitializer }, align 32
@tilcdc_init._entry_ptr.39 = internal global ptr @tilcdc_init._entry.37, section ".printk_index", align 4
@tilcdc_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.8, ptr @.str.4, i32 358, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no encoders/connectors found\0A\00", [34 x i8] zeroinitializer }, align 32
@tilcdc_init._entry_ptr.42 = internal global ptr @tilcdc_init._entry.40, section ".printk_index", align 4
@tilcdc_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.8, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize vblank\0A\00", [35 x i8] zeroinitializer }, align 32
@tilcdc_init._entry_ptr.45 = internal global ptr @tilcdc_init._entry.43, section ".printk_index", align 4
@tilcdc_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.8, ptr @.str.4, i32 376, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to install IRQ handler\0A\00", [33 x i8] zeroinitializer }, align 32
@tilcdc_init._entry_ptr.48 = internal global ptr @tilcdc_init._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loading module: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @tilcdc_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TI LCD Controller DRM\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20121205\00", [23 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tilcdc_debugfs_list = internal global { [2 x %struct.drm_info_list], [32 x i8] } { [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.52, ptr @tilcdc_regs_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.53, ptr @tilcdc_mm_show, i32 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mm\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"revision: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@registers = internal constant { [18 x %struct.anon.93], [40 x i8] } { [18 x %struct.anon.93] [%struct.anon.93 { ptr @.str.56, i8 1, i8 0, i32 0 }, %struct.anon.93 { ptr @.str.57, i8 1, i8 1, i32 4 }, %struct.anon.93 { ptr @.str.58, i8 1, i8 0, i32 8 }, %struct.anon.93 { ptr @.str.59, i8 1, i8 1, i32 40 }, %struct.anon.93 { ptr @.str.60, i8 1, i8 1, i32 44 }, %struct.anon.93 { ptr @.str.61, i8 1, i8 1, i32 48 }, %struct.anon.93 { ptr @.str.62, i8 1, i8 1, i32 52 }, %struct.anon.93 { ptr @.str.63, i8 1, i8 1, i32 64 }, %struct.anon.93 { ptr @.str.64, i8 1, i8 1, i32 68 }, %struct.anon.93 { ptr @.str.65, i8 1, i8 1, i32 72 }, %struct.anon.93 { ptr @.str.66, i8 1, i8 1, i32 76 }, %struct.anon.93 { ptr @.str.67, i8 1, i8 1, i32 80 }, %struct.anon.93 { ptr @.str.68, i8 2, i8 0, i32 88 }, %struct.anon.93 { ptr @.str.69, i8 2, i8 0, i32 92 }, %struct.anon.93 { ptr @.str.70, i8 2, i8 1, i32 96 }, %struct.anon.93 { ptr @.str.71, i8 2, i8 0, i32 100 }, %struct.anon.93 { ptr @.str.72, i8 2, i8 0, i32 104 }, %struct.anon.93 { ptr @.str.73, i8 2, i8 1, i32 108 }], [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s:\09 %08x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LCDC_PID_REG\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LCDC_CTRL_REG\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LCDC_STAT_REG\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LCDC_RASTER_CTRL_REG\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LCDC_RASTER_TIMING_0_REG\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LCDC_RASTER_TIMING_1_REG\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LCDC_RASTER_TIMING_2_REG\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LCDC_DMA_CTRL_REG\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LCDC_DMA_FB_BASE_ADDR_0_REG\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LCDC_DMA_FB_CEILING_ADDR_0_REG\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LCDC_DMA_FB_BASE_ADDR_1_REG\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LCDC_DMA_FB_CEILING_ADDR_1_REG\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LCDC_RAW_STAT_REG\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LCDC_MASKED_STAT_REG\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LCDC_INT_ENABLE_SET_REG\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LCDC_INT_ENABLE_CLR_REG\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LCDC_END_OF_INT_IND_REG\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LCDC_CLK_ENABLE_REG\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"init\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1276117250, i64 1327499264, i64 1327501312]
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"module_list\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 33, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 616, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"tilcdc_platform_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 597, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 601, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"tilcdc_of_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 590, i32 28 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"tilcdc_pm_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 525, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 560, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [14 x i8] c"tilcdc_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 483, i32 32 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"tilcdc_comp_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 548, i32 42 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 232, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 239, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 244, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 246, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 264, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 274, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"tilcdc_rev1_formats\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 35, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 279, i32 21 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 281, i32 33 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 282, i32 24 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 283, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"tilcdc_crossed_formats\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 41, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 288, i32 31 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 289, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [24 x i8] c"tilcdc_straight_formats\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 37, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 295, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [22 x i8] c"tilcdc_legacy_formats\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 45, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 304, i32 33 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 307, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 309, i32 33 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 316, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 318, i32 33 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 322, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 326, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 336, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 358, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 365, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 376, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 101, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [18 x i8] c"mode_config_funcs\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 89, i32 43 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 491, i32 24 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 492, i32 24 }
@___asan_gen_.246 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 481, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c"tilcdc_debugfs_list\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 462, i32 29 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 463, i32 5 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 464, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 441, i32 16 }
@___asan_gen_.261 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 404, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 445, i32 18 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 407, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 408, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 409, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 410, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 411, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 412, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 413, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 414, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 415, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 416, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 417, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 418, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 420, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 421, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 422, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 423, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 424, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 425, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.322 = private constant [39 x i8] c"../drivers/gpu/drm/tilcdc/tilcdc_drv.c\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 609, i32 2 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author332, ptr @__UNIQUE_ID_description333, ptr @__UNIQUE_ID_file334, ptr @__UNIQUE_ID_license335, ptr @__exitcall_tilcdc_drm_fini, ptr @__initcall__kmod_tilcdc__331_621_tilcdc_drm_init6, ptr @tilcdc_drm_fini, ptr @tilcdc_init._entry, ptr @tilcdc_init._entry.13, ptr @tilcdc_init._entry.16, ptr @tilcdc_init._entry.34, ptr @tilcdc_init._entry.37, ptr @tilcdc_init._entry.40, ptr @tilcdc_init._entry.43, ptr @tilcdc_init._entry.46, ptr @tilcdc_init._entry.9, ptr @tilcdc_init._entry_ptr, ptr @tilcdc_init._entry_ptr.11, ptr @tilcdc_init._entry_ptr.15, ptr @tilcdc_init._entry_ptr.19, ptr @tilcdc_init._entry_ptr.36, ptr @tilcdc_init._entry_ptr.39, ptr @tilcdc_init._entry_ptr.42, ptr @tilcdc_init._entry_ptr.45, ptr @tilcdc_init._entry_ptr.48, ptr @tilcdc_pdev_probe._entry, ptr @tilcdc_pdev_probe._entry_ptr, ptr @module_list, ptr @.str, ptr @tilcdc_platform_driver, ptr @.str.1, ptr @tilcdc_of_match, ptr @tilcdc_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tilcdc_driver, ptr @tilcdc_comp_ops, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @tilcdc_rev1_formats, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @tilcdc_crossed_formats, ptr @.str.25, ptr @.str.26, ptr @tilcdc_straight_formats, ptr @.str.27, ptr @tilcdc_legacy_formats, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @mode_config_funcs, ptr @.str.50, ptr @.str.51, ptr @fops, ptr @tilcdc_debugfs_list, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @registers, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_pdev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_comp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_rev1_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crossed_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_straight_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_legacy_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_debugfs_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registers to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tilcdc_module_init(ptr noundef %mod, ptr noundef %name, ptr noundef %funcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mod to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %name, ptr %mod, align 4
  %funcs2 = getelementptr inbounds %struct.tilcdc_module, ptr %mod, i32 0, i32 2
  %1 = ptrtoint ptr %funcs2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %funcs, ptr %funcs2, align 4
  %list = getelementptr inbounds %struct.tilcdc_module, ptr %mod, i32 0, i32 1
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tilcdc_module, ptr %mod, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %4 = load ptr, ptr @module_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @module_list, ptr noundef %4) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %list, align 4
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @module_list, ptr %prev.i, align 4
  store volatile ptr %list, ptr @module_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tilcdc_module_cleanup(ptr noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.tilcdc_module, ptr %mod, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.tilcdc_module, ptr %mod, i32 0, i32 1, i32 1
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
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tilcdc_module, ptr %mod, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tilcdc_drm_fini() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tilcdc_platform_driver) #7
  tail call void @tilcdc_panel_fini() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tilcdc_panel_fini() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_drm_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.74) #7
  %call = tail call i32 @tilcdc_panel_init() #7
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tilcdc_platform_driver, ptr noundef null) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_pdev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #7
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %match, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @tilcdc_get_external_components(ptr noundef %dev, ptr noundef nonnull %match) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call fastcc i32 @tilcdc_init(ptr noundef %dev)
  br label %cleanup

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %match, align 4
  %call10 = call i32 @component_master_add_with_match(ptr noundef %dev, ptr noundef nonnull @tilcdc_comp_ops, ptr noundef %4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else8, %if.then5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call7, %if.then5 ], [ %call10, %if.else8 ], [ -6, %do.end ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_pdev_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @tilcdc_get_external_components(ptr noundef %dev, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @tilcdc_fini(ptr noundef %1)
  br label %cleanup

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @tilcdc_comp_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.else4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tilcdc_get_external_components(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tilcdc_init(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %str = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 140, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @tilcdc_driver, ptr noundef %dev) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %dev_private, align 4
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %call.i1 = tail call i32 @drmm_mode_config_init(ptr noundef %call1) #7
  %call7 = tail call i32 @tilcdc_get_external_components(ptr noundef %dev, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp sgt i32 %call7, 0
  %is_componentized = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 19
  %frombool = zext i1 %cmp to i8
  %5 = ptrtoint ptr %is_componentized to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %is_componentized, align 1
  %call8 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 655362, i32 noundef 1) #7
  %wq = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %wq, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end5.init_failed_crit_edge, label %if.end12

if.end5.init_failed_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_failed

if.end12:                                         ; preds = %if.end5
  %call13 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %init_failed

if.end16:                                         ; preds = %if.end12
  %7 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call13, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call18 = tail call ptr @ioremap(i32 noundef %8, i32 noundef %add.i) #7
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %call.i, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %init_failed

if.end25:                                         ; preds = %if.end16
  %call26 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  %clk = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call26, ptr %clk, align 4
  %cmp.i2 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2, label %do.end32, label %if.end33

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %init_failed

if.end33:                                         ; preds = %if.end25
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %call.i3 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %13 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !180
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %do.end40 [
    i32 1276117250, label %if.end33.sw.epilog_crit_edge
    i32 1327499264, label %if.end33.sw.bb36_crit_edge
    i32 1327501312, label %if.end33.sw.bb36_crit_edge14
  ]

if.end33.sw.bb36_crit_edge14:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

if.end33.sw.bb36_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end33.sw.bb36_crit_edge, %if.end33.sw.bb36_crit_edge14
  br label %sw.epilog

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_private, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !180
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %25) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end40, %sw.bb36, %if.end33.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %do.end40 ], [ 2, %sw.bb36 ], [ 1, %if.end33.sw.epilog_crit_edge ]
  %rev42 = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %rev42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %rev42, align 4
  %call.i5 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #7
  %rev44 = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %rev44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rev44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp45 = icmp eq i32 %28, 1
  br i1 %cmp45, label %if.then46, label %if.else

if.then46:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #7
  %pixelformats = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %pixelformats to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tilcdc_rev1_formats, ptr %pixelformats, align 4
  %num_pixelformats = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 8
  %30 = ptrtoint ptr %num_pixelformats to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %num_pixelformats, align 4
  br label %if.end64

if.else:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str) #7
  %31 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.21, ptr %str, align 4
  %call47 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %str) #7
  %32 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %str, align 4
  %call48 = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(8) @.str.23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24) #7
  br label %if.end63

if.else53:                                        ; preds = %if.else
  %call54 = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(9) @.str.25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.else59

if.then56:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26) #7
  br label %if.end63

if.else59:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %33) #7
  br label %if.end63

if.end63:                                         ; preds = %if.else59, %if.then56, %if.then50
  %tilcdc_straight_formats.sink = phi ptr [ @tilcdc_straight_formats, %if.then56 ], [ @tilcdc_legacy_formats, %if.else59 ], [ @tilcdc_crossed_formats, %if.then50 ]
  %bpp.0 = phi i32 [ 16, %if.then56 ], [ 16, %if.else59 ], [ 32, %if.then50 ]
  %pixelformats57 = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 7
  %34 = ptrtoint ptr %pixelformats57 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tilcdc_straight_formats.sink, ptr %pixelformats57, align 4
  %num_pixelformats58 = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %num_pixelformats58 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %num_pixelformats58, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str) #7
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then46
  %bpp.1 = phi i32 [ 16, %if.then46 ], [ %bpp.0, %if.end63 ]
  %max_bandwidth = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef %max_bandwidth, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool66.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool66.not, label %if.end64.if.end69_crit_edge, label %if.then67

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %max_bandwidth to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 78643200, ptr %max_bandwidth, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end64.if.end69_crit_edge
  %37 = ptrtoint ptr %max_bandwidth to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_bandwidth, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.29, i32 noundef %38) #7
  %max_width = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 6
  %call.i.i6 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef %max_width, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i6)
  %tobool72.not = icmp sgt i32 %call.i.i6, -1
  br i1 %tobool72.not, label %if.end69.if.end81_crit_edge, label %if.then73

if.end69.if.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %rev44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rev44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp75 = icmp eq i32 %40, 1
  %. = select i1 %cmp75, i32 1024, i32 2048
  %41 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %., ptr %max_width, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then73, %if.end69.if.end81_crit_edge
  %42 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_width, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.31, i32 noundef %43) #7
  %max_pixelclock = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 5
  %call.i.i7 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %max_pixelclock, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i7)
  %tobool84.not = icmp sgt i32 %call.i.i7, -1
  br i1 %tobool84.not, label %if.end81.if.end87_crit_edge, label %if.then85

if.end81.if.end87_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %max_pixelclock to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 126000, ptr %max_pixelclock, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end81.if.end87_crit_edge
  %45 = ptrtoint ptr %max_pixelclock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_pixelclock, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef %46) #7
  %call89 = call i32 @tilcdc_crtc_create(ptr noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %do.end94, label %if.end95

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  br label %init_failed

if.end95:                                         ; preds = %if.end87
  %47 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_private, align 4
  %.pn21.i = load ptr, ptr @module_list, align 4
  %cmp.not22.i = icmp eq ptr %.pn21.i, @module_list
  br i1 %cmp.not22.i, label %if.end95.modeset_init.exit_crit_edge, label %if.end95.for.body.i_crit_edge

if.end95.for.body.i_crit_edge:                    ; preds = %if.end95
  br label %for.body.i

if.end95.modeset_init.exit_crit_edge:             ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %modeset_init.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end95.for.body.i_crit_edge
  %.pn23.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn21.i, %if.end95.for.body.i_crit_edge ]
  %mod.0.i = getelementptr i8, ptr %.pn23.i, i32 -4
  %49 = ptrtoint ptr %mod.0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mod.0.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef %50) #7
  %funcs.i = getelementptr i8, ptr %.pn23.i, i32 8
  %51 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %funcs.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call.i9 = call i32 %54(ptr noundef %mod.0.i, ptr noundef %call1) #7
  %55 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn23.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @module_list
  br i1 %cmp.not.i, label %for.body.i.modeset_init.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.modeset_init.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %modeset_init.exit

modeset_init.exit:                                ; preds = %for.body.i.modeset_init.exit_crit_edge, %if.end95.modeset_init.exit_crit_edge
  %min_width.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 23
  %56 = ptrtoint ptr %min_width.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %min_width.i, align 4
  %min_height.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 24
  %57 = ptrtoint ptr %min_height.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %min_height.i, align 4
  %max_width.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %48, i32 0, i32 6
  %58 = ptrtoint ptr %max_width.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_width.i, align 4
  %max_width7.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 25
  %60 = ptrtoint ptr %max_width7.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %max_width7.i, align 4
  %max_height.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 26
  %61 = ptrtoint ptr %max_height.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2048, ptr %max_height.i, align 4
  %funcs10.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 30, i32 27
  %62 = ptrtoint ptr %funcs10.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @mode_config_funcs, ptr %funcs10.i, align 4
  %freq_transition = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 9
  %63 = ptrtoint ptr %freq_transition to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @cpufreq_transition, ptr %freq_transition, align 4
  %call97 = call i32 @cpufreq_register_notifier(ptr noundef %freq_transition, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end105, label %do.end102

do.end102:                                        ; preds = %modeset_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #10
  %64 = ptrtoint ptr %freq_transition to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %freq_transition, align 4
  br label %init_failed

if.end105:                                        ; preds = %modeset_init.exit
  %65 = ptrtoint ptr %is_componentized to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_componentized, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool107.not = icmp eq i8 %66, 0
  br i1 %tobool107.not, label %if.else117, label %if.then108

if.then108:                                       ; preds = %if.end105
  %call109 = call i32 @component_bind_all(ptr noundef %dev, ptr noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.then108.init_failed_crit_edge, label %if.end112

if.then108.init_failed_crit_edge:                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_failed

if.end112:                                        ; preds = %if.then108
  %call113 = call i32 @tilcdc_add_component_encoder(ptr noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.end112.init_failed_crit_edge, label %if.end112.if.end122_crit_edge

if.end112.if.end122_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.end112.init_failed_crit_edge:                  ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_failed

if.else117:                                       ; preds = %if.end105
  %call118 = call i32 @tilcdc_attach_external_device(ptr noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.else117.if.end122_crit_edge, label %if.else117.init_failed_crit_edge

if.else117.init_failed_crit_edge:                 ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_failed

if.else117.if.end122_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.end122:                                        ; preds = %if.else117.if.end122_crit_edge, %if.end112.if.end122_crit_edge
  %external_connector = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 17
  %67 = ptrtoint ptr %external_connector to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %external_connector, align 4
  %tobool123.not = icmp eq ptr %68, null
  br i1 %tobool123.not, label %land.lhs.true, label %if.end122.if.end130_crit_edge

if.end122.if.end130_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

land.lhs.true:                                    ; preds = %if.end122
  %num_encoders = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 12
  %69 = ptrtoint ptr %num_encoders to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_encoders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp124 = icmp eq i32 %70, 0
  br i1 %cmp124, label %land.lhs.true.do.end129_crit_edge, label %lor.lhs.false

land.lhs.true.do.end129_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end129

lor.lhs.false:                                    ; preds = %land.lhs.true
  %num_connectors = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 14
  %71 = ptrtoint ptr %num_connectors to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_connectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp125 = icmp eq i32 %72, 0
  br i1 %cmp125, label %lor.lhs.false.do.end129_crit_edge, label %lor.lhs.false.if.end130_crit_edge

lor.lhs.false.if.end130_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

lor.lhs.false.do.end129_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end129

do.end129:                                        ; preds = %lor.lhs.false.do.end129_crit_edge, %land.lhs.true.do.end129_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %init_failed

if.end130:                                        ; preds = %lor.lhs.false.if.end130_crit_edge, %if.end122.if.end130_crit_edge
  %call131 = call i32 @drm_vblank_init(ptr noundef %call1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %do.end136, label %if.end137

do.end136:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #10
  br label %init_failed

if.end137:                                        ; preds = %if.end130
  %call138 = call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.end137.init_failed_crit_edge, label %if.end141

if.end137.init_failed_crit_edge:                  ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_failed

if.end141:                                        ; preds = %if.end137
  %irq = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 3
  %73 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call138, ptr %irq, align 4
  %74 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_private, align 4
  %driver.i = getelementptr inbounds %struct.drm_device, ptr %call1, i32 0, i32 4
  %76 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver.i, align 4
  %name.i = getelementptr inbounds %struct.drm_driver, ptr %77, i32 0, i32 21
  %78 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name.i, align 4
  %call.i.i11 = call i32 @request_threaded_irq(i32 noundef %call138, ptr noundef nonnull @tilcdc_irq, ptr noundef null, i32 noundef 0, ptr noundef %79, ptr noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %tobool.not.i = icmp eq i32 %call.i.i11, 0
  br i1 %tobool.not.i, label %tilcdc_irq_install.exit.thread, label %tilcdc_irq_install.exit

tilcdc_irq_install.exit.thread:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  %irq_enabled.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %75, i32 0, i32 20
  %80 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %irq_enabled.i, align 2
  br label %if.end149

tilcdc_irq_install.exit:                          ; preds = %if.end141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %cmp144 = icmp slt i32 %call.i.i11, 0
  br i1 %cmp144, label %do.end148, label %tilcdc_irq_install.exit.if.end149_crit_edge

tilcdc_irq_install.exit.if.end149_crit_edge:      ; preds = %tilcdc_irq_install.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

do.end148:                                        ; preds = %tilcdc_irq_install.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #10
  br label %init_failed

if.end149:                                        ; preds = %tilcdc_irq_install.exit.if.end149_crit_edge, %tilcdc_irq_install.exit.thread
  call void @drm_mode_config_reset(ptr noundef %call1) #7
  call void @drm_kms_helper_poll_init(ptr noundef %call1) #7
  %call150 = call i32 @drm_dev_register(ptr noundef %call1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end153, label %if.end149.init_failed_crit_edge

if.end149.init_failed_crit_edge:                  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_failed

if.end153:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  %is_registered = getelementptr inbounds %struct.tilcdc_drm_private, ptr %call.i, i32 0, i32 18
  %81 = ptrtoint ptr %is_registered to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %is_registered, align 4
  call void @drm_fbdev_generic_setup(ptr noundef %call1, i32 noundef %bpp.1) #7
  br label %cleanup

init_failed:                                      ; preds = %if.end149.init_failed_crit_edge, %do.end148, %if.end137.init_failed_crit_edge, %do.end136, %do.end129, %if.else117.init_failed_crit_edge, %if.end112.init_failed_crit_edge, %if.then108.init_failed_crit_edge, %do.end102, %do.end94, %do.end32, %do.end24, %do.end, %if.end5.init_failed_crit_edge
  %ret.0 = phi i32 [ -19, %do.end32 ], [ %call89, %do.end94 ], [ %call97, %do.end102 ], [ %call109, %if.then108.init_failed_crit_edge ], [ %call113, %if.end112.init_failed_crit_edge ], [ %call131, %do.end136 ], [ %call138, %if.end137.init_failed_crit_edge ], [ %call.i.i11, %do.end148 ], [ %call150, %if.end149.init_failed_crit_edge ], [ -517, %do.end129 ], [ %call118, %if.else117.init_failed_crit_edge ], [ -12, %do.end24 ], [ -22, %do.end ], [ -12, %if.end5.init_failed_crit_edge ]
  call fastcc void @tilcdc_fini(ptr noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %init_failed, %if.end153, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %ret.0, %init_failed ], [ 0, %if.end153 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tilcdc_crtc_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpufreq_transition(ptr nocapture noundef readonly %nb, i32 noundef %val, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp = icmp eq i32 %val, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %crtc = getelementptr i8, ptr %nb, i32 16
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  tail call void @tilcdc_crtc_update_clk(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tilcdc_add_component_encoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tilcdc_attach_external_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tilcdc_fini(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %freq_transition = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %freq_transition to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %freq_transition, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @cpufreq_unregister_notifier(ptr noundef %freq_transition, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crtc = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tilcdc_crtc_shutdown(ptr noundef nonnull %5) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %is_registered = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %is_registered to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_registered, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_dev_unregister(ptr noundef %dev) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  tail call void @drm_kms_helper_poll_fini(ptr noundef %dev) #7
  %8 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private, align 4
  %irq_enabled.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %irq_enabled.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end8.tilcdc_irq_uninstall.exit_crit_edge, label %if.end.i

if.end8.tilcdc_irq_uninstall.exit_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %tilcdc_irq_uninstall.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %irq.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %13, ptr noundef %dev) #7
  %14 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %irq_enabled.i, align 2
  br label %tilcdc_irq_uninstall.exit

tilcdc_irq_uninstall.exit:                        ; preds = %if.end.i, %if.end8.tilcdc_irq_uninstall.exit_crit_edge
  tail call void @drm_mode_config_cleanup(ptr noundef %dev) #7
  %clk = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %tilcdc_irq_uninstall.exit.if.end12_crit_edge, label %if.then10

tilcdc_irq_uninstall.exit.if.end12_crit_edge:     ; preds = %tilcdc_irq_uninstall.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %tilcdc_irq_uninstall.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_put(ptr noundef nonnull %16) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %tilcdc_irq_uninstall.exit.if.end12_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %18) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %wq = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wq, align 4
  %tobool17.not = icmp eq ptr %20, null
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @destroy_workqueue(ptr noundef nonnull %20) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %21 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %dev_private, align 4
  %dev22 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22, align 4
  tail call void @__pm_runtime_disable(ptr noundef %23, i1 noundef zeroext true) #7
  tail call void @drm_dev_put(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_atomic_check(ptr noundef %dev, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_atomic_helper_check_modeset(ptr noundef %dev, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @drm_atomic_helper_check_planes(ptr noundef %dev, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @drm_atomic_helper_check_modeset(ptr noundef %dev, ptr noundef %state) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_modeset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tilcdc_crtc_update_clk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_irq(i32 noundef %irq, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %crtc = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %call = tail call i32 @tilcdc_crtc_irq(ptr noundef %3) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tilcdc_crtc_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_notifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tilcdc_crtc_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tilcdc_debugfs_init(ptr noundef %minor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @tilcdc_debugfs_list, i32 noundef 2, ptr noundef %1, ptr noundef %minor) #7
  %.pn13 = load ptr, ptr @module_list, align 4
  %cmp.not15 = icmp eq ptr %.pn13, @module_list
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn13, %entry.for.body_crit_edge ]
  %funcs = getelementptr i8, ptr %.pn16, i32 8
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %debugfs_init = getelementptr inbounds %struct.tilcdc_module_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %debugfs_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_init, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mod.017 = getelementptr i8, ptr %.pn16, i32 -4
  %call = tail call i32 %5(ptr noundef %mod.017, ptr noundef %minor) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, @module_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_regs_show(ptr noundef %m, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #7
  %rev = getelementptr inbounds %struct.tilcdc_drm_private, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rev, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, i32 noundef %11) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rev, align 4
  %rev4 = getelementptr [18 x %struct.anon.93], ptr @registers, i32 0, i32 %i.023, i32 1
  %14 = ptrtoint ptr %rev4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rev4, align 4
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp5.not = icmp slt i32 %13, %conv
  br i1 %cmp5.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [18 x %struct.anon.93], ptr @registers, i32 0, i32 %i.023
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %reg = getelementptr [18 x %struct.anon.93], ptr @registers, i32 0, i32 %i.023, i32 3
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  %20 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_private, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %19
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !180
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, ptr noundef %17, i32 noundef %25) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  %call.i22 = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_mm_show(ptr noundef %m, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #7
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !183
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__drm_puts_seq_file, ptr %6, align 4, !alias.scope !183
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m, ptr %7, align 4, !alias.scope !183
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %8, align 4, !alias.scope !183
  %vma_offset_manager = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 33
  %13 = ptrtoint ptr %vma_offset_manager to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vma_offset_manager, align 4
  %vm_addr_space_mm = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %14, i32 0, i32 1
  call void @drm_mm_print(ptr noundef %vm_addr_space_mm, ptr noundef nonnull %p) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_print(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_bind(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tilcdc_init(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tilcdc_unbind(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tilcdc_fini(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_pm_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #7
  %call2 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_pm_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #7
  %call2 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tilcdc_panel_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 616, i32 2}
!2 = !{ptr @__initcall__kmod_tilcdc__331_621_tilcdc_drm_init6, !3, !"__initcall__kmod_tilcdc__331_621_tilcdc_drm_init6", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 621, i32 1}
!4 = !{ptr @__exitcall_tilcdc_drm_fini, !5, !"__exitcall_tilcdc_drm_fini", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 622, i32 1}
!6 = !{ptr @__UNIQUE_ID_author332, !7, !"__UNIQUE_ID_author332", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 624, i32 1}
!8 = !{ptr @__UNIQUE_ID_description333, !9, !"__UNIQUE_ID_description333", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 625, i32 1}
!10 = !{ptr @__UNIQUE_ID_file334, !11, !"__UNIQUE_ID_file334", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 626, i32 1}
!12 = !{ptr @__UNIQUE_ID_license335, !11, !"__UNIQUE_ID_license335", i1 false, i1 false}
!13 = !{ptr @module_list, !14, !"module_list", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 33, i32 8}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 601, i32 13}
!17 = !{ptr @tilcdc_platform_driver, !18, !"tilcdc_platform_driver", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 597, i32 31}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 560, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tilcdc_pdev_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @tilcdc_pdev_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 232, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tilcdc_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @tilcdc_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 239, i32 3}
!34 = !{ptr @tilcdc_init._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tilcdc_init._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 244, i32 27}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 246, i32 3}
!40 = !{ptr @tilcdc_init._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tilcdc_init._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 264, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tilcdc_init._entry.16, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @tilcdc_init._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 274, i32 3}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 279, i32 21}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 281, i32 33}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 282, i32 24}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 283, i32 4}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 288, i32 31}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 289, i32 4}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 295, i32 4}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 304, i32 33}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 307, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 309, i32 33}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 316, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 318, i32 33}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 322, i32 2}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 326, i32 3}
!77 = !{ptr @tilcdc_init._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tilcdc_init._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 336, i32 3}
!81 = !{ptr @tilcdc_init._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tilcdc_init._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 358, i32 3}
!85 = !{ptr @tilcdc_init._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @tilcdc_init._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 365, i32 3}
!89 = !{ptr @tilcdc_init._entry.43, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tilcdc_init._entry_ptr.45, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 376, i32 3}
!93 = !{ptr @tilcdc_init._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @tilcdc_init._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @tilcdc_rev1_formats, !96, !"tilcdc_rev1_formats", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 35, i32 18}
!97 = !{ptr @tilcdc_crossed_formats, !98, !"tilcdc_crossed_formats", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 41, i32 18}
!99 = !{ptr @tilcdc_straight_formats, !100, !"tilcdc_straight_formats", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 37, i32 18}
!101 = !{ptr @tilcdc_legacy_formats, !102, !"tilcdc_legacy_formats", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 45, i32 18}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 101, i32 3}
!105 = !{ptr @mode_config_funcs, !106, !"mode_config_funcs", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 89, i32 43}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 491, i32 24}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 492, i32 24}
!111 = !{ptr @tilcdc_driver, !112, !"tilcdc_driver", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 483, i32 32}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 463, i32 5}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 464, i32 5}
!117 = !{ptr @tilcdc_debugfs_list, !118, !"tilcdc_debugfs_list", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 462, i32 29}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 441, i32 16}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 445, i32 18}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 407, i32 3}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 408, i32 3}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 409, i32 3}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 410, i32 3}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 411, i32 3}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 412, i32 3}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 413, i32 3}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 414, i32 3}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 415, i32 3}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 416, i32 3}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 417, i32 3}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 418, i32 3}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 420, i32 3}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 421, i32 3}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 422, i32 3}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 423, i32 3}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 424, i32 3}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 425, i32 3}
!159 = !{ptr @registers, !160, !"registers", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 404, i32 3}
!161 = !{ptr @fops, !162, !"fops", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 481, i32 1}
!163 = !{ptr @tilcdc_comp_ops, !164, !"tilcdc_comp_ops", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 548, i32 42}
!165 = !{ptr @tilcdc_of_match, !166, !"tilcdc_of_match", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 590, i32 28}
!167 = !{ptr @tilcdc_pm_ops, !168, !"tilcdc_pm_ops", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 525, i32 32}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_drv.c", i32 609, i32 2}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i64 6944695}
!181 = !{i64 2154477554}
!182 = !{i8 0, i8 2}
!183 = !{!184}
!184 = distinct !{!184, !185, !"drm_seq_file_printer: %agg.result"}
!185 = distinct !{!185, !"drm_seq_file_printer"}
