; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/omap_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/omap_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.drm_private_state_funcs = type { ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.omap_drm_private = type { ptr, ptr, i32, ptr, ptr, i8, i32, [8 x %struct.omap_drm_pipeline], [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], %struct.drm_private_obj, ptr, ptr, %struct.mutex, %struct.list_head, ptr, i8, ptr, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.omap_drm_pipeline = type { ptr, ptr, ptr, ptr, i32 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
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
%struct.dss_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, %struct.dispc_clock_info, [2 x i32], i32, [3 x i32], i8, [128 x i32], ptr, %struct.anon.92, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.dispc_clock_info = type { i32, i32, i16, i16 }
%struct.anon.92 = type { ptr, ptr, ptr }
%struct.omap_dss_device = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_omap_param = type { i64, i64 }
%struct.drm_omap_gem_new = type { %union.omap_gem_size, i32, i32, i32 }
%union.omap_gem_size = type { i32 }
%struct.drm_omap_gem_info = type { i32, i32, i64, i32, i32 }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fini\0A\00", [26 x i8] zeroinitializer }, align 32
@drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @omap_dmm_driver, ptr @pdev], [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_omapdrm__319_941_omap_drm_init6 = internal global ptr @omap_drm_init, section ".initcall6.init", align 4
@__exitcall_omap_drm_fini = internal global ptr @omap_drm_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author320 = internal constant [38 x i8] c"omapdrm.author=Rob Clark <rob@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [54 x i8] c"omapdrm.author=Tomi Valkeinen <tomi.valkeinen@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [44 x i8] c"omapdrm.description=OMAP DRM Display Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias323 = internal constant [31 x i8] c"omapdrm.alias=platform:omapdrm\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [45 x i8] c"omapdrm.file=drivers/gpu/drm/omapdrm/omapdrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [23 x i8] c"omapdrm.license=GPL v2\00", section ".modinfo", align 1
@omap_dmm_driver = external dso_local global %struct.platform_driver, align 4
@pdev = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pdev_probe, ptr @pdev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omapdrm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@omapdrm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_drm_suspend, ptr @omap_drm_resume, ptr @omap_drm_suspend, ptr @omap_drm_resume, ptr @omap_drm_suspend, ptr @omap_drm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pdev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 849, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set the DMA mask\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pdev_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/omapdrm/omap_drv.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pdev_probe._entry_ptr = internal global ptr @pdev_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@omap_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @dev_open, ptr null, ptr @drm_fb_helper_lastclose, ptr null, ptr null, ptr null, ptr null, ptr @omap_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr @omap_gem_prime_import, ptr null, ptr null, ptr @omap_gem_dumb_create, ptr @omap_gem_dumb_map_offset, ptr null, i32 1, i32 0, i32 0, ptr @.str.1, ptr @.str.14, ptr @.str.15, i32 27, ptr @ioctls, i32 7, ptr @omapdriver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@omapdrm_soc_devices = internal constant { [5 x %struct.soc_device_attribute], [52 x i8] } { [5 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.26, ptr null, ptr null, ptr null, ptr inttoptr (i32 13360 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.27, ptr null, ptr null, ptr null, ptr inttoptr (i32 17456 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.28, ptr null, ptr null, ptr null, ptr inttoptr (i32 21552 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.29, ptr null, ptr null, ptr null, ptr inttoptr (i32 1874 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], [52 x i8] zeroinitializer }, align 32
@omapdrm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->list_lock\00", [47 x i8] zeroinitializer }, align 32
@omapdrm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"omap_modeset_init failed: ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omapdrm_init\00", [19 x i8] zeroinitializer }, align 32
@omapdrm_init._entry_ptr = internal global ptr @omapdrm_init._entry, section ".printk_index", align 4
@omapdrm_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 775, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not init vblank\0A\00", [41 x i8] zeroinitializer }, align 32
@omapdrm_init._entry_ptr.13 = internal global ptr @omapdrm_init._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP DRM\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20110917\00", [23 x i8] zeroinitializer }, align 32
@omapdriver_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @omap_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"open: dev=%p, file=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OMAP_GET_PARAM\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OMAP_SET_PARAM\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OMAP_GEM_NEW\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OMAP_GEM_CPU_PREP\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OMAP_GEM_CPU_FINI\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OMAP_GEM_INFO\00", [18 x i8] zeroinitializer }, align 32
@ioctls = internal constant { <{ %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, [89 x %struct.drm_ioctl_desc] }>, [384 x i8] } { <{ %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, %struct.drm_ioctl_desc, [89 x %struct.drm_ioctl_desc] }> <{ %struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @ioctl_get_param, ptr @.str.17 }, %struct.drm_ioctl_desc { i32 1074816065, i32 7, ptr @drm_invalid_op, ptr @.str.18 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667581, i32 32, ptr @ioctl_gem_new, ptr @.str.19 }, %struct.drm_ioctl_desc { i32 1074291780, i32 32, ptr @drm_noop, ptr @.str.20 }, %struct.drm_ioctl_desc { i32 1074816069, i32 32, ptr @drm_noop, ptr @.str.21 }, %struct.drm_ioctl_desc { i32 -1072143290, i32 32, ptr @ioctl_gem_info, ptr @.str.22 }, [89 x %struct.drm_ioctl_desc] zeroinitializer }>, [384 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%p: param=%llu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown parameter %lld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OMAP3\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OMAP4\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OMAP5\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DRA7\00", [27 x i8] zeroinitializer }, align 32
@omap_global_state_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @omap_global_duplicate_state, ptr @omap_global_destroy_state }, [24 x i8] zeroinitializer }, align 32
@omap_modeset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 424, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): Too many connected displays\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_modeset_init\00", [46 x i8] zeroinitializer }, align 32
@omap_modeset_init._entry_ptr = internal global ptr @omap_modeset_init._entry, section ".printk_index", align 4
@omap_modeset_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to create bridge connector for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@omap_modeset_init._entry_ptr.34 = internal global ptr @omap_modeset_init._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"registered %u planes, %u crtcs/encoders/connectors\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@omap_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @omap_framebuffer_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr @omap_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap_mode_config_helper_funcs = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @omap_atomic_commit_tail, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zorder\00", [25 x i8] zeroinitializer }, align 32
@omap_connect_pipelines._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 335, ptr @.str.39, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not connect output %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_connect_pipelines\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_connect_pipelines._entry_ptr = internal global ptr @omap_connect_pipelines._entry, section ".printk_index", align 4
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"display\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[PLANE:%d:%s] updated normalized zpos value %d\0A\00", [48 x i8] zeroinitializer }, align 32
@omap_atomic_wait_for_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 63, ptr @.str.39, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"atomic complete timeout (pipe %u)!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"omap_atomic_wait_for_completion\00", [32 x i8] zeroinitializer }, align 32
@omap_atomic_wait_for_completion._entry_ptr = internal global ptr @omap_atomic_wait_for_completion._entry, section ".printk_index", align 4
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"init\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 934, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 908, i32 39 }
@___asan_gen_.52 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 899, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 901, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"omapdrm_pm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 897, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 849, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 728, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"omap_drm_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 689, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"omapdrm_soc_devices\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 713, i32 42 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 748, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 768, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 775, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 706, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 707, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"omapdriver_fops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 677, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 672, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 648, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 650, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 652, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 655, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 658, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 660, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"ioctls\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 647, i32 36 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 597, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 604, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 714, i32 14 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 715, i32 14 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 716, i32 14 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 717, i32 14 }
@___asan_gen_.160 = private unnamed_addr constant [24 x i8] c"omap_global_state_funcs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 279, i32 45 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 423, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 497, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 513, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [23 x i8] c"omap_mode_config_funcs\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 220, i32 43 }
@___asan_gen_.184 = private unnamed_addr constant [30 x i8] c"omap_mode_config_helper_funcs\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 216, i32 50 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 370, i32 56 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 334, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 391, i32 38 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 183, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 62, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 818, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private constant [38 x i8] c"../drivers/gpu/drm/omapdrm/omap_drv.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 917, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_alias323, ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_omap_drm_fini, ptr @__initcall__kmod_omapdrm__319_941_omap_drm_init6, ptr @omap_atomic_wait_for_completion._entry, ptr @omap_atomic_wait_for_completion._entry_ptr, ptr @omap_connect_pipelines._entry, ptr @omap_connect_pipelines._entry_ptr, ptr @omap_drm_fini, ptr @omap_modeset_init._entry, ptr @omap_modeset_init._entry.32, ptr @omap_modeset_init._entry_ptr, ptr @omap_modeset_init._entry_ptr.34, ptr @omapdrm_init._entry, ptr @omapdrm_init._entry.11, ptr @omapdrm_init._entry_ptr, ptr @omapdrm_init._entry_ptr.13, ptr @pdev_probe._entry, ptr @pdev_probe._entry_ptr, ptr @.str, ptr @drivers, ptr @pdev, ptr @.str.1, ptr @omapdrm_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @omap_drm_driver, ptr @omapdrm_soc_devices, ptr @omapdrm_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @omapdriver_fops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ioctls, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @omap_global_state_funcs, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @omap_mode_config_funcs, ptr @omap_mode_config_helper_funcs, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdrm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdrm_soc_devices to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdrm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdrm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdrm_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdriver_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctls to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_global_state_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_modeset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_modeset_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mode_config_helper_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_connect_pipelines._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_atomic_wait_for_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @omap_get_existing_global_state(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.omap_drm_private, ptr %priv, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_get_global_state(ptr noundef %s) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %glob_obj = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 13
  %call = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %s, ptr noundef %glob_obj) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_drm_fini() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #10
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 2) #10
  tail call void @omap_dss_exit() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_dss_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_drm_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.45) #10
  %call = tail call i32 @omap_dss_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @omap_dss_exit() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdev_probe(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %0 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 596) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.dev_name.exit.i_crit_edge

if.end5.dev_name.exit.i_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end5.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end5.dev_name.exit.i_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i) #10
  %call1.i = tail call ptr @drm_dev_alloc(ptr noundef nonnull @omap_drm_driver, ptr noundef %dev) #10
  %cmp.i.i21 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i21, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call1.i to i32
  br label %omapdrm_init.exit

if.end.i:                                         ; preds = %dev_name.exit.i
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i, ptr %call7.i.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %call1.i, i32 0, i32 5
  %11 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %dev_private.i, align 4
  %dev5.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %dev5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev5.i, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %dss6.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %dss6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dss6.i, align 4
  %call8.i = tail call ptr @dispc_get_dispc(ptr noundef %14) #10
  %dispc.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %dispc.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i, ptr %dispc.i, align 8
  %17 = ptrtoint ptr %dss6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dss6.i, align 4
  %mgr_ops_priv.i = getelementptr inbounds %struct.dss_device, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %mgr_ops_priv.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %mgr_ops_priv.i, align 4
  %call10.i = tail call ptr @soc_device_match(ptr noundef nonnull @omapdrm_soc_devices) #10
  %tobool.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.soc_device_attribute, ptr %call10.i, i32 0, i32 5
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %22, %cond.true.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %omaprev.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %omaprev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond.i, ptr %omaprev.i, align 8
  %call11.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 655362, i32 noundef 1) #10
  %wq.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 15
  %24 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call11.i, ptr %wq.i, align 4
  %list_lock.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %list_lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @omapdrm_init.__key) #10
  %obj_list.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 17
  %25 = ptrtoint ptr %obj_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %obj_list.i, ptr %obj_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 17, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %obj_list.i, ptr %prev.i.i, align 8
  %27 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dispc.i, align 8
  %call13.i = tail call i32 @dispc_get_memory_bandwidth_limit(ptr noundef %28) #10
  %max_bandwidth.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 24
  %29 = ptrtoint ptr %max_bandwidth.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call13.i, ptr %max_bandwidth.i, align 8
  tail call void @omap_gem_init(ptr noundef %call1.i) #10
  %call.i.i22 = tail call i32 @drmm_mode_config_init(ptr noundef %call1.i) #10
  %30 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 36) #14
  %tobool.not.i97.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i97.i, label %cond.end.i.err_gem_deinit.i_crit_edge, label %if.end18.i

cond.end.i.err_gem_deinit.i_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_gem_deinit.i

if.end18.i:                                       ; preds = %cond.end.i
  %glob_obj.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %31, i32 0, i32 13
  tail call void @drm_atomic_private_obj_init(ptr noundef %call1.i, ptr noundef %glob_obj.i.i, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @omap_global_state_funcs) #10
  %call19.i = tail call i32 @omap_hwoverlays_init(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.err_free_priv_obj.i_crit_edge

if.end18.i.err_free_priv_obj.i_crit_edge:         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_priv_obj.i

if.end22.i:                                       ; preds = %if.end18.i
  %33 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_private.i, align 4
  %dispc.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %dispc.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dispc.i.i, align 4
  %call.i101.i = tail call i32 @dispc_get_num_ovls(ptr noundef %36) #10
  %37 = ptrtoint ptr %dispc.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dispc.i.i, align 4
  %call2.i.i = tail call i32 @dispc_get_num_mgrs(ptr noundef %38) #10
  %call3.i.i = tail call zeroext i1 @omapdss_stack_is_ready() #10
  br i1 %call3.i.i, label %if.end.i102.i, label %if.end22.i.do.end28.i_crit_edge

if.end22.i.do.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

if.end.i102.i:                                    ; preds = %if.end22.i
  %39 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_private.i, align 4
  %dispc.i.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %dispc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dispc.i.i.i, align 4
  %call.i.i.i = tail call i32 @dispc_get_num_ovls(ptr noundef %42) #10
  %sub.i.i.i = add i32 %call.i.i.i, -1
  %conv.i.i.i = zext i32 %sub.i.i.i to i64
  %call1.i.i.i = tail call ptr @drm_property_create_range(ptr noundef %call1.i, i32 noundef 0, ptr noundef nonnull @.str.36, i64 noundef 0, i64 noundef %conv.i.i.i) #10
  %zorder_prop.i.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %40, i32 0, i32 20
  %43 = ptrtoint ptr %zorder_prop.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call1.i.i.i, ptr %zorder_prop.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i102.i.do.end28.i_crit_edge, label %if.end6.i.i

if.end.i102.i.do.end28.i_crit_edge:               ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

if.end6.i.i:                                      ; preds = %if.end.i102.i
  %44 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_private.i, align 4
  %call30.i.i.i = tail call ptr @omapdss_device_next_output(ptr noundef null) #10
  %cmp.not31.i.i.i = icmp eq ptr %call30.i.i.i, null
  br i1 %cmp.not31.i.i.i, label %if.end6.i.i.if.end10.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.end6.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end6.i.i
  %dss.i.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %45, i32 0, i32 3
  %num_pipes.i.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %45, i32 0, i32 6
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end11.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %call32.i.i.i = phi ptr [ %call30.i.i.i, %while.body.lr.ph.i.i.i ], [ %call.i293.i.i, %if.end11.i.i.i.while.body.i.i.i_crit_edge ]
  %46 = ptrtoint ptr %dss.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dss.i.i.i, align 4
  %call1.i292.i.i = tail call i32 @omapdss_device_connect(ptr noundef %47, ptr noundef null, ptr noundef nonnull %call32.i.i.i) #10
  %48 = zext i32 %call1.i292.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i292.i.i, label %do.end.i.i.i [
    i32 -517, label %omap_connect_pipelines.exit.thread299.i.i
    i32 0, label %if.else4.i.i.i
  ]

omap_connect_pipelines.exit.thread299.i.i:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @omapdss_device_put(ptr noundef nonnull %call32.i.i.i) #10
  br label %do.end28.i

do.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %call32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call32.i.i.i, align 4
  %name.i.i.i = getelementptr inbounds %struct.omap_dss_device, ptr %call32.i.i.i, i32 0, i32 7
  %51 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.37, ptr noundef %52) #13
  br label %if.end11.i.i.i

if.else4.i.i.i:                                   ; preds = %while.body.i.i.i
  %53 = ptrtoint ptr %num_pipes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pipes.i.i.i, align 4
  %inc.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i, ptr %num_pipes.i.i.i, align 4
  %call5.i.i.i = tail call ptr @omapdss_device_get(ptr noundef nonnull %call32.i.i.i) #10
  %output6.i.i.i = getelementptr %struct.omap_drm_private, ptr %45, i32 0, i32 7, i32 %54, i32 3
  %55 = ptrtoint ptr %output6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call5.i.i.i, ptr %output6.i.i.i, align 4
  %56 = ptrtoint ptr %num_pipes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_pipes.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %57)
  %cmp8.i.i.i = icmp eq i32 %57, 8
  br i1 %cmp8.i.i.i, label %omap_connect_pipelines.exit.i.i, label %if.else4.i.i.i.if.end11.i.i.i_crit_edge

if.else4.i.i.i.if.end11.i.i.i_crit_edge:          ; preds = %if.else4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.else4.i.i.i.if.end11.i.i.i_crit_edge, %do.end.i.i.i
  %call.i293.i.i = tail call ptr @omapdss_device_next_output(ptr noundef nonnull %call32.i.i.i) #10
  %cmp.not.i.i.i = icmp eq ptr %call.i293.i.i, null
  br i1 %cmp.not.i.i.i, label %if.end11.i.i.i.if.end10.i.i_crit_edge, label %if.end11.i.i.i.while.body.i.i.i_crit_edge

if.end11.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

if.end11.i.i.i.if.end10.i.i_crit_edge:            ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

omap_connect_pipelines.exit.i.i:                  ; preds = %if.else4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @omapdss_device_put(ptr noundef nonnull %call32.i.i.i) #10
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %omap_connect_pipelines.exit.i.i, %if.end11.i.i.i.if.end10.i.i_crit_edge, %if.end6.i.i.if.end10.i.i_crit_edge
  %num_pipes.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %34, i32 0, i32 6
  %58 = ptrtoint ptr %num_pipes.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_pipes.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %call2.i.i)
  %cmp11.i.i = icmp ugt i32 %59, %call2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %call.i101.i)
  %cmp13.i.i = icmp ugt i32 %59, %call.i101.i
  %or.cond.i.i = select i1 %cmp11.i.i, i1 true, i1 %cmp13.i.i
  br i1 %or.cond.i.i, label %do.end.i.i, label %if.end16.i.i

do.end.i.i:                                       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev15.i.i = getelementptr inbounds %struct.drm_device, ptr %call1.i, i32 0, i32 2
  %60 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev15.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #13
  br label %do.end28.i

if.end16.i.i:                                     ; preds = %if.end10.i.i
  %notmask.i.i = shl nsw i32 -1, %59
  %sub.i.i = xor i32 %notmask.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %cmp18321.not.i.i = icmp eq i32 %call.i101.i, 0
  br i1 %cmp18321.not.i.i, label %if.end16.i.i.for.cond56.preheader.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end16.i.i.for.cond56.preheader.i.i_crit_edge:  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond56.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end16.i.i
  %num_planes.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %34, i32 0, i32 9
  br label %for.body.i.i

for.cond56.preheader.i.i:                         ; preds = %for.inc.i.i.for.cond56.preheader.i.i_crit_edge, %if.end16.i.i.for.cond56.preheader.i.i_crit_edge
  %62 = ptrtoint ptr %num_pipes.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_pipes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp58323.not.i.i = icmp eq i32 %63, 0
  br i1 %cmp58323.not.i.i, label %for.cond56.preheader.i.i.for.end87.i.i_crit_edge, label %for.cond56.preheader.i.i.for.body59.i.i_crit_edge

for.cond56.preheader.i.i.for.body59.i.i_crit_edge: ; preds = %for.cond56.preheader.i.i
  br label %for.body59.i.i

for.cond56.preheader.i.i.for.end87.i.i_crit_edge: ; preds = %for.cond56.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end87.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0322.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc55.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %64 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_planes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %65)
  %cmp21.i.i = icmp ugt i32 %65, 7
  br i1 %cmp21.i.i, label %do.end32.i.i, label %if.end47.i.i, !prof !132

do.end32.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 437, i32 noundef 9, ptr noundef null) #10
  br label %do.end28.i

if.end47.i.i:                                     ; preds = %for.body.i.i
  %66 = ptrtoint ptr %num_pipes.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_pipes.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0322.i.i, i32 %67)
  %cmp20.i.i = icmp ult i32 %i.0322.i.i, %67
  %cond.i.i = zext i1 %cmp20.i.i to i32
  %call48.i.i = tail call ptr @omap_plane_init(ptr noundef %call1.i, i32 noundef %i.0322.i.i, i32 noundef %cond.i.i, i32 noundef %sub.i.i) #10
  %cmp.i.i.i = icmp ugt ptr %call48.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end47.i.i.omap_modeset_init.exit.i_crit_edge, label %for.inc.i.i

if.end47.i.i.omap_modeset_init.exit.i_crit_edge:  ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_init.exit.i

for.inc.i.i:                                      ; preds = %if.end47.i.i
  %68 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_planes.i.i, align 4
  %inc.i.i = add i32 %69, 1
  store i32 %inc.i.i, ptr %num_planes.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 10, i32 %69
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call48.i.i, ptr %arrayidx.i.i, align 4
  %inc55.i.i = add nuw i32 %i.0322.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc55.i.i, %call.i101.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.cond56.preheader.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.for.cond56.preheader.i.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond56.preheader.i.i

for.body59.i.i:                                   ; preds = %for.inc85.i.i.for.body59.i.i_crit_edge, %for.cond56.preheader.i.i.for.body59.i.i_crit_edge
  %i.1324.i.i = phi i32 [ %inc86.i.i, %for.inc85.i.i.for.body59.i.i_crit_edge ], [ 0, %for.cond56.preheader.i.i.for.body59.i.i_crit_edge ]
  %output.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 7, i32 %i.1324.i.i, i32 3
  %71 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %output.i.i, align 4
  %call61.i.i = tail call ptr @omap_encoder_init(ptr noundef %call1.i, ptr noundef %72) #10
  %encoder.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 7, i32 %i.1324.i.i, i32 1
  %73 = ptrtoint ptr %encoder.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call61.i.i, ptr %encoder.i.i, align 4
  %tobool63.not.i.i = icmp eq ptr %call61.i.i, null
  br i1 %tobool63.not.i.i, label %for.body59.i.i.do.end28.i_crit_edge, label %if.end65.i.i

for.body59.i.i.do.end28.i_crit_edge:              ; preds = %for.body59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

if.end65.i.i:                                     ; preds = %for.body59.i.i
  %74 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %output.i.i, align 4
  %bridge.i.i = getelementptr inbounds %struct.omap_dss_device, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bridge.i.i, align 4
  %tobool67.not.i.i = icmp eq ptr %77, null
  br i1 %tobool67.not.i.i, label %if.end65.i.i.if.end76.i.i_crit_edge, label %if.then68.i.i

if.end65.i.i.if.end76.i.i_crit_edge:              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i.i

if.then68.i.i:                                    ; preds = %if.end65.i.i
  %call72.i.i = tail call i32 @drm_bridge_attach(ptr noundef nonnull %call61.i.i, ptr noundef nonnull %77, ptr noundef null, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i)
  %cmp73.i.i = icmp slt i32 %call72.i.i, 0
  br i1 %cmp73.i.i, label %if.then68.i.i.do.end28.i_crit_edge, label %if.then68.i.i.if.end76.i.i_crit_edge

if.then68.i.i.if.end76.i.i_crit_edge:             ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i.i

if.then68.i.i.do.end28.i_crit_edge:               ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

if.end76.i.i:                                     ; preds = %if.then68.i.i.if.end76.i.i_crit_edge, %if.end65.i.i.if.end76.i.i_crit_edge
  %78 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %output.i.i, align 4
  %bridge.i.i.i = getelementptr inbounds %struct.omap_dss_device, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %bridge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bridge.i.i.i, align 4
  %tobool.not.i294.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i294.i.i, label %if.end76.i.i.for.inc85.i.i_crit_edge, label %if.end76.i.i.while.cond.i.i.i_crit_edge

if.end76.i.i.while.cond.i.i.i_crit_edge:          ; preds = %if.end76.i.i
  br label %while.cond.i.i.i

if.end76.i.i.for.inc85.i.i_crit_edge:             ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %if.end76.i.i.while.cond.i.i.i_crit_edge
  %bridge1.0.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %while.cond.i.i.i.while.cond.i.i.i_crit_edge ], [ %81, %if.end76.i.i.while.cond.i.i.i_crit_edge ]
  %chain_node.i.i.i.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge1.0.i.i.i, i32 0, i32 3
  %encoder.i.i.i.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge1.0.i.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %encoder.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %encoder.i.i.i.i, align 4
  %bridge_chain.i.i.i.i = getelementptr inbounds %struct.drm_encoder, ptr %83, i32 0, i32 9
  %84 = ptrtoint ptr %chain_node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chain_node.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %85, %bridge_chain.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %85, i32 -132
  %tobool3.not19.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  %tobool3.not.i.i.i = or i1 %cmp.i.not.i.i.i.i, %tobool3.not19.i.i.i
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i.i

if.end.i.i.i:                                     ; preds = %while.cond.i.i.i
  %of_node.i.i.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge1.0.i.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %of_node.i.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %87, null
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.for.inc85.i.i_crit_edge, label %omap_display_id.exit.i.i

if.end.i.i.i.for.inc85.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85.i.i

omap_display_id.exit.i.i:                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i.i.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %87, ptr noundef nonnull @.str.40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %cmp79311.i.i = icmp slt i32 %call6.i.i.i, 0
  %spec.select.i.i = select i1 %cmp79311.i.i, i32 %i.1324.i.i, i32 %call6.i.i.i
  br label %for.inc85.i.i

for.inc85.i.i:                                    ; preds = %omap_display_id.exit.i.i, %if.end.i.i.i.for.inc85.i.i_crit_edge, %if.end76.i.i.for.inc85.i.i_crit_edge
  %88 = phi i32 [ %i.1324.i.i, %if.end.i.i.i.for.inc85.i.i_crit_edge ], [ %i.1324.i.i, %if.end76.i.i.for.inc85.i.i_crit_edge ], [ %spec.select.i.i, %omap_display_id.exit.i.i ]
  %alias_id.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 7, i32 %i.1324.i.i, i32 4
  %89 = ptrtoint ptr %alias_id.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %alias_id.i.i, align 4
  %inc86.i.i = add nuw i32 %i.1324.i.i, 1
  %90 = ptrtoint ptr %num_pipes.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_pipes.i.i, align 4
  %cmp58.i.i = icmp ult i32 %inc86.i.i, %91
  br i1 %cmp58.i.i, label %for.inc85.i.i.for.body59.i.i_crit_edge, label %for.inc85.i.i.for.end87.i.i_crit_edge

for.inc85.i.i.for.end87.i.i_crit_edge:            ; preds = %for.inc85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end87.i.i

for.inc85.i.i.for.body59.i.i_crit_edge:           ; preds = %for.inc85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body59.i.i

for.end87.i.i:                                    ; preds = %for.inc85.i.i.for.end87.i.i_crit_edge, %for.cond56.preheader.i.i.for.end87.i.i_crit_edge
  %.lcssa317.i.i = phi i32 [ 0, %for.cond56.preheader.i.i.for.end87.i.i_crit_edge ], [ %91, %for.inc85.i.i.for.end87.i.i_crit_edge ]
  %pipes88.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %34, i32 0, i32 7
  tail call void @sort(ptr noundef %pipes88.i.i, i32 noundef %.lcssa317.i.i, i32 noundef 20, ptr noundef nonnull @omap_compare_pipelines, ptr noundef null) #10
  %92 = ptrtoint ptr %num_pipes.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_pipes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp92326.not.i.i = icmp eq i32 %93, 0
  br i1 %cmp92326.not.i.i, label %for.end87.i.i.omap_modeset_init.exit.thread139.i_crit_edge, label %for.end87.i.i.for.body93.i.i_crit_edge

for.end87.i.i.for.body93.i.i_crit_edge:           ; preds = %for.end87.i.i
  br label %for.body93.i.i

for.end87.i.i.omap_modeset_init.exit.thread139.i_crit_edge: ; preds = %for.end87.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_init.exit.thread139.i

for.cond142.preheader.i.i:                        ; preds = %for.inc139.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp144328.not.i.i = icmp eq i32 %102, 0
  br i1 %cmp144328.not.i.i, label %for.cond142.preheader.i.i.omap_modeset_init.exit.thread139.i_crit_edge, label %for.cond142.preheader.i.i.for.body145.i.i_crit_edge

for.cond142.preheader.i.i.for.body145.i.i_crit_edge: ; preds = %for.cond142.preheader.i.i
  br label %for.body145.i.i

for.cond142.preheader.i.i.omap_modeset_init.exit.thread139.i_crit_edge: ; preds = %for.cond142.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_init.exit.thread139.i

for.body93.i.i:                                   ; preds = %for.inc139.i.i.for.body93.i.i_crit_edge, %for.end87.i.i.for.body93.i.i_crit_edge
  %i.2327.i.i = phi i32 [ %inc140.i.i, %for.inc139.i.i.for.body93.i.i_crit_edge ], [ 0, %for.end87.i.i.for.body93.i.i_crit_edge ]
  %output97.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 7, i32 %i.2327.i.i, i32 3
  %94 = ptrtoint ptr %output97.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %output97.i.i, align 4
  %dispc_channel.i.i = getelementptr inbounds %struct.omap_dss_device, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %dispc_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dispc_channel.i.i, align 4
  %arrayidx99.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 8, i32 %97
  %98 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx99.i.i, align 4
  %cmp100.not.i.i = icmp eq ptr %99, null
  br i1 %cmp100.not.i.i, label %for.inc139.i.i, label %cleanup135.i.i, !prof !133

cleanup135.i.i:                                   ; preds = %for.body93.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 483, i32 noundef 9, ptr noundef null) #10
  br label %do.end28.i

for.inc139.i.i:                                   ; preds = %for.body93.i.i
  %arrayidx96.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 7, i32 %i.2327.i.i
  %100 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %arrayidx96.i.i, ptr %arrayidx99.i.i, align 4
  %inc140.i.i = add nuw i32 %i.2327.i.i, 1
  %101 = ptrtoint ptr %num_pipes.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_pipes.i.i, align 4
  %cmp92.i.i = icmp ult i32 %inc140.i.i, %102
  br i1 %cmp92.i.i, label %for.inc139.i.i.for.body93.i.i_crit_edge, label %for.cond142.preheader.i.i

for.inc139.i.i.for.body93.i.i_crit_edge:          ; preds = %for.inc139.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body93.i.i

for.body145.i.i:                                  ; preds = %for.inc179.i.i.for.body145.i.i_crit_edge, %for.cond142.preheader.i.i.for.body145.i.i_crit_edge
  %i.3329.i.i = phi i32 [ %inc180.i.i, %for.inc179.i.i.for.body145.i.i_crit_edge ], [ 0, %for.cond142.preheader.i.i.for.body145.i.i_crit_edge ]
  %arrayidx148.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 7, i32 %i.3329.i.i
  %encoder150.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 7, i32 %i.3329.i.i, i32 1
  %103 = ptrtoint ptr %encoder150.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %encoder150.i.i, align 4
  %call151.i.i = tail call ptr @drm_bridge_connector_init(ptr noundef %call1.i, ptr noundef %104) #10
  %connector.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 7, i32 %i.3329.i.i, i32 2
  %105 = ptrtoint ptr %connector.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call151.i.i, ptr %connector.i.i, align 4
  %cmp.i295.i.i = icmp ugt ptr %call151.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i295.i.i, label %do.end157.i.i, label %if.end162.i.i

do.end157.i.i:                                    ; preds = %for.body145.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev158.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %34, i32 0, i32 1
  %106 = ptrtoint ptr %dev158.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev158.i.i, align 4
  %output159.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 7, i32 %i.3329.i.i, i32 3
  %108 = ptrtoint ptr %output159.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %output159.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.omap_dss_device, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.33, ptr noundef %111) #13
  %112 = ptrtoint ptr %connector.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %connector.i.i, align 4
  br label %omap_modeset_init.exit.i

if.end162.i.i:                                    ; preds = %for.body145.i.i
  %call164.i.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %call151.i.i, ptr noundef %104) #10
  %arrayidx166.i.i = getelementptr %struct.omap_drm_private, ptr %34, i32 0, i32 10, i32 %i.3329.i.i
  %114 = ptrtoint ptr %arrayidx166.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx166.i.i, align 4
  %call167.i.i = tail call ptr @omap_crtc_init(ptr noundef %call1.i, ptr noundef %arrayidx148.i.i, ptr noundef %115) #10
  %cmp.i296.i.i = icmp ugt ptr %call167.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296.i.i, label %if.end162.i.i.omap_modeset_init.exit.i_crit_edge, label %for.inc179.i.i

if.end162.i.i.omap_modeset_init.exit.i_crit_edge: ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_init.exit.i

for.inc179.i.i:                                   ; preds = %if.end162.i.i
  %shl172.i.i = shl nuw i32 1, %i.3329.i.i
  %possible_crtcs.i.i = getelementptr inbounds %struct.drm_encoder, ptr %104, i32 0, i32 6
  %116 = ptrtoint ptr %possible_crtcs.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %shl172.i.i, ptr %possible_crtcs.i.i, align 4
  %117 = ptrtoint ptr %arrayidx148.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call167.i.i, ptr %arrayidx148.i.i, align 4
  %inc180.i.i = add nuw i32 %i.3329.i.i, 1
  %118 = ptrtoint ptr %num_pipes.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_pipes.i.i, align 4
  %cmp144.i.i = icmp ult i32 %inc180.i.i, %119
  br i1 %cmp144.i.i, label %for.inc179.i.i.for.body145.i.i_crit_edge, label %for.inc179.i.i.omap_modeset_init.exit.thread139.i_crit_edge

for.inc179.i.i.omap_modeset_init.exit.thread139.i_crit_edge: ; preds = %for.inc179.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_init.exit.thread139.i

for.inc179.i.i.for.body145.i.i_crit_edge:         ; preds = %for.inc179.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body145.i.i

omap_modeset_init.exit.thread139.i:               ; preds = %for.inc179.i.i.omap_modeset_init.exit.thread139.i_crit_edge, %for.cond142.preheader.i.i.omap_modeset_init.exit.thread139.i_crit_edge, %for.end87.i.i.omap_modeset_init.exit.thread139.i_crit_edge
  %.lcssa.i.i = phi i32 [ 0, %for.cond142.preheader.i.i.omap_modeset_init.exit.thread139.i_crit_edge ], [ 0, %for.end87.i.i.omap_modeset_init.exit.thread139.i_crit_edge ], [ %119, %for.inc179.i.i.omap_modeset_init.exit.thread139.i_crit_edge ]
  %num_planes182.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %34, i32 0, i32 9
  %120 = ptrtoint ptr %num_planes182.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_planes182.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %121, i32 noundef %.lcssa.i.i) #10
  %min_width.i.i = getelementptr inbounds %struct.drm_device, ptr %call1.i, i32 0, i32 30, i32 23
  %122 = ptrtoint ptr %min_width.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 8, ptr %min_width.i.i, align 4
  %min_height.i.i = getelementptr inbounds %struct.drm_device, ptr %call1.i, i32 0, i32 30, i32 24
  %123 = ptrtoint ptr %min_height.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 2, ptr %min_height.i.i, align 4
  %max_width.i.i = getelementptr inbounds %struct.drm_device, ptr %call1.i, i32 0, i32 30, i32 25
  %124 = ptrtoint ptr %max_width.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 8192, ptr %max_width.i.i, align 4
  %max_height.i.i = getelementptr inbounds %struct.drm_device, ptr %call1.i, i32 0, i32 30, i32 26
  %125 = ptrtoint ptr %max_height.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 8192, ptr %max_height.i.i, align 4
  %normalize_zpos.i.i = getelementptr inbounds %struct.drm_device, ptr %call1.i, i32 0, i32 30, i32 98
  %126 = ptrtoint ptr %normalize_zpos.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %normalize_zpos.i.i, align 1
  %funcs.i.i = getelementptr inbounds %struct.drm_device, ptr %call1.i, i32 0, i32 30, i32 27
  %127 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @omap_mode_config_funcs, ptr %funcs.i.i, align 4
  %helper_private.i.i = getelementptr inbounds %struct.drm_device, ptr %call1.i, i32 0, i32 30, i32 103
  %128 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @omap_mode_config_helper_funcs, ptr %helper_private.i.i, align 4
  tail call void @drm_mode_config_reset(ptr noundef %call1.i) #10
  %call190.i.i = tail call i32 @omap_drm_irq_install(ptr noundef %call1.i) #10
  br label %if.end30.i

omap_modeset_init.exit.i:                         ; preds = %if.end162.i.i.omap_modeset_init.exit.i_crit_edge, %do.end157.i.i, %if.end47.i.i.omap_modeset_init.exit.i_crit_edge
  %retval.8.i.in.i = phi ptr [ %113, %do.end157.i.i ], [ %call167.i.i, %if.end162.i.i.omap_modeset_init.exit.i_crit_edge ], [ %call48.i.i, %if.end47.i.i.omap_modeset_init.exit.i_crit_edge ]
  %retval.8.i.i = ptrtoint ptr %retval.8.i.in.i to i32
  %tobool24.not.i = icmp eq ptr %retval.8.i.in.i, null
  br i1 %tobool24.not.i, label %omap_modeset_init.exit.i.if.end30.i_crit_edge, label %omap_modeset_init.exit.i.do.end28.i_crit_edge

omap_modeset_init.exit.i.do.end28.i_crit_edge:    ; preds = %omap_modeset_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

omap_modeset_init.exit.i.if.end30.i_crit_edge:    ; preds = %omap_modeset_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

do.end28.i:                                       ; preds = %omap_modeset_init.exit.i.do.end28.i_crit_edge, %cleanup135.i.i, %if.then68.i.i.do.end28.i_crit_edge, %for.body59.i.i.do.end28.i_crit_edge, %do.end32.i.i, %do.end.i.i, %omap_connect_pipelines.exit.thread299.i.i, %if.end.i102.i.do.end28.i_crit_edge, %if.end22.i.do.end28.i_crit_edge
  %retval.8.i138.i = phi i32 [ %retval.8.i.i, %omap_modeset_init.exit.i.do.end28.i_crit_edge ], [ -22, %do.end32.i.i ], [ -517, %omap_connect_pipelines.exit.thread299.i.i ], [ -12, %if.end.i102.i.do.end28.i_crit_edge ], [ -517, %if.end22.i.do.end28.i_crit_edge ], [ -22, %cleanup135.i.i ], [ -22, %do.end.i.i ], [ %call72.i.i, %if.then68.i.i.do.end28.i_crit_edge ], [ -12, %for.body59.i.i.do.end28.i_crit_edge ]
  %129 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.9, i32 noundef %retval.8.i138.i) #13
  br label %err_free_overlays.i

if.end30.i:                                       ; preds = %omap_modeset_init.exit.i.if.end30.i_crit_edge, %omap_modeset_init.exit.thread139.i
  %num_pipes.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 6
  %131 = ptrtoint ptr %num_pipes.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_pipes.i, align 8
  %call31.i = tail call i32 @drm_vblank_init(ptr noundef %call1.i, i32 noundef %132) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end38.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.12) #13
  br label %err_cleanup_modeset.i

if.end38.i:                                       ; preds = %if.end30.i
  tail call void @omap_fbdev_init(ptr noundef %call1.i) #10
  tail call void @drm_kms_helper_poll_init(ptr noundef %call1.i) #10
  %135 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_private.i, align 4
  %num_pipes.i104.i = getelementptr inbounds %struct.omap_drm_private, ptr %136, i32 0, i32 6
  %137 = ptrtoint ptr %num_pipes.i104.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_pipes.i104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp13.not.i.i = icmp eq i32 %138, 0
  br i1 %cmp13.not.i.i, label %if.end38.i.omap_modeset_enable_external_hpd.exit.i_crit_edge, label %if.end38.i.for.body.i106.i_crit_edge

if.end38.i.for.body.i106.i_crit_edge:             ; preds = %if.end38.i
  br label %for.body.i106.i

if.end38.i.omap_modeset_enable_external_hpd.exit.i_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_enable_external_hpd.exit.i

for.body.i106.i:                                  ; preds = %cleanup.i.i.for.body.i106.i_crit_edge, %if.end38.i.for.body.i106.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i110.i, %cleanup.i.i.for.body.i106.i_crit_edge ], [ 0, %if.end38.i.for.body.i106.i_crit_edge ]
  %connector1.i.i = getelementptr %struct.omap_drm_private, ptr %136, i32 0, i32 7, i32 %i.014.i.i, i32 2
  %139 = ptrtoint ptr %connector1.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %connector1.i.i, align 4
  %tobool.not.i105.i = icmp eq ptr %140, null
  br i1 %tobool.not.i105.i, label %for.body.i106.i.cleanup.i.i_crit_edge, label %if.end.i109.i

for.body.i106.i.cleanup.i.i_crit_edge:            ; preds = %for.body.i106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end.i109.i:                                    ; preds = %for.body.i106.i
  %output.i107.i = getelementptr %struct.omap_drm_private, ptr %136, i32 0, i32 7, i32 %i.014.i.i, i32 3
  %141 = ptrtoint ptr %output.i107.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %output.i107.i, align 4
  %bridge.i108.i = getelementptr inbounds %struct.omap_dss_device, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %bridge.i108.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bridge.i108.i, align 4
  %tobool4.not.i.i = icmp eq ptr %144, null
  br i1 %tobool4.not.i.i, label %if.end.i109.i.cleanup.i.i_crit_edge, label %if.then5.i.i

if.end.i109.i.cleanup.i.i_crit_edge:              ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.then5.i.i:                                     ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_bridge_connector_enable_hpd(ptr noundef nonnull %140) #10
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then5.i.i, %if.end.i109.i.cleanup.i.i_crit_edge, %for.body.i106.i.cleanup.i.i_crit_edge
  %inc.i110.i = add nuw i32 %i.014.i.i, 1
  %145 = ptrtoint ptr %num_pipes.i104.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_pipes.i104.i, align 4
  %cmp.i111.i = icmp ult i32 %inc.i110.i, %146
  br i1 %cmp.i111.i, label %cleanup.i.i.for.body.i106.i_crit_edge, label %cleanup.i.i.omap_modeset_enable_external_hpd.exit.i_crit_edge

cleanup.i.i.omap_modeset_enable_external_hpd.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_enable_external_hpd.exit.i

cleanup.i.i.for.body.i106.i_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i106.i

omap_modeset_enable_external_hpd.exit.i:          ; preds = %cleanup.i.i.omap_modeset_enable_external_hpd.exit.i_crit_edge, %if.end38.i.omap_modeset_enable_external_hpd.exit.i_crit_edge
  %call39.i = tail call i32 @drm_dev_register(ptr noundef %call1.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %omap_modeset_enable_external_hpd.exit.i.cleanup_crit_edge, label %err_cleanup_helpers.i

omap_modeset_enable_external_hpd.exit.i.cleanup_crit_edge: ; preds = %omap_modeset_enable_external_hpd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_cleanup_helpers.i:                            ; preds = %omap_modeset_enable_external_hpd.exit.i
  %147 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev_private.i, align 4
  %num_pipes.i113.i = getelementptr inbounds %struct.omap_drm_private, ptr %148, i32 0, i32 6
  %149 = ptrtoint ptr %num_pipes.i113.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %num_pipes.i113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp13.not.i114.i = icmp eq i32 %150, 0
  br i1 %cmp13.not.i114.i, label %err_cleanup_helpers.i.omap_modeset_disable_external_hpd.exit.i_crit_edge, label %err_cleanup_helpers.i.for.body.i118.i_crit_edge

err_cleanup_helpers.i.for.body.i118.i_crit_edge:  ; preds = %err_cleanup_helpers.i
  br label %for.body.i118.i

err_cleanup_helpers.i.omap_modeset_disable_external_hpd.exit.i_crit_edge: ; preds = %err_cleanup_helpers.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_disable_external_hpd.exit.i

for.body.i118.i:                                  ; preds = %cleanup.i126.i.for.body.i118.i_crit_edge, %err_cleanup_helpers.i.for.body.i118.i_crit_edge
  %i.014.i115.i = phi i32 [ %inc.i124.i, %cleanup.i126.i.for.body.i118.i_crit_edge ], [ 0, %err_cleanup_helpers.i.for.body.i118.i_crit_edge ]
  %connector1.i116.i = getelementptr %struct.omap_drm_private, ptr %148, i32 0, i32 7, i32 %i.014.i115.i, i32 2
  %151 = ptrtoint ptr %connector1.i116.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %connector1.i116.i, align 4
  %tobool.not.i117.i = icmp eq ptr %152, null
  br i1 %tobool.not.i117.i, label %for.body.i118.i.cleanup.i126.i_crit_edge, label %if.end.i122.i

for.body.i118.i.cleanup.i126.i_crit_edge:         ; preds = %for.body.i118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i126.i

if.end.i122.i:                                    ; preds = %for.body.i118.i
  %output.i119.i = getelementptr %struct.omap_drm_private, ptr %148, i32 0, i32 7, i32 %i.014.i115.i, i32 3
  %153 = ptrtoint ptr %output.i119.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %output.i119.i, align 4
  %bridge.i120.i = getelementptr inbounds %struct.omap_dss_device, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %bridge.i120.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bridge.i120.i, align 4
  %tobool4.not.i121.i = icmp eq ptr %156, null
  br i1 %tobool4.not.i121.i, label %if.end.i122.i.cleanup.i126.i_crit_edge, label %if.then5.i123.i

if.end.i122.i.cleanup.i126.i_crit_edge:           ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i126.i

if.then5.i123.i:                                  ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_bridge_connector_disable_hpd(ptr noundef nonnull %152) #10
  br label %cleanup.i126.i

cleanup.i126.i:                                   ; preds = %if.then5.i123.i, %if.end.i122.i.cleanup.i126.i_crit_edge, %for.body.i118.i.cleanup.i126.i_crit_edge
  %inc.i124.i = add nuw i32 %i.014.i115.i, 1
  %157 = ptrtoint ptr %num_pipes.i113.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_pipes.i113.i, align 4
  %cmp.i125.i = icmp ult i32 %inc.i124.i, %158
  br i1 %cmp.i125.i, label %cleanup.i126.i.for.body.i118.i_crit_edge, label %cleanup.i126.i.omap_modeset_disable_external_hpd.exit.i_crit_edge

cleanup.i126.i.omap_modeset_disable_external_hpd.exit.i_crit_edge: ; preds = %cleanup.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_disable_external_hpd.exit.i

cleanup.i126.i.for.body.i118.i_crit_edge:         ; preds = %cleanup.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i118.i

omap_modeset_disable_external_hpd.exit.i:         ; preds = %cleanup.i126.i.omap_modeset_disable_external_hpd.exit.i_crit_edge, %err_cleanup_helpers.i.omap_modeset_disable_external_hpd.exit.i_crit_edge
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call1.i) #10
  tail call void @omap_fbdev_fini(ptr noundef %call1.i) #10
  br label %err_cleanup_modeset.i

err_cleanup_modeset.i:                            ; preds = %omap_modeset_disable_external_hpd.exit.i, %do.end36.i
  %ret.0.i = phi i32 [ %call31.i, %do.end36.i ], [ %call39.i, %omap_modeset_disable_external_hpd.exit.i ]
  tail call void @omap_drm_irq_uninstall(ptr noundef %call1.i) #10
  tail call void @drm_mode_config_cleanup(ptr noundef %call1.i) #10
  br label %err_free_overlays.i

err_free_overlays.i:                              ; preds = %err_cleanup_modeset.i, %do.end28.i
  %ret.1.i = phi i32 [ %retval.8.i138.i, %do.end28.i ], [ %ret.0.i, %err_cleanup_modeset.i ]
  tail call void @omap_hwoverlays_destroy(ptr noundef nonnull %call7.i.i) #10
  br label %err_free_priv_obj.i

err_free_priv_obj.i:                              ; preds = %err_free_overlays.i, %if.end18.i.err_free_priv_obj.i_crit_edge
  %ret.2.i = phi i32 [ %call19.i, %if.end18.i.err_free_priv_obj.i_crit_edge ], [ %ret.1.i, %err_free_overlays.i ]
  %glob_obj.i127.i = getelementptr inbounds %struct.omap_drm_private, ptr %call7.i.i, i32 0, i32 13
  tail call void @drm_atomic_private_obj_fini(ptr noundef %glob_obj.i127.i) #10
  br label %err_gem_deinit.i

err_gem_deinit.i:                                 ; preds = %err_free_priv_obj.i, %cond.end.i.err_gem_deinit.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %err_free_priv_obj.i ], [ -12, %cond.end.i.err_gem_deinit.i_crit_edge ]
  tail call void @drm_mode_config_cleanup(ptr noundef %call1.i) #10
  tail call void @omap_gem_deinit(ptr noundef %call1.i) #10
  %159 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %160) #10
  %161 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev_private.i, align 4
  %num_pipes.i129.i = getelementptr inbounds %struct.omap_drm_private, ptr %162, i32 0, i32 6
  %163 = ptrtoint ptr %num_pipes.i129.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_pipes.i129.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp11.not.i.i = icmp eq i32 %164, 0
  br i1 %cmp11.not.i.i, label %err_gem_deinit.i.omap_disconnect_pipelines.exit.i_crit_edge, label %err_gem_deinit.i.for.body.i133.i_crit_edge

err_gem_deinit.i.for.body.i133.i_crit_edge:       ; preds = %err_gem_deinit.i
  br label %for.body.i133.i

err_gem_deinit.i.omap_disconnect_pipelines.exit.i_crit_edge: ; preds = %err_gem_deinit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_disconnect_pipelines.exit.i

for.body.i133.i:                                  ; preds = %for.body.i133.i.for.body.i133.i_crit_edge, %err_gem_deinit.i.for.body.i133.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i131.i, %for.body.i133.i.for.body.i133.i_crit_edge ], [ 0, %err_gem_deinit.i.for.body.i133.i_crit_edge ]
  %output.i130.i = getelementptr %struct.omap_drm_private, ptr %162, i32 0, i32 7, i32 %i.012.i.i, i32 3
  %165 = ptrtoint ptr %output.i130.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %output.i130.i, align 4
  tail call void @omapdss_device_disconnect(ptr noundef null, ptr noundef %166) #10
  %167 = ptrtoint ptr %output.i130.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %output.i130.i, align 4
  tail call void @omapdss_device_put(ptr noundef %168) #10
  %169 = ptrtoint ptr %output.i130.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %output.i130.i, align 4
  %inc.i131.i = add nuw i32 %i.012.i.i, 1
  %170 = ptrtoint ptr %num_pipes.i129.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_pipes.i129.i, align 4
  %cmp.i132.i = icmp ult i32 %inc.i131.i, %171
  br i1 %cmp.i132.i, label %for.body.i133.i.for.body.i133.i_crit_edge, label %for.body.i133.i.omap_disconnect_pipelines.exit.i_crit_edge

for.body.i133.i.omap_disconnect_pipelines.exit.i_crit_edge: ; preds = %for.body.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_disconnect_pipelines.exit.i

for.body.i133.i.for.body.i133.i_crit_edge:        ; preds = %for.body.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i133.i

omap_disconnect_pipelines.exit.i:                 ; preds = %for.body.i133.i.omap_disconnect_pipelines.exit.i_crit_edge, %err_gem_deinit.i.omap_disconnect_pipelines.exit.i_crit_edge
  %channels.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %162, i32 0, i32 8
  %172 = call ptr @memset(ptr %channels.i.i, i32 0, i32 32)
  %173 = ptrtoint ptr %num_pipes.i129.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %num_pipes.i129.i, align 4
  tail call void @drm_dev_put(ptr noundef %call1.i) #10
  br label %omapdrm_init.exit

omapdrm_init.exit:                                ; preds = %omap_disconnect_pipelines.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ %ret.3.i, %omap_disconnect_pipelines.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then8, label %omapdrm_init.exit.cleanup_crit_edge

omapdrm_init.exit.cleanup_crit_edge:              ; preds = %omapdrm_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %omapdrm_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %omapdrm_init.exit.cleanup_crit_edge, %omap_modeset_enable_external_hpd.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i, %if.then8 ], [ %retval.0.i, %omapdrm_init.exit.cleanup_crit_edge ], [ 0, %omap_modeset_enable_external_hpd.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdev_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.44) #10
  tail call void @drm_dev_unregister(ptr noundef %3) #10
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i.i, align 4
  %num_pipes.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %num_pipes.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pipes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp13.not.i.i, label %entry.omap_modeset_disable_external_hpd.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.omap_modeset_disable_external_hpd.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_disable_external_hpd.exit.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %connector1.i.i = getelementptr %struct.omap_drm_private, ptr %5, i32 0, i32 7, i32 %i.014.i.i, i32 2
  %8 = ptrtoint ptr %connector1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %output.i.i = getelementptr %struct.omap_drm_private, ptr %5, i32 0, i32 7, i32 %i.014.i.i, i32 3
  %10 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %output.i.i, align 4
  %bridge.i.i = getelementptr inbounds %struct.omap_dss_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_bridge_connector_disable_hpd(ptr noundef nonnull %9) #10
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %14 = ptrtoint ptr %num_pipes.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pipes.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %15
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.omap_modeset_disable_external_hpd.exit.i_crit_edge

cleanup.i.i.omap_modeset_disable_external_hpd.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_modeset_disable_external_hpd.exit.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

omap_modeset_disable_external_hpd.exit.i:         ; preds = %cleanup.i.i.omap_modeset_disable_external_hpd.exit.i_crit_edge, %entry.omap_modeset_disable_external_hpd.exit.i_crit_edge
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #10
  tail call void @omap_fbdev_fini(ptr noundef %3) #10
  tail call void @drm_atomic_helper_shutdown(ptr noundef %3) #10
  tail call void @omap_drm_irq_uninstall(ptr noundef %3) #10
  tail call void @drm_mode_config_cleanup(ptr noundef %3) #10
  tail call void @omap_hwoverlays_destroy(ptr noundef %1) #10
  %glob_obj.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 13
  tail call void @drm_atomic_private_obj_fini(ptr noundef %glob_obj.i.i) #10
  tail call void @drm_mode_config_cleanup(ptr noundef %3) #10
  tail call void @omap_gem_deinit(ptr noundef %3) #10
  %wq.i = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wq.i, align 4
  tail call void @destroy_workqueue(ptr noundef %17) #10
  %18 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i.i, align 4
  %num_pipes.i15.i = getelementptr inbounds %struct.omap_drm_private, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %num_pipes.i15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_pipes.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp11.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp11.not.i.i, label %omap_modeset_disable_external_hpd.exit.i.omapdrm_cleanup.exit_crit_edge, label %omap_modeset_disable_external_hpd.exit.i.for.body.i19.i_crit_edge

omap_modeset_disable_external_hpd.exit.i.for.body.i19.i_crit_edge: ; preds = %omap_modeset_disable_external_hpd.exit.i
  br label %for.body.i19.i

omap_modeset_disable_external_hpd.exit.i.omapdrm_cleanup.exit_crit_edge: ; preds = %omap_modeset_disable_external_hpd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omapdrm_cleanup.exit

for.body.i19.i:                                   ; preds = %for.body.i19.i.for.body.i19.i_crit_edge, %omap_modeset_disable_external_hpd.exit.i.for.body.i19.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i17.i, %for.body.i19.i.for.body.i19.i_crit_edge ], [ 0, %omap_modeset_disable_external_hpd.exit.i.for.body.i19.i_crit_edge ]
  %output.i16.i = getelementptr %struct.omap_drm_private, ptr %19, i32 0, i32 7, i32 %i.012.i.i, i32 3
  %22 = ptrtoint ptr %output.i16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %output.i16.i, align 4
  tail call void @omapdss_device_disconnect(ptr noundef null, ptr noundef %23) #10
  %24 = ptrtoint ptr %output.i16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %output.i16.i, align 4
  tail call void @omapdss_device_put(ptr noundef %25) #10
  %26 = ptrtoint ptr %output.i16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %output.i16.i, align 4
  %inc.i17.i = add nuw i32 %i.012.i.i, 1
  %27 = ptrtoint ptr %num_pipes.i15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_pipes.i15.i, align 4
  %cmp.i18.i = icmp ult i32 %inc.i17.i, %28
  br i1 %cmp.i18.i, label %for.body.i19.i.for.body.i19.i_crit_edge, label %for.body.i19.i.omapdrm_cleanup.exit_crit_edge

for.body.i19.i.omapdrm_cleanup.exit_crit_edge:    ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omapdrm_cleanup.exit

for.body.i19.i.for.body.i19.i_crit_edge:          ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i19.i

omapdrm_cleanup.exit:                             ; preds = %for.body.i19.i.omapdrm_cleanup.exit_crit_edge, %omap_modeset_disable_external_hpd.exit.i.omapdrm_cleanup.exit_crit_edge
  %channels.i.i = getelementptr inbounds %struct.omap_drm_private, ptr %19, i32 0, i32 8
  %29 = call ptr @memset(ptr %channels.i.i, i32 0, i32 32)
  %30 = ptrtoint ptr %num_pipes.i15.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %num_pipes.i15.i, align 4
  tail call void @drm_dev_put(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dispc_get_dispc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_get_memory_bandwidth_limit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_gem_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwoverlays_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_fbdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_fbdev_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_hwoverlays_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_gem_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_open(ptr noundef %dev, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver_priv, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef %dev, ptr noundef %file) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_lastclose(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_debugfs_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_gem_prime_import(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_get_param(ptr noundef %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, ptr noundef %dev, i64 noundef %3) #10
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %5)
  %cond = icmp eq i64 %5, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %omaprev = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %omaprev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %omaprev, align 4
  %conv = zext i32 %7 to i64
  %value = getelementptr inbounds %struct.drm_omap_param, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %value, align 8
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i64 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_invalid_op(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_gem_new(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.drm_omap_gem_new, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 16777215
  %handle = getelementptr inbounds %struct.drm_omap_gem_new, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %data, align 4
  %3 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = tail call i32 @omap_gem_new_handle(ptr noundef %dev, ptr noundef %file_priv, [1 x i32] %3, i32 noundef %and, ptr noundef %handle) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_noop(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_gem_info(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %call1 = tail call i32 @omap_gem_mmap_size(ptr noundef nonnull %call) #10
  %size = getelementptr inbounds %struct.drm_omap_gem_info, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %size, align 8
  %call2 = tail call i64 @omap_gem_mmap_offset(ptr noundef nonnull %call) #10
  %offset = getelementptr inbounds %struct.drm_omap_gem_info, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call2, ptr %offset, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !133

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_new_handle(ptr noundef, ptr noundef, [1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_mmap_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @omap_gem_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_global_duplicate_state(ptr noundef %obj) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 36, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_global_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_get_num_ovls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_get_num_mgrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omapdss_stack_is_ready() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_plane_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_encoder_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_compare_pipelines(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %alias_id = getelementptr inbounds %struct.omap_drm_pipeline, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %alias_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alias_id, align 4
  %alias_id1 = getelementptr inbounds %struct.omap_drm_pipeline, ptr %b, i32 0, i32 4
  %2 = ptrtoint ptr %alias_id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alias_id1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ult i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_crtc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_drm_irq_install(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omapdss_device_next_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omapdss_device_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omapdss_device_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_framebuffer_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_atomic_check(ptr noundef %dev, ptr noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_atomic_helper_check(ptr noundef %dev, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %normalize_zpos = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 98
  %0 = ptrtoint ptr %normalize_zpos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %normalize_zpos, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %num_total_plane.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 17
  %2 = ptrtoint ptr %num_total_plane.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_total_plane.i, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #10
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.then2.cleanup_crit_edge, label %if.end7.i.i, !prof !132

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.then2
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  %dev1.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %num_crtc135.i = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 19
  %9 = ptrtoint ptr %num_crtc135.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_crtc135.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp136.i = icmp sgt i32 %10, 0
  br i1 %cmp136.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.cleanup.sink.split_crit_edge

for.cond.preheader.i.cleanup.sink.split_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc64.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %c.0137.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc65.i, %for.inc64.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtcs.i, align 4
  %arrayidx.i = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %c.0137.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 8
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc64.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc64.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc64.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %old_state9.i = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %c.0137.i, i32 2
  %15 = ptrtoint ptr %old_state9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %old_state9.i, align 8
  %new_state12.i = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %c.0137.i, i32 3
  %17 = ptrtoint ptr %new_state12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %new_state12.i, align 4
  %plane_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %plane_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %plane_mask.i, align 4
  %plane_mask14.i = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %plane_mask14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %plane_mask14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp15.i = icmp eq i32 %20, %22
  br i1 %cmp15.i, label %land.lhs.true16.i, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %zpos_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %zpos_changed.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %zpos_changed.i, align 2
  %24 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %bf.cast.not.i = icmp eq i8 %24, 0
  br i1 %bf.cast.not.i, label %land.lhs.true16.i.for.inc64.i_crit_edge, label %land.lhs.true16.i.if.end18.i_crit_edge

land.lhs.true16.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

land.lhs.true16.i.for.inc64.i_crit_edge:          ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc64.i

if.end18.i:                                       ; preds = %land.lhs.true16.i.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge
  %25 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn126.i = load ptr, ptr %plane_list.i, align 4
  %cmp23.not128.i = icmp eq ptr %.pn126.i, %plane_list.i
  br i1 %cmp23.not128.i, label %for.end.thread.i, label %for.body24.lr.ph.i

for.end.thread.i:                                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sort(ptr noundef nonnull %call8.i.i, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @drm_atomic_state_normalized_zpos_cmp, ptr noundef null) #10
  br label %for.end59.i

for.body24.lr.ph.i:                               ; preds = %if.end18.i
  %state30.i = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 20
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.inc.i.for.body24.i_crit_edge, %for.body24.lr.ph.i
  %.pn130.i = phi ptr [ %.pn126.i, %for.body24.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body24.i_crit_edge ]
  %n.0129.i = phi i32 [ 0, %for.body24.lr.ph.i ], [ %n.2.i, %for.inc.i.for.body24.i_crit_edge ]
  %26 = ptrtoint ptr %plane_mask14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %plane_mask14.i, align 4
  %index.i.i.i = getelementptr i8, ptr %.pn130.i, i32 480
  %28 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %29
  %and.i = and i32 %shl.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %for.body24.i.for.inc.i_crit_edge, label %if.else29.i

for.body24.i.for.inc.i_crit_edge:                 ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else29.i:                                      ; preds = %for.body24.i
  %plane.0131.i = getelementptr i8, ptr %.pn130.i, i32 -4
  %30 = ptrtoint ptr %state30.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state30.i, align 4
  %call31.i = tail call ptr @drm_atomic_get_plane_state(ptr noundef %31, ptr noundef %plane.0131.i) #10
  %cmp.i.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %omap_atomic_update_normalize_zpos.exit, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc36.i = add i32 %n.0129.i, 1
  %arrayidx37.i = getelementptr ptr, ptr %call8.i.i, i32 %n.0129.i
  %32 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call31.i, ptr %arrayidx37.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.thread.i, %for.body24.i.for.inc.i_crit_edge
  %n.2.i = phi i32 [ %n.0129.i, %for.body24.i.for.inc.i_crit_edge ], [ %inc36.i, %cleanup.thread.i ]
  %33 = ptrtoint ptr %.pn130.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i = load ptr, ptr %.pn130.i, align 4
  %cmp23.not.i = icmp eq ptr %.pn.i, %plane_list.i
  br i1 %cmp23.not.i, label %for.end.i, label %for.inc.i.for.body24.i_crit_edge

for.inc.i.for.body24.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24.i

for.end.i:                                        ; preds = %for.inc.i
  tail call void @sort(ptr noundef nonnull %call8.i.i, i32 noundef %n.2.i, i32 noundef 4, ptr noundef nonnull @drm_atomic_state_normalized_zpos_cmp, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.2.i)
  %cmp45132.i = icmp sgt i32 %n.2.i, 0
  br i1 %cmp45132.i, label %for.end.i.for.body46.i_crit_edge, label %for.end.i.for.end59.i_crit_edge

for.end.i.for.end59.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end59.i

for.end.i.for.body46.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %for.end.i.for.body46.i_crit_edge
  %inc.0134.i = phi i32 [ %spec.select.i, %for.body46.i.for.body46.i_crit_edge ], [ 0, %for.end.i.for.body46.i_crit_edge ]
  %i.0133.i = phi i32 [ %inc58.i, %for.body46.i.for.body46.i_crit_edge ], [ 0, %for.end.i.for.body46.i_crit_edge ]
  %arrayidx47.i = getelementptr ptr, ptr %call8.i.i, i32 %i.0133.i
  %34 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx47.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %add.i = add i32 %i.0133.i, %inc.0134.i
  %normalized_zpos.i = getelementptr inbounds %struct.drm_plane_state, ptr %35, i32 0, i32 16
  %38 = ptrtoint ptr %normalized_zpos.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i, ptr %normalized_zpos.i, align 4
  %base.i = getelementptr inbounds %struct.drm_plane, ptr %37, i32 0, i32 4
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base.i, align 4
  %name.i = getelementptr inbounds %struct.drm_plane, ptr %37, i32 0, i32 2
  %41 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i, align 4
  %43 = load ptr, ptr %arrayidx47.i, align 4
  %normalized_zpos51.i = getelementptr inbounds %struct.drm_plane_state, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %normalized_zpos51.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %normalized_zpos51.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.41, i32 noundef %40, ptr noundef %42, i32 noundef %45) #10
  %46 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx47.i, align 4
  %call53.i = tail call zeroext i1 @is_omap_plane_dual_overlay(ptr noundef %47) #10
  %inc55.i = zext i1 %call53.i to i32
  %spec.select.i = add i32 %inc.0134.i, %inc55.i
  %inc58.i = add nuw nsw i32 %i.0133.i, 1
  %exitcond.not.i = icmp eq i32 %inc58.i, %n.2.i
  br i1 %exitcond.not.i, label %for.body46.i.for.end59.i_crit_edge, label %for.body46.i.for.body46.i_crit_edge

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46.i

for.body46.i.for.end59.i_crit_edge:               ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end59.i

for.end59.i:                                      ; preds = %for.body46.i.for.end59.i_crit_edge, %for.end.i.for.end59.i_crit_edge, %for.end.thread.i
  %zpos_changed60.i = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 3
  %48 = ptrtoint ptr %zpos_changed60.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load61.i = load i8, ptr %zpos_changed60.i, align 2
  %bf.set.i = or i8 %bf.load61.i, 8
  store i8 %bf.set.i, ptr %zpos_changed60.i, align 2
  br label %for.inc64.i

for.inc64.i:                                      ; preds = %for.end59.i, %land.lhs.true16.i.for.inc64.i_crit_edge, %for.body.i.for.inc64.i_crit_edge
  %inc65.i = add nuw nsw i32 %c.0137.i, 1
  %49 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1.i, align 4
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 30, i32 19
  %51 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_crtc.i, align 4
  %cmp.i = icmp slt i32 %inc65.i, %52
  br i1 %cmp.i, label %for.inc64.i.for.body.i_crit_edge, label %for.inc64.i.cleanup.sink.split_crit_edge

for.inc64.i.cleanup.sink.split_crit_edge:         ; preds = %for.inc64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.inc64.i.for.body.i_crit_edge:                 ; preds = %for.inc64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

omap_atomic_update_normalize_zpos.exit:           ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %call31.i to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %omap_atomic_update_normalize_zpos.exit, %for.inc64.i.cleanup.sink.split_crit_edge, %for.cond.preheader.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %53, %omap_atomic_update_normalize_zpos.exit ], [ 0, %for.cond.preheader.i.cleanup.sink.split_crit_edge ], [ 0, %for.inc64.i.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.then2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @drm_atomic_state_normalized_zpos_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b, align 4
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %normalized_zpos, align 4
  %normalized_zpos1 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %normalized_zpos1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %normalized_zpos1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %5, %7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %base = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %base5 = getelementptr inbounds %struct.drm_plane, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %base5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base5, align 4
  %sub7 = sub i32 %11, %15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub7, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_omap_plane_dual_overlay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_atomic_commit_tail(ptr noundef %old_state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %call = tail call zeroext i1 @dma_fence_begin_signalling() #10
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dispc, align 4
  %call2 = tail call i32 @dispc_runtime_get(ptr noundef %5) #10
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %1, ptr noundef %old_state) #10
  %omaprev = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %omaprev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %omaprev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13360, i32 %7)
  %cmp.not = icmp eq i32 %7, 13360
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %old_state) #10
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %num_crtc24.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 19
  %10 = ptrtoint ptr %num_crtc24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_crtc24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp25.not.i = icmp eq i32 %11, 0
  br i1 %cmp25.not.i, label %if.then.omap_atomic_wait_for_completion.exit_crit_edge, label %for.body.lr.ph.i

if.then.omap_atomic_wait_for_completion.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_atomic_wait_for_completion.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 4
  %dev11.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtcs.i, align 4
  %arrayidx.i = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %i.026.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %i.026.i, i32 3
  %16 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %new_state.i, align 4
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %active.i, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not.i = icmp eq i8 %19, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.end.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %land.lhs.true.i
  %call.i = tail call i32 @omap_crtc_wait_pending(ptr noundef nonnull %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %do.end.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev11.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.42, i32 noundef %i.026.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %if.end.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.026.i, 1
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 30, i32 19
  %24 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_crtc.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.omap_atomic_wait_for_completion.exit_crit_edge

for.inc.i.omap_atomic_wait_for_completion.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_atomic_wait_for_completion.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

omap_atomic_wait_for_completion.exit:             ; preds = %for.inc.i.omap_atomic_wait_for_completion.exit_crit_edge, %if.then.omap_atomic_wait_for_completion.exit_crit_edge
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %old_state, i32 noundef 0) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %old_state, i32 noundef 0) #10
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %old_state) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %omap_atomic_wait_for_completion.exit
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %old_state) #10
  tail call void @dma_fence_end_signalling(i1 noundef zeroext %call) #10
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  %num_crtc24.i24 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 30, i32 19
  %28 = ptrtoint ptr %num_crtc24.i24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_crtc24.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp25.not.i25 = icmp eq i32 %29, 0
  br i1 %cmp25.not.i25, label %if.end.omap_atomic_wait_for_completion.exit45_crit_edge, label %for.body.lr.ph.i28

if.end.omap_atomic_wait_for_completion.exit45_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_atomic_wait_for_completion.exit45

for.body.lr.ph.i28:                               ; preds = %if.end
  %crtcs.i26 = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 4
  %dev11.i27 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  br label %for.body.i32

for.body.i32:                                     ; preds = %for.inc.i44.for.body.i32_crit_edge, %for.body.lr.ph.i28
  %i.026.i29 = phi i32 [ 0, %for.body.lr.ph.i28 ], [ %inc.i41, %for.inc.i44.for.body.i32_crit_edge ]
  %30 = ptrtoint ptr %crtcs.i26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crtcs.i26, align 4
  %arrayidx.i30 = getelementptr %struct.__drm_crtcs_state, ptr %31, i32 %i.026.i29
  %32 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i30, align 8
  %tobool.not.i31 = icmp eq ptr %33, null
  br i1 %tobool.not.i31, label %for.body.i32.for.inc.i44_crit_edge, label %land.lhs.true.i36

for.body.i32.for.inc.i44_crit_edge:               ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i44

land.lhs.true.i36:                                ; preds = %for.body.i32
  %new_state.i33 = getelementptr %struct.__drm_crtcs_state, ptr %31, i32 %i.026.i29, i32 3
  %34 = ptrtoint ptr %new_state.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %new_state.i33, align 4
  %active.i34 = getelementptr inbounds %struct.drm_crtc_state, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %active.i34 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %active.i34, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool7.not.i35 = icmp eq i8 %37, 0
  br i1 %tobool7.not.i35, label %land.lhs.true.i36.for.inc.i44_crit_edge, label %if.end.i39

land.lhs.true.i36.for.inc.i44_crit_edge:          ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i44

if.end.i39:                                       ; preds = %land.lhs.true.i36
  %call.i37 = tail call i32 @omap_crtc_wait_pending(ptr noundef nonnull %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool9.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool9.not.i38, label %do.end.i40, label %if.end.i39.for.inc.i44_crit_edge

if.end.i39.for.inc.i44_crit_edge:                 ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i44

do.end.i40:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %dev11.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev11.i27, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.42, i32 noundef %i.026.i29) #13
  br label %for.inc.i44

for.inc.i44:                                      ; preds = %do.end.i40, %if.end.i39.for.inc.i44_crit_edge, %land.lhs.true.i36.for.inc.i44_crit_edge, %for.body.i32.for.inc.i44_crit_edge
  %inc.i41 = add nuw i32 %i.026.i29, 1
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 4
  %num_crtc.i42 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 30, i32 19
  %42 = ptrtoint ptr %num_crtc.i42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_crtc.i42, align 4
  %cmp.i43 = icmp ult i32 %inc.i41, %43
  br i1 %cmp.i43, label %for.inc.i44.for.body.i32_crit_edge, label %for.inc.i44.omap_atomic_wait_for_completion.exit45_crit_edge

for.inc.i44.omap_atomic_wait_for_completion.exit45_crit_edge: ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_atomic_wait_for_completion.exit45

for.inc.i44.for.body.i32_crit_edge:               ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i32

omap_atomic_wait_for_completion.exit45:           ; preds = %for.inc.i44.omap_atomic_wait_for_completion.exit45_crit_edge, %if.end.omap_atomic_wait_for_completion.exit45_crit_edge
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %1, ptr noundef %old_state) #10
  %44 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dispc, align 4
  tail call void @dispc_runtime_put(ptr noundef %45) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_begin_signalling() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_end_signalling(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_crtc_wait_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_connector_enable_hpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_connector_disable_hpd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_drm_irq_uninstall(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_disconnect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_drm_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %3) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_drm_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %3) #10
  %call2 = tail call i32 @omap_gem_resume(ptr noundef %3) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_dss_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !100, !101, !102, !103, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 934, i32 2}
!2 = !{ptr @__initcall__kmod_omapdrm__319_941_omap_drm_init6, !3, !"__initcall__kmod_omapdrm__319_941_omap_drm_init6", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 941, i32 1}
!4 = !{ptr @__exitcall_omap_drm_fini, !5, !"__exitcall_omap_drm_fini", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 942, i32 1}
!6 = !{ptr @__UNIQUE_ID_author320, !7, !"__UNIQUE_ID_author320", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 944, i32 1}
!8 = !{ptr @__UNIQUE_ID_author321, !9, !"__UNIQUE_ID_author321", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 945, i32 1}
!10 = !{ptr @__UNIQUE_ID_description322, !11, !"__UNIQUE_ID_description322", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 946, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias323, !13, !"__UNIQUE_ID_alias323", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 947, i32 1}
!14 = !{ptr @__UNIQUE_ID_file324, !15, !"__UNIQUE_ID_file324", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 948, i32 1}
!16 = !{ptr @__UNIQUE_ID_license325, !15, !"__UNIQUE_ID_license325", i1 false, i1 false}
!17 = !{ptr @drivers, !18, !"drivers", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 908, i32 39}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 901, i32 11}
!21 = !{ptr @pdev, !22, !"pdev", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 899, i32 31}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 849, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pdev_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @pdev_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 728, i32 2}
!33 = !{ptr @omapdrm_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 748, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 768, i32 3}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @omapdrm_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @omapdrm_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 775, i32 3}
!43 = !{ptr @omapdrm_init._entry.11, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @omapdrm_init._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 706, i32 10}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 707, i32 10}
!49 = !{ptr @omap_drm_driver, !50, !"omap_drm_driver", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 689, i32 32}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 672, i32 2}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 648, i32 2}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 650, i32 2}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 652, i32 2}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 655, i32 2}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 658, i32 2}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 660, i32 2}
!65 = !{ptr @ioctls, !66, !"ioctls", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 647, i32 36}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 597, i32 2}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 604, i32 3}
!71 = !{ptr @omapdriver_fops, !72, !"omapdriver_fops", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 677, i32 37}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 714, i32 14}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 715, i32 14}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 716, i32 14}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 717, i32 14}
!81 = !{ptr @omapdrm_soc_devices, !82, !"omapdrm_soc_devices", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 713, i32 42}
!83 = !{ptr @omap_global_state_funcs, !84, !"omap_global_state_funcs", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 279, i32 45}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 423, i32 3}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @omap_modeset_init._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @omap_modeset_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 497, i32 4}
!92 = !{ptr @omap_modeset_init._entry.32, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @omap_modeset_init._entry_ptr.34, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 513, i32 2}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 370, i32 56}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 334, i32 4}
!100 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @omap_connect_pipelines._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @omap_connect_pipelines._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 391, i32 38}
!106 = !{ptr @omap_mode_config_funcs, !107, !"omap_mode_config_funcs", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 220, i32 43}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 183, i32 4}
!110 = !{ptr @omap_mode_config_helper_funcs, !111, !"omap_mode_config_helper_funcs", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 216, i32 50}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 62, i32 4}
!114 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @omap_atomic_wait_for_completion._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @omap_atomic_wait_for_completion._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 818, i32 2}
!119 = !{ptr @omapdrm_pm_ops, !120, !"omapdrm_pm_ops", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 897, i32 8}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/omapdrm/omap_drv.c", i32 917, i32 2}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2148619400}
!135 = !{i64 2148533864, i64 2148533896, i64 2148533925, i64 2148533959, i64 2148533990, i64 2148534013}
!136 = !{i64 2149641453}
!137 = !{i8 0, i8 2}
