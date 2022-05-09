; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ingenic/ingenic-drm-drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/ingenic/ingenic-drm-drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_private_state_funcs = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.jz_soc_info = type { i8, i8, i8, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ingenic_drm = type { %struct.drm_device, %struct.drm_plane, %struct.drm_plane, ptr, %struct.drm_crtc, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, %struct.mutex, i8, %struct.notifier_block, %struct.drm_private_obj }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ingenic_dma_hwdesc = type { i32, i32, i32, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.ingenic_drm_bridge = type { %struct.drm_encoder, %struct.drm_bridge, ptr, %struct.drm_bus_cfg }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_bus_cfg = type { i32, i32 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.ingenic_drm_private_state = type { %struct.drm_private_state, i8 }
%struct.drm_private_state = type { ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.87, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.87 = type { [4 x i8] }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }
%struct.ingenic_dma_hwdescs = type { [3 x %struct.ingenic_dma_hwdesc], [256 x i16] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_bridge_state = type { %struct.drm_private_state, ptr, %struct.drm_bus_cfg, %struct.drm_bus_cfg }

@__initcall__kmod_ingenic_drm__321_1498_ingenic_drm_init6 = internal global ptr @ingenic_drm_init, section ".initcall6.init", align 4
@__exitcall_ingenic_drm_exit = internal global ptr @ingenic_drm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author322 = internal constant [56 x i8] c"ingenic_drm.author=Paul Cercueil <paul@crapouillou.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [57 x i8] c"ingenic_drm.description=DRM driver for the Ingenic SoCs\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [53 x i8] c"ingenic_drm.file=drivers/gpu/drm/ingenic/ingenic-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [27 x i8] c"ingenic_drm.license=GPL v2\00", section ".modinfo", align 1
@ingenic_ipu_driver_ptr = external dso_local local_unnamed_addr global ptr, align 4
@ingenic_drm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ingenic_drm_probe, ptr @ingenic_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ingenic_drm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ingenic-drm\00", [20 x i8] zeroinitializer }, align 32
@ingenic_drm_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4725b_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4770_soc_info }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ingenic_drm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ingenic_drm_suspend, ptr @ingenic_drm_resume, ptr @ingenic_drm_suspend, ptr @ingenic_drm_resume, ptr @ingenic_drm_suspend, ptr @ingenic_drm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ingenic_master_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @ingenic_drm_bind_with_components, ptr @ingenic_drm_unbind }, [24 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1020, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ingenic_drm_bind\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/ingenic/ingenic-drm-drv.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr = internal global ptr @ingenic_drm_bind._entry, section ".printk_index", align 4
@ingenic_drm_bind._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1028, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get reserved memory: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.9 = internal global ptr @ingenic_drm_bind._entry.6, section ".printk_index", align 4
@ingenic_drm_driver_data = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_drm_gem_create_object, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 1, i32 0, ptr @.str, ptr @.str.75, ptr @.str.76, i32 19, ptr null, i32 0, ptr @ingenic_drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ingenic_drm_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @ingenic_drm_gem_fb_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ingenic_drm_mode_config_helpers = internal global { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @drm_atomic_helper_commit_tail, ptr null }, [24 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1061, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get memory resource\0A\00", [33 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.12 = internal global ptr @ingenic_drm_bind._entry.10, section ".printk_index", align 4
@ingenic_drm_bind._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ingenic_drm_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @ingenic_drm_writeable_reg, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 300, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ingenic_drm_drv:1066:(&ingenic_drm_regmap_config)->lock\00", [40 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1068, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to create regmap\0A\00", [39 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.16 = internal global ptr @ingenic_drm_bind._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1079, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get lcd clock\0A\00", [39 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.20 = internal global ptr @ingenic_drm_bind._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lcd_pclk\00", [23 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1086, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get pixel clock\0A\00", [37 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.24 = internal global ptr @ingenic_drm_bind._entry.22, section ".printk_index", align 4
@ingenic_drm_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @ingenic_drm_plane_atomic_check, ptr @ingenic_drm_plane_atomic_update, ptr @ingenic_drm_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ingenic_drm_primary_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register plane: %i\0A\00", [34 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.27 = internal global ptr @ingenic_drm_bind._entry.25, section ".printk_index", align 4
@ingenic_drm_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @ingenic_drm_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_drm_crtc_atomic_check, ptr @ingenic_drm_crtc_atomic_begin, ptr @ingenic_drm_crtc_atomic_flush, ptr @ingenic_drm_crtc_atomic_enable, ptr @ingenic_drm_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@ingenic_drm_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_drm_enable_vblank, ptr @ingenic_drm_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init CRTC: %i\0A\00", [39 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.30 = internal global ptr @ingenic_drm_bind._entry.28, section ".printk_index", align 4
@ingenic_drm_bind._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register overlay plane: %i\0A\00", [58 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.33 = internal global ptr @ingenic_drm_bind._entry.31, section ".printk_index", align 4
@ingenic_drm_bind._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to bind components: %i\0A\00", [33 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.36 = internal global ptr @ingenic_drm_bind._entry.34, section ".printk_index", align 4
@ingenic_drm_bind._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 1168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to retrieve IPU plane\0A\00", [34 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.39 = internal global ptr @ingenic_drm_bind._entry.37, section ".printk_index", align 4
@ingenic_drm_bind._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 1180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get bridge handle\0A\00", [35 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.42 = internal global ptr @ingenic_drm_bind._entry.40, section ".printk_index", align 4
@ingenic_drm_bind._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 1192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to init encoder: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.45 = internal global ptr @ingenic_drm_bind._entry.43, section ".printk_index", align 4
@ingenic_drm_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_drm_encoder_atomic_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ingenic_drm_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @ingenic_drm_bridge_attach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr @drm_atomic_helper_bridge_propagate_bus_fmt, ptr @ingenic_drm_bridge_atomic_check, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 1207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to attach bridge\0A\00", [39 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.48 = internal global ptr @ingenic_drm_bind._entry.46, section ".printk_index", align 4
@ingenic_drm_bind._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.2, ptr @.str.3, i32 1213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to init connector\0A\00", [38 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.51 = internal global ptr @ingenic_drm_bind._entry.49, section ".printk_index", align 4
@ingenic_drm_bind._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.2, ptr @.str.3, i32 1230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to install IRQ handler\0A\00", [33 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.54 = internal global ptr @ingenic_drm_bind._entry.52, section ".printk_index", align 4
@ingenic_drm_bind._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed calling drm_vblank_init()\0A\00", [62 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.57 = internal global ptr @ingenic_drm_bind._entry.55, section ".printk_index", align 4
@ingenic_drm_bind._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.2, ptr @.str.3, i32 1244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to start pixel clock\0A\00", [35 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.60 = internal global ptr @ingenic_drm_bind._entry.58, section ".printk_index", align 4
@ingenic_drm_bind._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.2, ptr @.str.3, i32 1259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to set LCD clock rate\0A\00", [34 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.63 = internal global ptr @ingenic_drm_bind._entry.61, section ".printk_index", align 4
@ingenic_drm_bind._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.2, ptr @.str.3, i32 1265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to start lcd clock\0A\00", [37 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.66 = internal global ptr @ingenic_drm_bind._entry.64, section ".printk_index", align 4
@ingenic_drm_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->clk_mutex\00", [47 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.2, ptr @.str.3, i32 1280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to register clock notifier\0A\00", [61 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.70 = internal global ptr @ingenic_drm_bind._entry.68, section ".printk_index", align 4
@ingenic_drm_private_state_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @ingenic_drm_duplicate_state, ptr @ingenic_drm_destroy_state }, [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ingenic_drm_atomic_private_obj_fini\00", [60 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.2, ptr @.str.3, i32 1300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register DRM driver\0A\00", [33 x i8] zeroinitializer }, align 32
@ingenic_drm_bind._entry_ptr.74 = internal global ptr @ingenic_drm_bind._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DRM module for Ingenic SoCs\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20200716\00", [23 x i8] zeroinitializer }, align 32
@ingenic_drm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ingenic_drm_crtc_atomic_check.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ingenic_drm\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ingenic_drm_crtc_atomic_check\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid palette size\0A\00", [42 x i8] zeroinitializer }, align 32
@ingenic_drm_crtc_atomic_check.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.3, ptr @.str.80, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot enable both F1 and IPU\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jz4740_soc_info = internal constant { %struct.jz_soc_info, [36 x i8] } { %struct.jz_soc_info { i8 1, i8 0, i8 0, i32 800, i32 600, ptr null, ptr @jz4740_formats, i32 0, i32 3 }, [36 x i8] zeroinitializer }, align 32
@jz4725b_soc_info = internal constant { %struct.jz_soc_info, [36 x i8] } { %struct.jz_soc_info { i8 0, i8 1, i8 0, i32 800, i32 600, ptr @jz4725b_formats_f0, ptr @jz4725b_formats_f1, i32 4, i32 3 }, [36 x i8] zeroinitializer }, align 32
@jz4770_soc_info = internal constant { %struct.jz_soc_info, [36 x i8] } { %struct.jz_soc_info { i8 0, i8 1, i8 1, i32 1280, i32 720, ptr @jz4770_formats_f0, ptr @jz4770_formats_f1, i32 6, i32 5 }, [36 x i8] zeroinitializer }, align 32
@jz4740_formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 892424792, i32 909199186, i32 875713112], [20 x i8] zeroinitializer }, align 32
@jz4725b_formats_f0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 538982467, i32 892424792, i32 909199186, i32 875713112], [16 x i8] zeroinitializer }, align 32
@jz4725b_formats_f1 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 892424792, i32 909199186, i32 875713112], [20 x i8] zeroinitializer }, align 32
@jz4770_formats_f0 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 538982467, i32 892424792, i32 909199186, i32 875710290, i32 875713112, i32 808669784], [40 x i8] zeroinitializer }, align 32
@jz4770_formats_f1 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 892424792, i32 909199186, i32 875710290, i32 875713112, i32 808669784], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 808669784, i64 875710290, i64 875713112, i64 892424792, i64 909199186]
@__sancov_gen_cov_switch_values.81 = internal global [8 x i64] [i64 6, i64 32, i64 538982467, i64 808669784, i64 875710290, i64 875713112, i64 892424792, i64 909199186]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 4105, i64 4106, i64 4124, i64 4125]
@__sancov_gen_cov_switch_values.86 = internal global [7 x i64] [i64 5, i64 32, i64 4105, i64 4106, i64 4119, i64 4124, i64 4125]
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"ingenic_drm_driver\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1476, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1478, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"ingenic_drm_of_match\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1468, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"ingenic_drm_pm_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1395, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"ingenic_master_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1344, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1020, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1028, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [24 x i8] c"ingenic_drm_driver_data\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 872, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant [30 x i8] c"ingenic_drm_mode_config_funcs\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 937, i32 43 }
@___asan_gen_.135 = private unnamed_addr constant [32 x i8] c"ingenic_drm_mode_config_helpers\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 944, i32 44 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1061, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"ingenic_drm_regmap_config\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 171, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1065, i32 14 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1068, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1077, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1079, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1084, i32 36 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1086, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [31 x i8] c"ingenic_drm_plane_helper_funcs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 909, i32 44 }
@___asan_gen_.180 = private unnamed_addr constant [32 x i8] c"ingenic_drm_primary_plane_funcs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 886, i32 37 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1116, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [30 x i8] c"ingenic_drm_crtc_helper_funcs\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 915, i32 43 }
@___asan_gen_.192 = private unnamed_addr constant [23 x i8] c"ingenic_drm_crtc_funcs\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 896, i32 36 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1128, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1146, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1158, i32 6 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1168, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1180, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1192, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant [33 x i8] c"ingenic_drm_encoder_helper_funcs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 924, i32 46 }
@___asan_gen_.234 = private unnamed_addr constant [25 x i8] c"ingenic_drm_bridge_funcs\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 928, i32 38 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1207, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1213, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1230, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1236, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1244, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1259, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1265, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1274, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1280, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [32 x i8] c"ingenic_drm_private_state_funcs\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 948, i32 45 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1293, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1300, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 875, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 876, i32 12 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"ingenic_drm_fops\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 870, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 325, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 348, i32 5 }
@___asan_gen_.324 = private unnamed_addr constant [16 x i8] c"jz4740_soc_info\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1433, i32 33 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"jz4725b_soc_info\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1444, i32 33 }
@___asan_gen_.330 = private unnamed_addr constant [16 x i8] c"jz4770_soc_info\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1456, i32 33 }
@___asan_gen_.333 = private unnamed_addr constant [15 x i8] c"jz4740_formats\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1397, i32 18 }
@___asan_gen_.336 = private unnamed_addr constant [19 x i8] c"jz4725b_formats_f0\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1409, i32 18 }
@___asan_gen_.339 = private unnamed_addr constant [19 x i8] c"jz4725b_formats_f1\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1403, i32 18 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"jz4770_formats_f0\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1424, i32 18 }
@___asan_gen_.345 = private unnamed_addr constant [18 x i8] c"jz4770_formats_f1\00", align 1
@___asan_gen_.346 = private constant [45 x i8] c"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1416, i32 18 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_ingenic_drm_exit, ptr @__initcall__kmod_ingenic_drm__321_1498_ingenic_drm_init6, ptr @ingenic_drm_bind._entry, ptr @ingenic_drm_bind._entry.10, ptr @ingenic_drm_bind._entry.14, ptr @ingenic_drm_bind._entry.18, ptr @ingenic_drm_bind._entry.22, ptr @ingenic_drm_bind._entry.25, ptr @ingenic_drm_bind._entry.28, ptr @ingenic_drm_bind._entry.31, ptr @ingenic_drm_bind._entry.34, ptr @ingenic_drm_bind._entry.37, ptr @ingenic_drm_bind._entry.40, ptr @ingenic_drm_bind._entry.43, ptr @ingenic_drm_bind._entry.46, ptr @ingenic_drm_bind._entry.49, ptr @ingenic_drm_bind._entry.52, ptr @ingenic_drm_bind._entry.55, ptr @ingenic_drm_bind._entry.58, ptr @ingenic_drm_bind._entry.6, ptr @ingenic_drm_bind._entry.61, ptr @ingenic_drm_bind._entry.64, ptr @ingenic_drm_bind._entry.68, ptr @ingenic_drm_bind._entry.72, ptr @ingenic_drm_bind._entry_ptr, ptr @ingenic_drm_bind._entry_ptr.12, ptr @ingenic_drm_bind._entry_ptr.16, ptr @ingenic_drm_bind._entry_ptr.20, ptr @ingenic_drm_bind._entry_ptr.24, ptr @ingenic_drm_bind._entry_ptr.27, ptr @ingenic_drm_bind._entry_ptr.30, ptr @ingenic_drm_bind._entry_ptr.33, ptr @ingenic_drm_bind._entry_ptr.36, ptr @ingenic_drm_bind._entry_ptr.39, ptr @ingenic_drm_bind._entry_ptr.42, ptr @ingenic_drm_bind._entry_ptr.45, ptr @ingenic_drm_bind._entry_ptr.48, ptr @ingenic_drm_bind._entry_ptr.51, ptr @ingenic_drm_bind._entry_ptr.54, ptr @ingenic_drm_bind._entry_ptr.57, ptr @ingenic_drm_bind._entry_ptr.60, ptr @ingenic_drm_bind._entry_ptr.63, ptr @ingenic_drm_bind._entry_ptr.66, ptr @ingenic_drm_bind._entry_ptr.70, ptr @ingenic_drm_bind._entry_ptr.74, ptr @ingenic_drm_bind._entry_ptr.9, ptr @ingenic_drm_driver, ptr @.str, ptr @ingenic_drm_of_match, ptr @ingenic_drm_pm_ops, ptr @ingenic_master_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @ingenic_drm_driver_data, ptr @ingenic_drm_mode_config_funcs, ptr @ingenic_drm_mode_config_helpers, ptr @.str.11, ptr @ingenic_drm_bind._key, ptr @ingenic_drm_regmap_config, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @ingenic_drm_plane_helper_funcs, ptr @ingenic_drm_primary_plane_funcs, ptr @.str.26, ptr @ingenic_drm_crtc_helper_funcs, ptr @ingenic_drm_crtc_funcs, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @ingenic_drm_encoder_helper_funcs, ptr @ingenic_drm_bridge_funcs, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @ingenic_drm_bind.__key, ptr @.str.67, ptr @.str.69, ptr @ingenic_drm_private_state_funcs, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @ingenic_drm_fops, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @jz4740_soc_info, ptr @jz4725b_soc_info, ptr @jz4770_soc_info, ptr @jz4740_formats, ptr @jz4725b_formats_f0, ptr @jz4725b_formats_f1, ptr @jz4770_formats_f0, ptr @jz4770_formats_f1], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_master_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_driver_data to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_primary_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_private_state_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_bind._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_drm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_soc_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_soc_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_soc_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_formats_f0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_formats_f1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_formats_f0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4770_formats_f1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ingenic_drm_plane_disable(ptr nocapture noundef readonly %dev, ptr noundef readnone %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_info = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_info, align 8
  %has_osd = getelementptr inbounds %struct.jz_soc_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %has_osd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_osd, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f0 = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 1
  %cmp.not = icmp eq ptr %f0, %plane
  %. = select i1 %cmp.not, i32 8, i32 16
  %map = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 256, i32 noundef %., i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ingenic_drm_plane_config(ptr nocapture noundef readonly %dev, ptr noundef readonly %plane, i32 noundef %fourcc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  %soc_info.i = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %soc_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_info.i, align 8
  %has_osd.i = getelementptr inbounds %struct.jz_soc_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %has_osd.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_osd.i, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.ingenic_drm_plane_enable.exit_crit_edge, label %if.then.i

entry.ingenic_drm_plane_enable.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ingenic_drm_plane_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f0.i = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 1
  %cmp.not.i = icmp eq ptr %f0.i, %plane
  %..i = select i1 %cmp.not.i, i32 8, i32 16
  %map.i = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 256, i32 noundef %..i, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %ingenic_drm_plane_enable.exit

ingenic_drm_plane_enable.exit:                    ; preds = %if.then.i, %entry.ingenic_drm_plane_enable.exit_crit_edge
  %10 = ptrtoint ptr %soc_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc_info.i, align 8
  %has_osd = getelementptr inbounds %struct.jz_soc_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %has_osd to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_osd, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %f0 = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 1
  %cmp.not = icmp eq ptr %f0, %plane
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %ingenic_drm_plane_enable.exit
  %14 = zext i32 %fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fourcc, label %if.then.sw.epilog_crit_edge [
    i32 892424792, label %sw.bb
    i32 909199186, label %if.then.sw.bb2_crit_edge
    i32 875710290, label %sw.bb4
    i32 875713112, label %sw.bb6
    i32 808669784, label %sw.bb8
  ]

if.then.sw.bb2_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %if.then.sw.bb2_crit_edge
  %ctrl.0 = phi i32 [ 4, %if.then.sw.bb2_crit_edge ], [ 20, %sw.bb ]
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %if.then.sw.epilog_crit_edge
  %ctrl.1 = phi i32 [ 0, %if.then.sw.epilog_crit_edge ], [ 7, %sw.bb8 ], [ 5, %sw.bb6 ], [ 6, %sw.bb4 ], [ %ctrl.0, %sw.bb2 ]
  %map = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 260, i32 noundef 23, i32 noundef %ctrl.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end

if.else:                                          ; preds = %ingenic_drm_plane_enable.exit
  %17 = zext i32 %fourcc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %fourcc, label %if.else.sw.epilog23_crit_edge [
    i32 538982467, label %sw.bb11
    i32 892424792, label %sw.bb13
    i32 909199186, label %if.else.sw.bb15_crit_edge
    i32 875710290, label %sw.bb17
    i32 875713112, label %sw.bb19
    i32 808669784, label %sw.bb21
  ]

if.else.sw.bb15_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

if.else.sw.epilog23_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog23

sw.bb11:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog23

sw.bb13:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb13, %if.else.sw.bb15_crit_edge
  %ctrl.2 = phi i32 [ 4, %if.else.sw.bb15_crit_edge ], [ 134217732, %sw.bb13 ]
  br label %sw.epilog23

sw.bb17:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog23

sw.bb19:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog23

sw.bb21:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb11, %if.else.sw.epilog23_crit_edge
  %ctrl.3 = phi i32 [ 0, %if.else.sw.epilog23_crit_edge ], [ 7, %sw.bb21 ], [ 5, %sw.bb19 ], [ 6, %sw.bb17 ], [ %ctrl.2, %sw.bb15 ], [ 3, %sw.bb11 ]
  %map24 = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %map24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map24, align 4
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 48, i32 noundef 134217735, i32 noundef %ctrl.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end

if.end:                                           ; preds = %sw.epilog23, %sw.epilog
  %20 = ptrtoint ptr %soc_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc_info.i, align 8
  %has_osd27 = getelementptr inbounds %struct.jz_soc_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %has_osd27 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_osd27, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool28.not = icmp eq i8 %23, 0
  br i1 %tobool28.not, label %if.end.if.end44_crit_edge, label %if.then29

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %. = select i1 %cmp.not, i32 288, i32 292
  %.72 = select i1 %cmp.not, i32 296, i32 300
  %map35 = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %map35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map35, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_y, align 4
  %shl36 = shl i32 %29, 16
  %or37 = or i32 %shl36, %27
  %call38 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %., i32 noundef %or37) #11
  %30 = ptrtoint ptr %map35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map35, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crtc_w, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_h, align 4
  %shl41 = shl i32 %35, 16
  %or42 = or i32 %shl41, %33
  %call43 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %.72, i32 noundef %or42) #11
  br label %if.end44

if.end44:                                         ; preds = %if.then29, %if.end.if.end44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ingenic_drm_map_noncoherent(ptr nocapture noundef readonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_info = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_info, align 8
  %map_noncoherent = getelementptr inbounds %struct.jz_soc_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %map_noncoherent to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %map_noncoherent, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ingenic_ipu_driver_ptr to i32))
  %0 = load ptr, ptr @ingenic_ipu_driver_ptr, align 4
  %call = tail call i32 @__platform_driver_register(ptr noundef %0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ingenic_drm_driver, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @ingenic_drm_driver) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ingenic_ipu_driver_ptr to i32))
  %0 = load ptr, ptr @ingenic_ipu_driver_ptr, align 4
  tail call void @platform_driver_unregister(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #11
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %match, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_remote_node(ptr noundef %2, i32 noundef 8, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc i32 @ingenic_drm_bind(ptr noundef %dev1, i1 noundef zeroext false)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_of_component_match_add(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef nonnull @compare_of, ptr noundef nonnull %call) #11
  call void @of_node_put(ptr noundef nonnull %call) #11
  %3 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %match, align 4
  %call3 = call i32 @component_master_add_with_match(ptr noundef %dev1, ptr noundef nonnull @ingenic_master_ops, ptr noundef %4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev1, ptr noundef nonnull @ingenic_master_ops) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ingenic_drm_bind(ptr noundef %dev, i1 noundef zeroext %has_components) unnamed_addr #0 align 64 {
entry:
  %bridge = alloca ptr, align 4
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge) #11
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge, align 4, !annotation !188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #11
  %1 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !188
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev, ptr noundef %3, i32 noundef 0) #11
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call.i, label %do.end6 [
    i32 0, label %if.then9
    i32 -19, label %if.end.if.end14_crit_edge
  ]

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call.i) #14
  br label %if.end14

if.then9:                                         ; preds = %if.end
  %call.i541 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ingenic_drm_release_rmem, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i541)
  %tobool.not.i = icmp eq i32 %call.i541, 0
  br i1 %tobool.not.i, label %if.then9.if.end14_crit_edge, label %devm_add_action_or_reset.exit

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

devm_add_action_or_reset.exit:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @of_reserved_mem_device_release(ptr noundef %dev) #11
  br label %cleanup

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %do.end6, %if.end.if.end14_crit_edge
  %call15 = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev, ptr noundef nonnull @ingenic_drm_driver_data, i32 noundef 4656, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %soc_info20 = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 9
  %6 = ptrtoint ptr %soc_info20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %soc_info20, align 8
  %dev21 = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 5
  %7 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev21, align 8
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %driver_data.i.i, align 4
  %call23 = tail call i32 @drmm_mode_config_init(ptr noundef %call15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %min_width = getelementptr inbounds %struct.drm_device, ptr %call15, i32 0, i32 30, i32 23
  %9 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %call15, i32 0, i32 30, i32 24
  %10 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.jz_soc_info, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_width, align 4
  %max_width29 = getelementptr inbounds %struct.drm_device, ptr %call15, i32 0, i32 30, i32 25
  %13 = ptrtoint ptr %max_width29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max_width29, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %call15, i32 0, i32 30, i32 26
  %14 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4095, ptr %max_height, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %call15, i32 0, i32 30, i32 27
  %15 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ingenic_drm_mode_config_funcs, ptr %funcs, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %call15, i32 0, i32 30, i32 103
  %16 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ingenic_drm_mode_config_helpers, ptr %helper_private, align 4
  %call33 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #11
  %cmp.i542 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i542, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #14
  %17 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end26
  %call42 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call33, ptr noundef nonnull @ingenic_drm_regmap_config, ptr noundef nonnull @ingenic_drm_bind._key, ptr noundef nonnull @.str.13) #11
  %map = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 6
  %18 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call42, ptr %map, align 4
  %cmp.i543 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i543, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #14
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end40
  %call52 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool56.not = icmp eq i8 %23, 0
  br i1 %tobool56.not, label %if.end55.if.end68_crit_edge, label %if.then57

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then57:                                        ; preds = %if.end55
  %call58 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  %lcd_clk = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 7
  %24 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call58, ptr %lcd_clk, align 8
  %cmp.i544 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i544, label %do.end64, label %if.then57.if.end68_crit_edge

if.then57.if.end68_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.end64:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #14
  %25 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lcd_clk, align 8
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.then57.if.end68_crit_edge, %if.end55.if.end68_crit_edge
  %call69 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  %pix_clk = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 8
  %28 = ptrtoint ptr %pix_clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call69, ptr %pix_clk, align 4
  %cmp.i545 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i545, label %do.end75, label %if.end78

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #14
  %29 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pix_clk, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.end78:                                         ; preds = %if.end68
  %dma_hwdescs_phys = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 11
  %call.i546 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef 560, ptr noundef %dma_hwdescs_phys, i32 noundef 3264, i32 noundef 0) #11
  %dma_hwdescs = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 10
  %32 = ptrtoint ptr %dma_hwdescs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i546, ptr %dma_hwdescs, align 4
  %tobool81.not = icmp eq ptr %call.i546, null
  br i1 %tobool81.not, label %if.end78.cleanup_crit_edge, label %if.end83

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end83:                                         ; preds = %if.end78
  %33 = ptrtoint ptr %dma_hwdescs_phys to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_hwdescs_phys, align 8
  %35 = ptrtoint ptr %call.i546 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %call.i546, align 16
  %id2.i.i = getelementptr [3 x %struct.ingenic_dma_hwdesc], ptr %call.i546, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 240, ptr %id2.i.i, align 8
  %37 = ptrtoint ptr %dma_hwdescs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_hwdescs, align 4
  %arrayidx.i.i = getelementptr [3 x %struct.ingenic_dma_hwdesc], ptr %38, i32 0, i32 1
  %39 = load i32, ptr %dma_hwdescs_phys, align 8
  %add.i.i.i = add i32 %39, 16
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i.i.i, ptr %arrayidx.i.i, align 16
  %id2.i.i549 = getelementptr [3 x %struct.ingenic_dma_hwdesc], ptr %38, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %id2.i.i549 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 241, ptr %id2.i.i549, align 8
  %42 = load ptr, ptr %dma_hwdescs, align 4
  %arrayidx.i.i551 = getelementptr [3 x %struct.ingenic_dma_hwdesc], ptr %42, i32 0, i32 2
  %43 = load i32, ptr %dma_hwdescs_phys, align 8
  %44 = ptrtoint ptr %arrayidx.i.i551 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx.i.i551, align 16
  %id2.i.i553 = getelementptr [3 x %struct.ingenic_dma_hwdesc], ptr %42, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %id2.i.i553 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 192, ptr %id2.i.i553, align 8
  %46 = load ptr, ptr %dma_hwdescs, align 4
  %47 = load i32, ptr %dma_hwdescs_phys, align 8
  %add.i = add i32 %47, 48
  %addr.i = getelementptr [3 x %struct.ingenic_dma_hwdesc], ptr %46, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i, ptr %addr.i, align 4
  %cmd.i = getelementptr [3 x %struct.ingenic_dma_hwdesc], ptr %46, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 268435584, ptr %cmd.i, align 4
  %50 = ptrtoint ptr %soc_info20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %soc_info20, align 8
  %has_osd = getelementptr inbounds %struct.jz_soc_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %has_osd to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %has_osd, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool85.not = icmp eq i8 %53, 0
  %f1 = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 2
  %f0 = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 1
  %cond = select i1 %tobool85.not, ptr %f0, ptr %f1
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %cond, i32 0, i32 18
  %54 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ingenic_drm_plane_helper_funcs, ptr %helper_private.i, align 8
  %55 = ptrtoint ptr %soc_info20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %soc_info20, align 8
  %formats_f1 = getelementptr inbounds %struct.jz_soc_info, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %formats_f1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %formats_f1, align 4
  %num_formats_f1 = getelementptr inbounds %struct.jz_soc_info, ptr %56, i32 0, i32 8
  %59 = ptrtoint ptr %num_formats_f1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_formats_f1, align 4
  %call88 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %call15, ptr noundef %cond, i32 noundef 1, ptr noundef nonnull @ingenic_drm_primary_plane_funcs, ptr noundef %58, i32 noundef %60, ptr noundef null, i32 noundef 1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end94, label %do.end93

do.end93:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call88) #14
  br label %cleanup

if.end94:                                         ; preds = %if.end83
  %map_noncoherent = getelementptr inbounds %struct.jz_soc_info, ptr %call, i32 0, i32 2
  %61 = ptrtoint ptr %map_noncoherent to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %map_noncoherent, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool95.not = icmp eq i8 %62, 0
  br i1 %tobool95.not, label %if.end94.if.end98_crit_edge, label %if.then96

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef %f1) #11
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end94.if.end98_crit_edge
  %crtc = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 4
  %helper_private.i554 = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 4, i32 19
  %63 = ptrtoint ptr %helper_private.i554 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ingenic_drm_crtc_helper_funcs, ptr %helper_private.i554, align 8
  %call100 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %call15, ptr noundef %crtc, ptr noundef %cond, ptr noundef null, ptr noundef nonnull @ingenic_drm_crtc_funcs, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end106, label %do.end105

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call100) #14
  br label %cleanup

if.end106:                                        ; preds = %if.end98
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %crtc, i32 noundef 0, i1 noundef zeroext false, i32 noundef 256) #11
  %has_osd108 = getelementptr inbounds %struct.jz_soc_info, ptr %call, i32 0, i32 1
  %64 = ptrtoint ptr %has_osd108 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %has_osd108, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool109.not = icmp eq i8 %65, 0
  br i1 %tobool109.not, label %if.end106.if.end152_crit_edge, label %if.then110

if.end106.if.end152_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152

if.then110:                                       ; preds = %if.end106
  %helper_private.i555 = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 1, i32 18
  %66 = ptrtoint ptr %helper_private.i555 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ingenic_drm_plane_helper_funcs, ptr %helper_private.i555, align 8
  %67 = ptrtoint ptr %soc_info20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %soc_info20, align 8
  %formats_f0 = getelementptr inbounds %struct.jz_soc_info, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %formats_f0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %formats_f0, align 4
  %num_formats_f0 = getelementptr inbounds %struct.jz_soc_info, ptr %68, i32 0, i32 7
  %71 = ptrtoint ptr %num_formats_f0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_formats_f0, align 4
  %call115 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %call15, ptr noundef %f0, i32 noundef 1, ptr noundef nonnull @ingenic_drm_primary_plane_funcs, ptr noundef %70, i32 noundef %72, ptr noundef null, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end121, label %do.end120

do.end120:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call115) #14
  br label %cleanup

if.end121:                                        ; preds = %if.then110
  %73 = ptrtoint ptr %map_noncoherent to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %map_noncoherent, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool123.not = icmp eq i8 %74, 0
  br i1 %tobool123.not, label %if.end121.if.end126_crit_edge, label %if.then124

if.end121.if.end126_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef %f0) #11
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.end121.if.end126_crit_edge
  br i1 %has_components, label %if.then128, label %if.end126.if.end152_crit_edge

if.end126.if.end152_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152

if.then128:                                       ; preds = %if.end126
  %call129 = tail call i32 @component_bind_all(ptr noundef %dev, ptr noundef %call15) #11
  %75 = zext i32 %call129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call129, label %do.end136 [
    i32 0, label %if.end138
    i32 -517, label %if.then128.cleanup_crit_edge
  ]

if.then128.cleanup_crit_edge:                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end136:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call129) #14
  br label %cleanup

if.end138:                                        ; preds = %if.then128
  %call.i556 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ingenic_drm_unbind_all, ptr noundef %call15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i556)
  %tobool.not.i557 = icmp eq i32 %call.i556, 0
  br i1 %tobool.not.i557, label %if.end142, label %devm_add_action_or_reset.exit559

devm_add_action_or_reset.exit559:                 ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev21, align 8
  tail call void @component_unbind_all(ptr noundef %77, ptr noundef %call15) #11
  br label %cleanup

if.end142:                                        ; preds = %if.end138
  %call143 = tail call ptr @drm_plane_from_index(ptr noundef %call15, i32 noundef 2) #11
  %ipu_plane = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 3
  %78 = ptrtoint ptr %ipu_plane to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call143, ptr %ipu_plane, align 8
  %tobool145.not = icmp eq ptr %call143, null
  br i1 %tobool145.not, label %do.end149, label %if.end142.if.end152_crit_edge

if.end142.if.end152_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152

do.end149:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #14
  br label %cleanup

if.end152:                                        ; preds = %if.end142.if.end152_crit_edge, %if.end126.if.end152_crit_edge, %if.end106.if.end152_crit_edge
  %index.i.i = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 4, i32 8
  br label %for.cond

for.cond:                                         ; preds = %if.end198, %if.end152
  %i.0 = phi i32 [ 0, %if.end152 ], [ %inc, %if.end198 ]
  %79 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %of_node.i, align 8
  %call153 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %80, i32 noundef 0, i32 noundef %i.0, ptr noundef nonnull %panel, ptr noundef nonnull %bridge) #11
  %81 = zext i32 %call153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call153, label %do.end163 [
    i32 0, label %if.end165
    i32 -19, label %for.end
    i32 -517, label %for.cond.cleanup_crit_edge
  ]

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end163:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #14
  br label %cleanup

if.end165:                                        ; preds = %for.cond
  %82 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %panel, align 4
  %tobool166.not = icmp eq ptr %83, null
  br i1 %tobool166.not, label %if.end165.if.end169_crit_edge, label %if.then167

if.end165.if.end169_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

if.then167:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  %call168 = call ptr @devm_drm_panel_bridge_add_typed(ptr noundef %dev, ptr noundef nonnull %83, i32 noundef 17) #11
  %84 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call168, ptr %bridge, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.end165.if.end169_crit_edge
  %call170 = call ptr (ptr, i32, i32, ptr, i32, ptr, ...) @__drmm_encoder_alloc(ptr noundef %call15, i32 noundef 364, i32 noundef 0, ptr noundef null, i32 noundef 8, ptr noundef null) #11
  %cmp.i560 = icmp ugt ptr %call170, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i560, label %if.then172, label %if.end177

if.then172:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %call170 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %85) #14
  br label %cleanup

if.end177:                                        ; preds = %if.end169
  %86 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %87
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %call170, i32 0, i32 6
  %88 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shl.i, ptr %possible_crtcs, align 4
  %helper_private.i561 = getelementptr inbounds %struct.drm_encoder, ptr %call170, i32 0, i32 11
  %89 = ptrtoint ptr %helper_private.i561 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @ingenic_drm_encoder_helper_funcs, ptr %helper_private.i561, align 4
  %bridge181 = getelementptr inbounds %struct.ingenic_drm_bridge, ptr %call170, i32 0, i32 1
  %funcs182 = getelementptr inbounds %struct.ingenic_drm_bridge, ptr %call170, i32 0, i32 1, i32 7
  %90 = ptrtoint ptr %funcs182 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @ingenic_drm_bridge_funcs, ptr %funcs182, align 4
  %91 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bridge, align 4
  %next_bridge = getelementptr inbounds %struct.ingenic_drm_bridge, ptr %call170, i32 0, i32 2
  %93 = ptrtoint ptr %next_bridge to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %next_bridge, align 4
  %call184 = call i32 @drm_bridge_attach(ptr noundef %call170, ptr noundef %bridge181, ptr noundef null, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end190, label %do.end189

do.end189:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #14
  br label %cleanup

if.end190:                                        ; preds = %if.end177
  %call191 = call ptr @drm_bridge_connector_init(ptr noundef %call15, ptr noundef %call170) #11
  %cmp.i562 = icmp ugt ptr %call191, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i562, label %do.end196, label %if.end198

do.end196:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #14
  %94 = ptrtoint ptr %call191 to i32
  br label %cleanup

if.end198:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  %call199 = call i32 @drm_connector_attach_encoder(ptr noundef %call191, ptr noundef %call170) #11
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %call15, i32 0, i32 30, i32 16
  %95 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn572 = load ptr, ptr %encoder_list, align 4
  %cmp207.not573 = icmp eq ptr %.pn572, %encoder_list
  br i1 %cmp207.not573, label %for.end.for.cond222.preheader_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  br label %for.body

for.end.for.cond222.preheader_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond222.preheader

for.cond222.preheader:                            ; preds = %for.body.for.cond222.preheader_crit_edge, %for.end.for.cond222.preheader_crit_edge
  %clone_mask.0.lcssa = phi i32 [ 0, %for.end.for.cond222.preheader_crit_edge ], [ %or, %for.body.for.cond222.preheader_crit_edge ]
  %96 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn540576 = load ptr, ptr %encoder_list, align 4
  %cmp226.not577 = icmp eq ptr %.pn540576, %encoder_list
  br i1 %cmp226.not577, label %for.cond222.preheader.for.end235_crit_edge, label %for.cond222.preheader.for.body228_crit_edge

for.cond222.preheader.for.body228_crit_edge:      ; preds = %for.cond222.preheader
  br label %for.body228

for.cond222.preheader.for.end235_crit_edge:       ; preds = %for.cond222.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end235

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.end.for.body_crit_edge
  %.pn575 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn572, %for.end.for.body_crit_edge ]
  %clone_mask.0574 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.end.for.body_crit_edge ]
  %index.i = getelementptr i8, ptr %.pn575, i32 36
  %97 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %index.i, align 4
  %shl = shl nuw i32 1, %98
  %or = or i32 %shl, %clone_mask.0574
  %99 = ptrtoint ptr %.pn575 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn = load ptr, ptr %.pn575, align 4
  %cmp207.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp207.not, label %for.body.for.cond222.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.cond222.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond222.preheader

for.body228:                                      ; preds = %for.body228.for.body228_crit_edge, %for.cond222.preheader.for.body228_crit_edge
  %.pn540578 = phi ptr [ %.pn540, %for.body228.for.body228_crit_edge ], [ %.pn540576, %for.cond222.preheader.for.body228_crit_edge ]
  %possible_clones = getelementptr i8, ptr %.pn540578, i32 44
  %100 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %clone_mask.0.lcssa, ptr %possible_clones, align 4
  %101 = ptrtoint ptr %.pn540578 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pn540 = load ptr, ptr %.pn540578, align 4
  %cmp226.not = icmp eq ptr %.pn540, %encoder_list
  br i1 %cmp226.not, label %for.body228.for.end235_crit_edge, label %for.body228.for.body228_crit_edge

for.body228.for.body228_crit_edge:                ; preds = %for.body228
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body228

for.body228.for.end235_crit_edge:                 ; preds = %for.body228
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end235

for.end235:                                       ; preds = %for.body228.for.end235_crit_edge, %for.cond222.preheader.for.end235_crit_edge
  %driver = getelementptr inbounds %struct.drm_device, ptr %call15, i32 0, i32 4
  %102 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %103, i32 0, i32 21
  %104 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name, align 4
  %call.i563 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call52, ptr noundef nonnull @ingenic_drm_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %105, ptr noundef %call15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i563)
  %tobool237.not = icmp eq i32 %call.i563, 0
  br i1 %tobool237.not, label %if.end242, label %do.end241

do.end241:                                        ; preds = %for.end235
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53) #14
  br label %cleanup

if.end242:                                        ; preds = %for.end235
  %call243 = call i32 @drm_vblank_init(ptr noundef %call15, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %tobool244.not = icmp eq i32 %call243, 0
  br i1 %tobool244.not, label %if.end249, label %do.end248

do.end248:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56) #14
  br label %cleanup

if.end249:                                        ; preds = %if.end242
  call void @drm_mode_config_reset(ptr noundef %call15) #11
  %106 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pix_clk, align 4
  %call251 = call fastcc i32 @clk_prepare_enable(ptr noundef %107)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.end257, label %do.end256

do.end256:                                        ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59) #14
  br label %cleanup

if.end257:                                        ; preds = %if.end249
  %lcd_clk258 = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 7
  %108 = ptrtoint ptr %lcd_clk258 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %lcd_clk258, align 8
  %tobool259.not = icmp eq ptr %109, null
  br i1 %tobool259.not, label %if.end257.if.end280_crit_edge, label %if.then260

if.end257.if.end280_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end280

if.then260:                                       ; preds = %if.end257
  %call262 = call ptr @clk_get_parent(ptr noundef nonnull %109) #11
  %call263 = call i32 @clk_get_rate(ptr noundef %call262) #11
  %110 = ptrtoint ptr %lcd_clk258 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lcd_clk258, align 8
  %call265 = call i32 @clk_set_rate(ptr noundef %111, i32 noundef %call263) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end271, label %do.end270

do.end270:                                        ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #14
  br label %err_pixclk_disable

if.end271:                                        ; preds = %if.then260
  %112 = ptrtoint ptr %lcd_clk258 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %lcd_clk258, align 8
  %call273 = call fastcc i32 @clk_prepare_enable(ptr noundef %113)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.end271.if.end280_crit_edge, label %do.end278

if.end271.if.end280_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end280

do.end278:                                        ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #14
  br label %err_pixclk_disable

if.end280:                                        ; preds = %if.end271.if.end280_crit_edge, %if.end257.if.end280_crit_edge
  %114 = ptrtoint ptr %has_osd108 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %has_osd108, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool282.not = icmp eq i8 %115, 0
  br i1 %tobool282.not, label %if.end280.do.body287_crit_edge, label %if.then283

if.end280.do.body287_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body287

if.then283:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %map, align 4
  %call285 = call i32 @regmap_write(ptr noundef %117, i32 noundef 256, i32 noundef 1) #11
  br label %do.body287

do.body287:                                       ; preds = %if.then283, %if.end280.do.body287_crit_edge
  %clk_mutex = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 14
  call void @__mutex_init(ptr noundef %clk_mutex, ptr noundef nonnull @.str.67, ptr noundef nonnull @ingenic_drm_bind.__key) #11
  %clock_nb = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 16
  %118 = ptrtoint ptr %clock_nb to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @ingenic_drm_update_pixclk, ptr %clock_nb, align 8
  %119 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pix_clk, align 4
  %call291 = call ptr @clk_get_parent(ptr noundef %120) #11
  %call293 = call i32 @clk_notifier_register(ptr noundef %call291, ptr noundef %clock_nb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293)
  %tobool294.not = icmp eq i32 %call293, 0
  br i1 %tobool294.not, label %if.end299, label %do.end298

do.end298:                                        ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69) #14
  br label %err_devclk_disable

if.end299:                                        ; preds = %do.body287
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %121 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %121, i32 noundef 3520, i32 noundef 8) #15
  %tobool301.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool301.not, label %if.end299.err_clk_notifier_unregister_crit_edge, label %if.end303

if.end299.err_clk_notifier_unregister_crit_edge:  ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_clk_notifier_unregister

if.end303:                                        ; preds = %if.end299
  %private_obj = getelementptr inbounds %struct.ingenic_drm, ptr %call15, i32 0, i32 17
  call void @drm_atomic_private_obj_init(ptr noundef %call15, ptr noundef %private_obj, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ingenic_drm_private_state_funcs) #11
  %call306 = call i32 @__drmm_add_action_or_reset(ptr noundef %call15, ptr noundef nonnull @ingenic_drm_atomic_private_obj_fini, ptr noundef %private_obj, ptr noundef nonnull @.str.71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %if.end309, label %err_private_state_free

if.end309:                                        ; preds = %if.end303
  %call310 = call i32 @drm_dev_register(ptr noundef %call15, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %if.end316, label %do.end315

do.end315:                                        ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73) #14
  br label %err_clk_notifier_unregister

if.end316:                                        ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_fbdev_generic_setup(ptr noundef %call15, i32 noundef 32) #11
  br label %cleanup

err_private_state_free:                           ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err_clk_notifier_unregister

err_clk_notifier_unregister:                      ; preds = %err_private_state_free, %do.end315, %if.end299.err_clk_notifier_unregister_crit_edge
  %ret.0 = phi i32 [ %call306, %err_private_state_free ], [ %call310, %do.end315 ], [ -12, %if.end299.err_clk_notifier_unregister_crit_edge ]
  %call318 = call i32 @clk_notifier_unregister(ptr noundef %call291, ptr noundef %clock_nb) #11
  br label %err_devclk_disable

err_devclk_disable:                               ; preds = %err_clk_notifier_unregister, %do.end298
  %ret.1 = phi i32 [ %call293, %do.end298 ], [ %ret.0, %err_clk_notifier_unregister ]
  %122 = ptrtoint ptr %lcd_clk258 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %lcd_clk258, align 8
  %tobool320.not = icmp eq ptr %123, null
  br i1 %tobool320.not, label %err_devclk_disable.err_pixclk_disable_crit_edge, label %if.then321

err_devclk_disable.err_pixclk_disable_crit_edge:  ; preds = %err_devclk_disable
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pixclk_disable

if.then321:                                       ; preds = %err_devclk_disable
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_disable(ptr noundef nonnull %123) #11
  call void @clk_unprepare(ptr noundef nonnull %123) #11
  br label %err_pixclk_disable

err_pixclk_disable:                               ; preds = %if.then321, %err_devclk_disable.err_pixclk_disable_crit_edge, %do.end278, %do.end270
  %ret.2 = phi i32 [ %call265, %do.end270 ], [ %call273, %do.end278 ], [ %ret.1, %if.then321 ], [ %ret.1, %err_devclk_disable.err_pixclk_disable_crit_edge ]
  %124 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pix_clk, align 4
  call void @clk_disable(ptr noundef %125) #11
  call void @clk_unprepare(ptr noundef %125) #11
  br label %cleanup

cleanup:                                          ; preds = %err_pixclk_disable, %if.end316, %do.end256, %do.end248, %do.end241, %do.end196, %do.end189, %if.then172, %do.end163, %for.cond.cleanup_crit_edge, %do.end149, %devm_add_action_or_reset.exit559, %do.end136, %if.then128.cleanup_crit_edge, %do.end120, %do.end105, %do.end93, %if.end78.cleanup_crit_edge, %do.end75, %do.end64, %if.end51.cleanup_crit_edge, %do.end48, %do.end38, %if.end19.cleanup_crit_edge, %if.then17, %devm_add_action_or_reset.exit, %do.end
  %retval.0 = phi i32 [ %5, %if.then17 ], [ %17, %do.end38 ], [ %21, %do.end48 ], [ %27, %do.end64 ], [ %31, %do.end75 ], [ %call88, %do.end93 ], [ %call100, %do.end105 ], [ %call115, %do.end120 ], [ %call.i563, %do.end241 ], [ %call243, %do.end248 ], [ %call251, %do.end256 ], [ %ret.2, %err_pixclk_disable ], [ 0, %if.end316 ], [ %85, %if.then172 ], [ %call184, %do.end189 ], [ %94, %do.end196 ], [ -22, %do.end149 ], [ -22, %do.end ], [ %call.i541, %devm_add_action_or_reset.exit ], [ %call23, %if.end19.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ -12, %if.end78.cleanup_crit_edge ], [ %call129, %if.then128.cleanup_crit_edge ], [ %call129, %do.end136 ], [ %call.i556, %devm_add_action_or_reset.exit559 ], [ %call153, %do.end163 ], [ %call153, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_of_component_match_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_release_rmem(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @of_reserved_mem_device_release(ptr noundef %d) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_unbind_all(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ingenic_drm, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void @component_unbind_all(ptr noundef %1, ptr noundef %d) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_plane_from_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add_typed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_irq_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !188
  %map = getelementptr inbounds %struct.ingenic_drm, ptr %arg, i32 0, i32 6
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 52, ptr noundef nonnull %state) #11
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 52, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %crtc = getelementptr inbounds %struct.ingenic_drm, ptr %arg, i32 0, i32 4
  %call4 = call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %crtc) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %clk) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_update_pixclk(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cond = icmp eq i32 %action, 1
  %clk_mutex = getelementptr i8, ptr %nb, i32 -96
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_lock_nested(ptr noundef %clk_mutex, i32 noundef 0) #11
  %update_clk_rate = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %update_clk_rate to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %update_clk_rate, align 4
  %crtc = getelementptr i8, ptr %nb, i32 -1120
  tail call void @drm_crtc_wait_one_vblank(ptr noundef %crtc) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %clk_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_atomic_private_obj_fini(ptr nocapture noundef readnone %drm, ptr noundef %private_obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_atomic_private_obj_fini(ptr noundef %private_obj) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ingenic_drm_gem_create_object(ptr nocapture noundef readonly %drm, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 368) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %soc_info = getelementptr inbounds %struct.ingenic_drm, ptr %drm, i32 0, i32 9
  %1 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soc_info, align 8
  %map_noncoherent = getelementptr inbounds %struct.jz_soc_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %map_noncoherent to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %map_noncoherent, align 2, !range !187
  %map_noncoherent4 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %map_noncoherent4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %map_noncoherent4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
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
define internal ptr @ingenic_drm_gem_fb_create(ptr noundef %drm, ptr noundef %file, ptr noundef %mode_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_info = getelementptr inbounds %struct.ingenic_drm, ptr %drm, i32 0, i32 9
  %0 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_info, align 8
  %map_noncoherent = getelementptr inbounds %struct.jz_soc_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %map_noncoherent to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %map_noncoherent, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @drm_gem_fb_create_with_dirty(ptr noundef %drm, ptr noundef %file, ptr noundef %mode_cmd) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call ptr @drm_gem_fb_create(ptr noundef %drm, ptr noundef %file, ptr noundef %mode_cmd) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call1, %if.then ], [ %call2, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create_with_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail(ptr noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ingenic_drm_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -56
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %2 = icmp ugt i32 %1, 9
  %switch.cast = trunc i32 %1 to i10
  %switch.downshift = lshr i10 70, %switch.cast
  %3 = and i10 %switch.downshift, 1
  %4 = sext i10 %3 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.masked = icmp ne i10 %3, 0
  %retval.0 = select i1 %2, i1 true, i1 %switch.masked
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %8 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plane, align 8
  %crtc3 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %crtc3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.end:                                         ; preds = %entry
  %crtc4 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %crtc4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc4, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond145 = phi ptr [ %13, %cond.end.if.end_crit_edge ], [ %11, %entry.if.end_crit_edge ]
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %14 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtcs.i, align 4
  %index.i.i142 = getelementptr inbounds %struct.drm_crtc, ptr %cond145, i32 0, i32 8
  %16 = ptrtoint ptr %index.i.i142 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i142, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %17, i32 1
  %18 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state1.i, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %do.end, label %if.end32, !prof !189

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 452, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %private_obj.i = getelementptr inbounds %struct.ingenic_drm, ptr %9, i32 0, i32 17
  %call.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %private_obj.i) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %soc_info = getelementptr inbounds %struct.ingenic_drm, ptr %9, i32 0, i32 9
  %21 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %soc_info, align 8
  %has_osd = getelementptr inbounds %struct.jz_soc_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %has_osd to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_osd, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool38 = icmp ne i8 %24, 0
  %call39 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %7, ptr noundef nonnull %19, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext %tobool38, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %25 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc_info, align 8
  %has_osd44 = getelementptr inbounds %struct.jz_soc_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %has_osd44 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_osd44, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool45.not = icmp eq i8 %28, 0
  br i1 %tobool45.not, label %land.lhs.true, label %if.end42.if.end51_crit_edge

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end42
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 8
  %29 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not = icmp eq i32 %30, 0
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 11
  %31 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_w, align 4
  %shr = lshr i32 %32, 16
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 6
  %33 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %crtc_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %34)
  %cmp46.not = icmp eq i32 %shr, %34
  br i1 %cmp46.not, label %lor.lhs.false47, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false47:                                  ; preds = %lor.lhs.false
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 10
  %35 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_h, align 4
  %shr48 = lshr i32 %36, 16
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 7
  %37 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr48, i32 %38)
  %cmp49.not = icmp eq i32 %shr48, %38
  br i1 %cmp49.not, label %lor.lhs.false47.if.end51_crit_edge, label %lor.lhs.false47.cleanup_crit_edge

lor.lhs.false47.cleanup_crit_edge:                ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false47.if.end51_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.end51:                                         ; preds = %lor.lhs.false47.if.end51_crit_edge, %if.end42.if.end51_crit_edge
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %39 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fb, align 4
  %tobool52.not = icmp eq ptr %40, null
  br i1 %tobool52.not, label %if.end51.land.end_crit_edge, label %land.rhs

if.end51.land.end_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %format, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 538982467, i32 %44)
  %cmp55 = icmp eq i32 %44, 538982467
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end51.land.end_crit_edge
  %45 = phi i1 [ false, %if.end51.land.end_crit_edge ], [ %cmp55, %land.rhs ]
  %use_palette = getelementptr inbounds %struct.ingenic_drm_private_state, ptr %call.i, i32 0, i32 1
  %frombool = zext i1 %45 to i8
  %46 = ptrtoint ptr %use_palette to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool, ptr %use_palette, align 4
  %47 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %soc_info, align 8
  %has_osd57 = getelementptr inbounds %struct.jz_soc_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %has_osd57 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %has_osd57, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool58.not = icmp eq i8 %50, 0
  br i1 %tobool58.not, label %land.end.if.end88_crit_edge, label %land.lhs.true59

land.end.if.end88_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

land.lhs.true59:                                  ; preds = %land.end
  %fb60 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %51 = ptrtoint ptr %fb60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fb60, align 4
  %tobool61.not = icmp eq ptr %52, null
  br i1 %tobool61.not, label %land.lhs.true59.if.then87_crit_edge, label %lor.lhs.false62

land.lhs.true59.if.then87_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

lor.lhs.false62:                                  ; preds = %land.lhs.true59
  %53 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fb, align 4
  %tobool64.not = icmp eq ptr %54, null
  br i1 %tobool64.not, label %lor.lhs.false62.if.then87_crit_edge, label %lor.lhs.false65

lor.lhs.false62.if.then87_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %55 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %crtc_x, align 4
  %crtc_x66 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 4
  %57 = ptrtoint ptr %crtc_x66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %crtc_x66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp67.not = icmp eq i32 %56, %58
  br i1 %cmp67.not, label %lor.lhs.false68, label %lor.lhs.false65.if.then87_crit_edge

lor.lhs.false65.if.then87_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %59 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %crtc_y, align 4
  %crtc_y69 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 5
  %61 = ptrtoint ptr %crtc_y69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %crtc_y69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp70.not = icmp eq i32 %60, %62
  br i1 %cmp70.not, label %lor.lhs.false71, label %lor.lhs.false68.if.then87_crit_edge

lor.lhs.false68.if.then87_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

lor.lhs.false71:                                  ; preds = %lor.lhs.false68
  %crtc_w72 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %63 = ptrtoint ptr %crtc_w72 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %crtc_w72, align 4
  %crtc_w73 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 6
  %65 = ptrtoint ptr %crtc_w73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %crtc_w73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp74.not = icmp eq i32 %64, %66
  br i1 %cmp74.not, label %lor.lhs.false75, label %lor.lhs.false71.if.then87_crit_edge

lor.lhs.false71.if.then87_crit_edge:              ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

lor.lhs.false75:                                  ; preds = %lor.lhs.false71
  %crtc_h76 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %67 = ptrtoint ptr %crtc_h76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %crtc_h76, align 4
  %crtc_h77 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 7
  %69 = ptrtoint ptr %crtc_h77 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %crtc_h77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp78.not = icmp eq i32 %68, %70
  br i1 %cmp78.not, label %lor.lhs.false79, label %lor.lhs.false75.if.then87_crit_edge

lor.lhs.false75.if.then87_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

lor.lhs.false79:                                  ; preds = %lor.lhs.false75
  %format81 = getelementptr inbounds %struct.drm_framebuffer, ptr %52, i32 0, i32 4
  %71 = ptrtoint ptr %format81 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %format81, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %format84 = getelementptr inbounds %struct.drm_framebuffer, ptr %54, i32 0, i32 4
  %75 = ptrtoint ptr %format84 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %format84, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %78)
  %cmp86.not = icmp eq i32 %74, %78
  br i1 %cmp86.not, label %lor.lhs.false79.if.end88_crit_edge, label %lor.lhs.false79.if.then87_crit_edge

lor.lhs.false79.if.then87_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

lor.lhs.false79.if.end88_crit_edge:               ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then87:                                        ; preds = %lor.lhs.false79.if.then87_crit_edge, %lor.lhs.false75.if.then87_crit_edge, %lor.lhs.false71.if.then87_crit_edge, %lor.lhs.false68.if.then87_crit_edge, %lor.lhs.false65.if.then87_crit_edge, %lor.lhs.false62.if.then87_crit_edge, %land.lhs.true59.if.then87_crit_edge
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 3
  %79 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %lor.lhs.false79.if.end88_crit_edge, %land.end.if.end88_crit_edge
  %80 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %soc_info, align 8
  %map_noncoherent = getelementptr inbounds %struct.jz_soc_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %map_noncoherent to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %map_noncoherent, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool90.not = icmp eq i8 %83, 0
  br i1 %tobool90.not, label %if.end88.cleanup_crit_edge, label %if.then91

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_atomic_helper_check_plane_damage(ptr noundef %state, ptr noundef %7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.end88.cleanup_crit_edge, %lor.lhs.false47.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then35, %do.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %20, %if.then35 ], [ 0, %cond.end.cleanup_crit_edge ], [ %call39, %if.end37.cleanup_crit_edge ], [ -22, %lor.lhs.false47.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then91 ], [ 0, %if.end88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_plane_atomic_update(ptr noundef %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %3, i32 %5, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %3, i32 %5, i32 2
  %8 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_state.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %land.lhs.true

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true:                                    ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.lhs.true.if.end39_crit_edge, label %if.then

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then:                                          ; preds = %land.lhs.true
  %soc_info = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc_info, align 8
  %map_noncoherent = getelementptr inbounds %struct.jz_soc_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %map_noncoherent to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %map_noncoherent, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_fb_cma_sync_non_coherent(ptr noundef %1, ptr noundef %9, ptr noundef nonnull %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc, align 4
  %state6 = getelementptr inbounds %struct.drm_crtc, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state6, align 4
  %20 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc_info, align 8
  %has_osd = getelementptr inbounds %struct.jz_soc_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %has_osd to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_osd, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool8.not = icmp ne i8 %23, 0
  %f0 = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 1
  %cmp = icmp ne ptr %f0, %plane
  %narrow = select i1 %tobool8.not, i1 %cmp, i1 false
  %24 = zext i1 %narrow to i32
  %25 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fb, align 4
  %call11 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef %26, ptr noundef nonnull %7, i32 noundef 0) #11
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 11
  %27 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %src_w, align 4
  %shr = lshr i32 %28, 16
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 10
  %29 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_h, align 4
  %shr12 = lshr i32 %30, 16
  %31 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %format, align 8
  %35 = getelementptr inbounds %struct.drm_format_info, ptr %34, i32 0, i32 3
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 2
  %conv = zext i8 %37 to i32
  %private_obj.i = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 17
  %call.i = tail call ptr @drm_atomic_get_new_private_obj_state(ptr noundef %state, ptr noundef %private_obj.i) #11
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end.cond.false_crit_edge, label %land.lhs.true16

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

land.lhs.true16:                                  ; preds = %if.end
  %use_palette = getelementptr inbounds %struct.ingenic_drm_private_state, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %use_palette to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %use_palette, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool17.not = icmp eq i8 %39, 0
  br i1 %tobool17.not, label %land.lhs.true16.cond.false_crit_edge, label %land.lhs.true16.cond.end_crit_edge

land.lhs.true16.cond.end_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

land.lhs.true16.cond.false_crit_edge:             ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true16.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %phi.bo = select i1 %narrow, i32 16, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true16.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.false ], [ 32, %land.lhs.true16.cond.end_crit_edge ]
  %dma_hwdescs = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %dma_hwdescs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_hwdescs, align 4
  %arrayidx20 = getelementptr [3 x %struct.ingenic_dma_hwdesc], ptr %41, i32 0, i32 %24
  %addr21 = getelementptr [3 x %struct.ingenic_dma_hwdesc], ptr %41, i32 0, i32 %24, i32 1
  %42 = ptrtoint ptr %addr21 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call11, ptr %addr21, align 4
  %mul = mul nuw i32 %shr12, %shr
  %mul22 = mul i32 %mul, %conv
  %div71 = lshr i32 %mul22, 2
  %or = or i32 %div71, 1073741824
  %cmd = getelementptr [3 x %struct.ingenic_dma_hwdesc], ptr %41, i32 0, i32 %24, i32 3
  %43 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %cmd, align 4
  %dma_hwdescs_phys.i = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 11
  %44 = ptrtoint ptr %dma_hwdescs_phys.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_hwdescs_phys.i, align 8
  %add.i = add i32 %45, %cond
  %46 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add.i, ptr %arrayidx20, align 16
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 3
  %47 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %48 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %.not = icmp eq i8 %48, 0
  br i1 %.not, label %cond.end.if.end33_crit_edge, label %if.then25

cond.end.if.end33_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then25:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fb, align 4
  %format27 = getelementptr inbounds %struct.drm_framebuffer, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %format27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %format27, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %dev29 = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev29, align 8
  tail call void @ingenic_drm_plane_config(ptr noundef %56, ptr noundef %plane, i32 noundef %54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 538982467, i32 %54)
  %cmp30 = icmp eq i32 %54, 538982467
  %57 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %mode_changed.i, align 2
  %bf.shl = select i1 %cmp30, i8 4, i8 0
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %mode_changed.i, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.then25, %cond.end.if.end33_crit_edge
  %58 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load35 = load i8, ptr %mode_changed.i, align 2
  %59 = and i8 %bf.load35, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %bf.cast.not = icmp eq i8 %59, 0
  br i1 %bf.cast.not, label %if.end33.if.end39_crit_edge, label %if.then37

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then37:                                        ; preds = %if.end33
  %gamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 12
  %60 = ptrtoint ptr %gamma_lut to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gamma_lut, align 4
  %data = getelementptr inbounds %struct.drm_property_blob, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then37
  %i.022.i = phi i32 [ 0, %if.then37 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_color_lut, ptr %63, i32 %i.022.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %65 to i32
  %add.i.i = add nuw nsw i32 %conv.i, 1024
  %shr4.i.i = lshr i32 %add.i.i, 11
  %66 = tail call i32 @llvm.umin.i32(i32 %shr4.i.i, i32 31) #11
  %shl.i = shl nuw nsw i32 %66, 11
  %green.i = getelementptr %struct.drm_color_lut, ptr %63, i32 %i.022.i, i32 1
  %67 = ptrtoint ptr %green.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %green.i, align 2
  %conv2.i = zext i16 %68 to i32
  %add.i18.i = add nuw nsw i32 %conv2.i, 512
  %shr4.i19.i = lshr i32 %add.i18.i, 10
  %69 = tail call i32 @llvm.umin.i32(i32 %shr4.i19.i, i32 63) #11
  %shl4.i = shl nuw nsw i32 %69, 5
  %or.i = or i32 %shl4.i, %shl.i
  %blue.i = getelementptr %struct.drm_color_lut, ptr %63, i32 %i.022.i, i32 2
  %70 = ptrtoint ptr %blue.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %blue.i, align 2
  %conv6.i = zext i16 %71 to i32
  %add.i20.i = add nuw nsw i32 %conv6.i, 1024
  %shr4.i21.i = lshr i32 %add.i20.i, 11
  %72 = tail call i32 @llvm.umin.i32(i32 %shr4.i21.i, i32 31) #11
  %or8.i = or i32 %or.i, %72
  %conv9.i = trunc i32 %or8.i to i16
  %73 = ptrtoint ptr %dma_hwdescs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dma_hwdescs, align 4
  %arrayidx10.i = getelementptr %struct.ingenic_dma_hwdescs, ptr %74, i32 0, i32 1, i32 %i.022.i
  %75 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv9.i, ptr %arrayidx10.i, align 2
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.if.end39_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.if.end39_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end39:                                         ; preds = %for.body.i.if.end39_crit_edge, %if.end33.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %entry.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_plane_atomic_disable(ptr noundef readonly %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev1 = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %soc_info.i = getelementptr inbounds %struct.ingenic_drm, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %soc_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc_info.i, align 8
  %has_osd.i = getelementptr inbounds %struct.jz_soc_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %has_osd.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_osd.i, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.ingenic_drm_plane_disable.exit_crit_edge, label %if.then.i

entry.ingenic_drm_plane_disable.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ingenic_drm_plane_disable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f0.i = getelementptr inbounds %struct.ingenic_drm, ptr %5, i32 0, i32 1
  %cmp.not.i = icmp eq ptr %f0.i, %plane
  %..i = select i1 %cmp.not.i, i32 8, i32 16
  %map.i = getelementptr inbounds %struct.ingenic_drm, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 256, i32 noundef %..i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %ingenic_drm_plane_disable.exit

ingenic_drm_plane_disable.exit:                   ; preds = %if.then.i, %entry.ingenic_drm_plane_disable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_check_plane_damage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_cma_sync_non_coherent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %0 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %1 to i32
  %soc_info = getelementptr i8, ptr %crtc, i32 1008
  %2 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_info, align 8
  %max_width = getelementptr inbounds %struct.jz_soc_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp ult i32 %5, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %6 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay, align 2
  %conv2 = zext i16 %7 to i32
  %max_height = getelementptr inbounds %struct.jz_soc_info, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv2)
  %cmp4 = icmp ult i32 %9, %conv2
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pix_clk = getelementptr i8, ptr %crtc, i32 1004
  %10 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pix_clk, align 4
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %mul = mul i32 %13, 1000
  %call8 = tail call i32 @clk_round_rate(ptr noundef %11, i32 noundef %mul) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  %. = select i1 %cmp9, i32 17, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 18, %entry.cleanup_crit_edge ], [ 19, %if.end.cleanup_crit_edge ], [ %., %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_crtc_atomic_check(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %gamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %gamma_lut to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gamma_lut, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 4
  %div1.i.mask = and i32 %9, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %div1.i.mask)
  %cmp.not = icmp eq i32 %div1.i.mask, 2048
  br i1 %cmp.not, label %land.lhs.true.if.end9_crit_edge, label %do.body

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ingenic_drm_crtc_atomic_check.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ingenic_drm_crtc_atomic_check, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !190

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %crtc, i32 992
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ingenic_drm_crtc_atomic_check.__UNIQUE_ID_ddebug319, ptr noundef %11, ptr noundef nonnull @.str.79) #11
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %13 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %.not = icmp eq i8 %13, 0
  br i1 %.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true11:                                  ; preds = %if.end9
  %soc_info = getelementptr i8, ptr %crtc, i32 1008
  %14 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc_info, align 8
  %has_osd = getelementptr inbounds %struct.jz_soc_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %has_osd to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_osd, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %land.lhs.true11.cleanup_crit_edge, label %if.then13

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true11
  %state14 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %18 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state14, align 4
  %f1 = getelementptr i8, ptr %crtc, i32 -536
  %call15 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %19, ptr noundef %f1) #11
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.then13
  %21 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state14, align 4
  %f0 = getelementptr i8, ptr %crtc, i32 -1064
  %call21 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %22, ptr noundef %f0) #11
  %cmp.i103 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %ipu_plane = getelementptr i8, ptr %crtc, i32 -8
  %24 = ptrtoint ptr %ipu_plane to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipu_plane, align 8
  %tobool26.not = icmp eq ptr %25, null
  br i1 %tobool26.not, label %if.end25.if.end58_crit_edge, label %if.then27

if.end25.if.end58_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then27:                                        ; preds = %if.end25
  %26 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state14, align 4
  %call30 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %27, ptr noundef nonnull %25) #11
  %cmp.i104 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.then27
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %call15, i32 0, i32 2
  %29 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb, align 4
  %tobool35.not = icmp eq ptr %30, null
  br i1 %tobool35.not, label %if.end34.if.end58_crit_edge, label %land.lhs.true36

if.end34.if.end58_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true36:                                  ; preds = %if.end34
  %fb37 = getelementptr inbounds %struct.drm_plane_state, ptr %call30, i32 0, i32 2
  %31 = ptrtoint ptr %fb37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fb37, align 4
  %tobool38.not = icmp eq ptr %32, null
  br i1 %tobool38.not, label %land.lhs.true36.if.end58_crit_edge, label %do.body40

land.lhs.true36.if.end58_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.body40:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ingenic_drm_crtc_atomic_check.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ingenic_drm_crtc_atomic_check, %if.then52)) #11
          to label %cleanup [label %if.then52], !srcloc !190

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %dev53 = getelementptr i8, ptr %crtc, i32 992
  %33 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev53, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ingenic_drm_crtc_atomic_check.__UNIQUE_ID_ddebug320, ptr noundef %34, ptr noundef nonnull @.str.80) #11
  br label %cleanup

if.end58:                                         ; preds = %land.lhs.true36.if.end58_crit_edge, %if.end34.if.end58_crit_edge, %if.end25.if.end58_crit_edge
  %ipu_state.0 = phi ptr [ %call30, %land.lhs.true36.if.end58_crit_edge ], [ %call30, %if.end34.if.end58_crit_edge ], [ null, %if.end25.if.end58_crit_edge ]
  %fb59 = getelementptr inbounds %struct.drm_plane_state, ptr %call15, i32 0, i32 2
  %35 = ptrtoint ptr %fb59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fb59, align 4
  %tobool60.not = icmp eq ptr %36, null
  br i1 %tobool60.not, label %land.lhs.true61, label %if.end58.land.end70_crit_edge

if.end58.land.end70_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end70

land.lhs.true61:                                  ; preds = %if.end58
  %fb62 = getelementptr inbounds %struct.drm_plane_state, ptr %call21, i32 0, i32 2
  %37 = ptrtoint ptr %fb62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fb62, align 4
  %tobool63.not = icmp eq ptr %38, null
  br i1 %tobool63.not, label %land.rhs, label %land.lhs.true61.land.end70_crit_edge

land.lhs.true61.land.end70_crit_edge:             ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end70

land.rhs:                                         ; preds = %land.lhs.true61
  %tobool64.not = icmp eq ptr %ipu_state.0, null
  br i1 %tobool64.not, label %land.rhs.land.end70_crit_edge, label %land.rhs65

land.rhs.land.end70_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end70

land.rhs65:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %fb66 = getelementptr inbounds %struct.drm_plane_state, ptr %ipu_state.0, i32 0, i32 2
  %39 = ptrtoint ptr %fb66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fb66, align 4
  %tobool67 = icmp eq ptr %40, null
  br label %land.end70

land.end70:                                       ; preds = %land.rhs65, %land.rhs.land.end70_crit_edge, %land.lhs.true61.land.end70_crit_edge, %if.end58.land.end70_crit_edge
  %41 = phi i1 [ false, %land.lhs.true61.land.end70_crit_edge ], [ false, %if.end58.land.end70_crit_edge ], [ true, %land.rhs.land.end70_crit_edge ], [ %tobool67, %land.rhs65 ]
  %no_vblank = getelementptr i8, ptr %crtc, i32 1021
  %frombool71 = zext i1 %41 to i8
  %42 = ptrtoint ptr %no_vblank to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool71, ptr %no_vblank, align 1
  br label %cleanup

cleanup:                                          ; preds = %land.end70, %if.then52, %do.body40, %if.then32, %if.then23, %if.then17, %land.lhs.true11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ %20, %if.then17 ], [ %23, %if.then23 ], [ %28, %if.then32 ], [ -22, %if.then8 ], [ -22, %if.then52 ], [ 0, %land.end70 ], [ 0, %land.lhs.true11.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_crtc_atomic_begin(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_info = getelementptr i8, ptr %crtc, i32 1008
  %0 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_info, align 8
  %has_osd = getelementptr inbounds %struct.jz_soc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %has_osd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_osd, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %4 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %7, i32 3
  %8 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state.i, align 4
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %11 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %.not = icmp eq i8 %11, 0
  br i1 %.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %ipu_plane = getelementptr i8, ptr %crtc, i32 -8
  %12 = ptrtoint ptr %ipu_plane to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipu_plane, align 8
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %land.lhs.true4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true4:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %state6 = getelementptr inbounds %struct.drm_plane, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state6, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb, align 4
  %tobool7.not = icmp eq ptr %17, null
  %spec.select = select i1 %tobool7.not, i32 0, i32 32768
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4, %if.then.if.end_crit_edge
  %ctrl.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %spec.select, %land.lhs.true4 ]
  %map = getelementptr i8, ptr %crtc, i32 996
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 260, i32 noundef 32768, i32 noundef %ctrl.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %event2 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event2, align 4
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %9 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %.not = icmp eq i8 %9, 0
  br i1 %.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 24
  %10 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv.i = zext i16 %11 to i32
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 23
  %12 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv1.i = zext i16 %13 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 25
  %14 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %crtc_vtotal.i, align 4
  %conv2.i = zext i16 %15 to i32
  %sub5.i = sub nsw i32 %conv2.i, %conv1.i
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 20
  %16 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv6.i = zext i16 %17 to i32
  %add.i = add nsw i32 %sub5.i, %conv6.i
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 17
  %18 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %crtc_hsync_end.i, align 4
  %conv13.i = zext i16 %19 to i32
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 16
  %20 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv14.i = zext i16 %21 to i32
  %sub15.i = sub nsw i32 %conv13.i, %conv14.i
  %crtc_htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 18
  %22 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %crtc_htotal.i, align 2
  %conv16.i = zext i16 %23 to i32
  %sub19.i = sub nsw i32 %conv16.i, %conv14.i
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 13
  %24 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv20.i = zext i16 %25 to i32
  %add21.i = add nsw i32 %sub19.i, %conv20.i
  %map.i = getelementptr i8, ptr %crtc, i32 996
  %26 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 4, i32 noundef %sub.i) #11
  %28 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map.i, align 4
  %call31.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 8, i32 noundef %sub15.i) #11
  %30 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map.i, align 4
  %shl33.i = shl nuw i32 %conv16.i, 16
  %or35.i = or i32 %shl33.i, %conv2.i
  %call36.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 12, i32 noundef %or35.i) #11
  %32 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map.i, align 4
  %shl38.i = shl i32 %sub19.i, 16
  %or40.i = or i32 %shl38.i, %add21.i
  %call41.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 16, i32 noundef %or40.i) #11
  %34 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map.i, align 4
  %shl43.i = shl i32 %sub5.i, 16
  %or45.i = or i32 %shl43.i, %add.i
  %call46.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 20, i32 noundef %or45.i) #11
  %panel_is_sharp.i = getelementptr i8, ptr %crtc, i32 1020
  %36 = ptrtoint ptr %panel_is_sharp.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %panel_is_sharp.i, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.then.ingenic_drm_crtc_update_timings.exit_crit_edge, label %if.then.i

if.then.ingenic_drm_crtc_update_timings.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %ingenic_drm_crtc_update_timings.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map.i, align 4
  %shl48.i = shl i32 %add21.i, 16
  %add49.i = add nsw i32 %add21.i, 1
  %or50.i = or i32 %shl48.i, %add49.i
  %call51.i = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 24, i32 noundef %or50.i) #11
  %40 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map.i, align 4
  %call56.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 28, i32 noundef %or50.i) #11
  %42 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map.i, align 4
  %shl58.i = shl i32 %sub15.i, 16
  %add59.i = add nsw i32 %sub15.i, 1
  %or60.i = or i32 %shl58.i, %add59.i
  %call61.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 32, i32 noundef %or60.i) #11
  %44 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i, align 4
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 4
  %46 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %htotal.i, align 2
  %conv63.i = zext i16 %47 to i32
  %shl64.i = shl nuw i32 %conv63.i, 16
  %call65.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 36, i32 noundef %shl64.i) #11
  br label %ingenic_drm_crtc_update_timings.exit

ingenic_drm_crtc_update_timings.exit:             ; preds = %if.then.i, %if.then.ingenic_drm_crtc_update_timings.exit_crit_edge
  %48 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 48, i32 noundef 603979776, i32 noundef 603979776, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %50 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map.i, align 4
  %mul.i = mul i32 %sub.i, %conv16.i
  %div.i = udiv i32 %mul.i, 3
  %or70.i = or i32 %div.i, -2147483648
  %call71.i = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 284, i32 noundef %or70.i) #11
  %update_clk_rate = getelementptr i8, ptr %crtc, i32 1116
  %52 = ptrtoint ptr %update_clk_rate to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %update_clk_rate, align 4
  br label %if.end

if.end:                                           ; preds = %ingenic_drm_crtc_update_timings.exit, %entry.if.end_crit_edge
  %update_clk_rate4 = getelementptr i8, ptr %crtc, i32 1116
  %53 = ptrtoint ptr %update_clk_rate4 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %update_clk_rate4, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not = icmp eq i8 %54, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %clk_mutex = getelementptr i8, ptr %crtc, i32 1024
  tail call void @mutex_lock_nested(ptr noundef %clk_mutex, i32 noundef 0) #11
  %pix_clk = getelementptr i8, ptr %crtc, i32 1004
  %55 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pix_clk, align 4
  %crtc_clock = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 12
  %57 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %crtc_clock, align 4
  %mul = mul i32 %58, 1000
  %call7 = tail call i32 @clk_set_rate(ptr noundef %56, i32 noundef %mul) #11
  %59 = ptrtoint ptr %update_clk_rate4 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %update_clk_rate4, align 4
  tail call void @mutex_unlock(ptr noundef %clk_mutex) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end10.if.end19_crit_edge, label %if.then12

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then12:                                        ; preds = %if.end10
  %60 = ptrtoint ptr %event2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %event2, align 4
  %61 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #11
  %call14 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp eq i32 %call14, 0
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef nonnull %7) #11
  br label %if.end16

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %7) #11
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %63 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %crtc, align 8
  %event_lock18 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock18) #11
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %if.end10.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_crtc_atomic_enable(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_obj.i = getelementptr i8, ptr %crtc, i32 1132
  %call.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %private_obj.i) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end23, !prof !189

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 229, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %map = getelementptr i8, ptr %crtc, i32 996
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 52, i32 noundef 0) #11
  %use_palette = getelementptr inbounds %struct.ingenic_drm_private_state, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %use_palette to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_palette, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool25.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool25.not, i32 0, i32 32
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %dma_hwdescs_phys.i = getelementptr i8, ptr %crtc, i32 1016
  %6 = ptrtoint ptr %dma_hwdescs_phys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_hwdescs_phys.i, align 8
  %add.i = add i32 %7, %cond
  %call28 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 64, i32 noundef %add.i) #11
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %10 = ptrtoint ptr %dma_hwdescs_phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_hwdescs_phys.i, align 8
  %add.i46 = add i32 %11, 16
  %call31 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 80, i32 noundef %add.i46) #11
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 48, i32 noundef 24, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %var = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var) #11
  %0 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %var, align 4, !annotation !188
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #11
  %map = getelementptr i8, ptr %crtc, i32 996
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 48, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %call2 = tail call i64 @ktime_get() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 259) #11
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call1141 = call i32 @regmap_read(ptr noundef %4, i32 noundef 52, ptr noundef nonnull %var) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1141)
  %tobool.not42 = icmp eq i32 %call1141, 0
  br i1 %tobool.not42, label %entry.lor.lhs.false_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then24.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %var, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then24, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then24:                                        ; preds = %lor.lhs.false
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #11
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call11 = call i32 @regmap_read(ptr noundef %8, i32 noundef 52, ptr noundef nonnull %var) #11
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then24.lor.lhs.false_crit_edge, label %if.then24.for.end_crit_edge

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then24.lor.lhs.false_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

for.end:                                          ; preds = %if.then24.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %no_vblank = getelementptr i8, ptr %crtc, i32 1021
  %0 = ptrtoint ptr %no_vblank to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %no_vblank, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %map = getelementptr i8, ptr %crtc, i32 996
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 48, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr i8, ptr %crtc, i32 996
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 48, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_encoder_atomic_mode_set(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %crtc_state, ptr nocapture noundef readonly %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %bus_cfg = getelementptr inbounds %struct.ingenic_drm_bridge, ptr %encoder, i32 0, i32 3
  %flags = getelementptr inbounds %struct.ingenic_drm_bridge, ptr %encoder, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %panel_is_sharp = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 12
  %and.lobit = lshr exact i32 %and, 8
  %4 = trunc i32 %and.lobit to i8
  %5 = ptrtoint ptr %panel_is_sharp to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %panel_is_sharp, align 4
  %. = select i1 %tobool.not, i32 15728640, i32 4097
  %flags4 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 11
  %6 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4, align 4
  %and5 = shl i32 %7, 10
  %8 = and i32 %and5, 2048
  %9 = or i32 %8, %.
  %and10 = shl i32 %7, 5
  %10 = and i32 %and10, 256
  %11 = or i32 %9, %10
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and17 = shl i32 %13, 9
  %14 = and i32 %and17, 512
  %15 = or i32 %11, %14
  %and24 = shl i32 %13, 7
  %16 = and i32 %and24, 1024
  %17 = or i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool30.not = icmp eq i8 %4, 0
  br i1 %tobool30.not, label %if.then31, label %entry.if.end52_crit_edge

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then31:                                        ; preds = %entry
  %18 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn_state, align 4
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %21)
  %cmp = icmp eq i32 %21, 13
  br i1 %cmp, label %if.then32, label %if.else41

if.then32:                                        ; preds = %if.then31
  %and34 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else38, label %if.then36

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %or37 = or i32 %17, 6
  br label %if.end52

if.else38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %or39 = or i32 %17, 4
  br label %if.end52

if.else41:                                        ; preds = %if.then31
  %22 = ptrtoint ptr %bus_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_cfg, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %23, label %if.else41.if.end52_crit_edge [
    i32 4124, label %if.else41.sw.bb49_crit_edge
    i32 4105, label %sw.bb44
    i32 4106, label %sw.bb46
    i32 4125, label %sw.bb48
  ]

if.else41.sw.bb49_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb49

if.else41.if.end52_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

sw.bb44:                                          ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  %or45 = or i32 %17, 128
  br label %if.end52

sw.bb46:                                          ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  %or47 = or i32 %17, 64
  br label %if.end52

sw.bb48:                                          ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb49

sw.bb49:                                          ; preds = %sw.bb48, %if.else41.sw.bb49_crit_edge
  %rgbcfg.0 = phi i32 [ 0, %if.else41.sw.bb49_crit_edge ], [ 3, %sw.bb48 ]
  %or50 = or i32 %17, 12
  br label %if.end52

if.end52:                                         ; preds = %sw.bb49, %sw.bb46, %sw.bb44, %if.else41.if.end52_crit_edge, %if.else38, %if.then36, %entry.if.end52_crit_edge
  %cfg.5 = phi i32 [ %17, %entry.if.end52_crit_edge ], [ %or37, %if.then36 ], [ %or39, %if.else38 ], [ %or50, %sw.bb49 ], [ %or47, %sw.bb46 ], [ %or45, %sw.bb44 ], [ %17, %if.else41.if.end52_crit_edge ]
  %rgbcfg.1 = phi i32 [ 0, %entry.if.end52_crit_edge ], [ 0, %if.then36 ], [ 0, %if.else38 ], [ %rgbcfg.0, %sw.bb49 ], [ 0, %sw.bb46 ], [ 0, %sw.bb44 ], [ 0, %if.else41.if.end52_crit_edge ]
  %map = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map, align 4
  %call53 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 0, i32 noundef %cfg.5) #11
  %27 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map, align 4
  %call55 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 144, i32 noundef %rgbcfg.1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_bridge_attach(ptr nocapture noundef readonly %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr inbounds %struct.ingenic_drm_bridge, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %bridge2 = getelementptr inbounds %struct.ingenic_drm_bridge, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge2, i32 noundef %flags) #11
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_propagate_bus_fmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ingenic_drm_bridge_atomic_check(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readonly %bridge_state, ptr nocapture noundef %crtc_state, ptr nocapture noundef readonly %conn_state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %bus_cfg = getelementptr inbounds %struct.ingenic_drm_bridge, ptr %1, i32 0, i32 3
  %output_bus_cfg = getelementptr inbounds %struct.drm_bridge_state, ptr %bridge_state, i32 0, i32 3
  %2 = ptrtoint ptr %output_bus_cfg to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %output_bus_cfg, align 4
  %4 = ptrtoint ptr %bus_cfg to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %bus_cfg, align 4
  %5 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn_state, align 4
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %8)
  %cmp = icmp eq i32 %8, 13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %output_bus_cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_bus_cfg, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %10, label %sw.default [
    i32 4124, label %if.end.sw.bb_crit_edge
    i32 4125, label %if.end.sw.bb_crit_edge36
    i32 4119, label %if.end.cleanup_crit_edge
    i32 4105, label %if.end.cleanup_crit_edge37
    i32 4106, label %if.end.cleanup_crit_edge38
  ]

if.end.cleanup_crit_edge38:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup_crit_edge37:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.sw.bb_crit_edge36:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge36
  %12 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %13, 3
  %crtc_clock = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 12
  %14 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %crtc_clock, align 4
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hsync_start, align 2
  %mul2 = mul i16 %16, 3
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hdisplay, align 4
  %mul4.neg = mul i16 %18, -2
  %sub = add i16 %mul4.neg, %mul2
  %crtc_hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 16
  %19 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %sub, ptr %crtc_hsync_start, align 2
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hsync_end, align 4
  %mul7 = mul i16 %21, 3
  %sub11 = add i16 %mul7, %mul4.neg
  %crtc_hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 17
  %22 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %sub11, ptr %crtc_hsync_end, align 4
  %crtc_hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 13
  %23 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %18, ptr %crtc_hdisplay, align 4
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %htotal, align 2
  %mul15 = mul i16 %25, 3
  %sub19 = add i16 %mul15, %mul4.neg
  %crtc_htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 18
  %26 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %sub19, ptr %crtc_htotal, align 2
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge37, %if.end.cleanup_crit_edge38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge37 ], [ 0, %if.end.cleanup_crit_edge38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_wait_one_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ingenic_drm_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %call2 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 8, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_bind_with_components(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ingenic_drm_bind(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_drm_unbind(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pix_clk = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pix_clk, align 4
  %call1 = tail call ptr @clk_get_parent(ptr noundef %3) #11
  %clock_nb = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 16
  %call2 = tail call i32 @clk_notifier_unregister(ptr noundef %call1, ptr noundef %clock_nb) #11
  %lcd_clk = getelementptr inbounds %struct.ingenic_drm, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd_clk, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef nonnull %5) #11
  tail call void @clk_unprepare(ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %pix_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pix_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  tail call void @drm_dev_unregister(ptr noundef %1) #11
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_drm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_ingenic_drm__321_1498_ingenic_drm_init6, !1, !"__initcall__kmod_ingenic_drm__321_1498_ingenic_drm_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1498, i32 1}
!2 = !{ptr @__exitcall_ingenic_drm_exit, !3, !"__exitcall_ingenic_drm_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1507, i32 1}
!4 = !{ptr @__UNIQUE_ID_author322, !5, !"__UNIQUE_ID_author322", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1509, i32 1}
!6 = !{ptr @__UNIQUE_ID_description323, !7, !"__UNIQUE_ID_description323", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1510, i32 1}
!8 = !{ptr @__UNIQUE_ID_file324, !9, !"__UNIQUE_ID_file324", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1511, i32 1}
!10 = !{ptr @__UNIQUE_ID_license325, !9, !"__UNIQUE_ID_license325", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1478, i32 11}
!13 = !{ptr @ingenic_drm_driver, !14, !"ingenic_drm_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1476, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1020, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ingenic_drm_bind._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ingenic_drm_bind._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1028, i32 4}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ingenic_drm_bind._entry.6, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ingenic_drm_bind._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1061, i32 3}
!30 = !{ptr @ingenic_drm_bind._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ingenic_drm_bind._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ingenic_drm_bind._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1065, i32 14}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1068, i32 3}
!37 = !{ptr @ingenic_drm_bind._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ingenic_drm_bind._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1077, i32 37}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1079, i32 4}
!43 = !{ptr @ingenic_drm_bind._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ingenic_drm_bind._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1084, i32 36}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1086, i32 3}
!49 = !{ptr @ingenic_drm_bind._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ingenic_drm_bind._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1116, i32 3}
!53 = !{ptr @ingenic_drm_bind._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ingenic_drm_bind._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1128, i32 3}
!57 = !{ptr @ingenic_drm_bind._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ingenic_drm_bind._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1146, i32 4}
!61 = !{ptr @ingenic_drm_bind._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ingenic_drm_bind._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1158, i32 6}
!65 = !{ptr @ingenic_drm_bind._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ingenic_drm_bind._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1168, i32 5}
!69 = !{ptr @ingenic_drm_bind._entry.37, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ingenic_drm_bind._entry_ptr.39, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1180, i32 5}
!73 = !{ptr @ingenic_drm_bind._entry.40, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ingenic_drm_bind._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1192, i32 4}
!77 = !{ptr @ingenic_drm_bind._entry.43, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ingenic_drm_bind._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1207, i32 4}
!81 = !{ptr @ingenic_drm_bind._entry.46, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ingenic_drm_bind._entry_ptr.48, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1213, i32 4}
!85 = !{ptr @ingenic_drm_bind._entry.49, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ingenic_drm_bind._entry_ptr.51, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1230, i32 3}
!89 = !{ptr @ingenic_drm_bind._entry.52, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ingenic_drm_bind._entry_ptr.54, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.56, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1236, i32 3}
!93 = !{ptr @ingenic_drm_bind._entry.55, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ingenic_drm_bind._entry_ptr.57, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1244, i32 3}
!97 = !{ptr @ingenic_drm_bind._entry.58, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ingenic_drm_bind._entry_ptr.60, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.62, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1259, i32 4}
!101 = !{ptr @ingenic_drm_bind._entry.61, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ingenic_drm_bind._entry_ptr.63, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.65, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1265, i32 4}
!105 = !{ptr @ingenic_drm_bind._entry.64, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ingenic_drm_bind._entry_ptr.66, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @ingenic_drm_bind.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1274, i32 2}
!109 = !{ptr @.str.67, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.69, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1280, i32 3}
!112 = !{ptr @ingenic_drm_bind._entry.68, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ingenic_drm_bind._entry_ptr.70, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1293, i32 8}
!116 = !{ptr @.str.73, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1300, i32 3}
!118 = !{ptr @ingenic_drm_bind._entry.72, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ingenic_drm_bind._entry_ptr.74, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.75, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 875, i32 12}
!122 = !{ptr @.str.76, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 876, i32 12}
!124 = !{ptr @ingenic_drm_driver_data, !125, !"ingenic_drm_driver_data", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 872, i32 32}
!126 = !{ptr @ingenic_drm_fops, !127, !"ingenic_drm_fops", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 870, i32 1}
!128 = !{ptr @ingenic_drm_mode_config_funcs, !129, !"ingenic_drm_mode_config_funcs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 937, i32 43}
!130 = !{ptr @ingenic_drm_mode_config_helpers, !131, !"ingenic_drm_mode_config_helpers", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 944, i32 44}
!132 = !{ptr @ingenic_drm_regmap_config, !133, !"ingenic_drm_regmap_config", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 171, i32 35}
!134 = !{ptr @ingenic_drm_plane_helper_funcs, !135, !"ingenic_drm_plane_helper_funcs", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 909, i32 44}
!136 = !{ptr @ingenic_drm_primary_plane_funcs, !137, !"ingenic_drm_primary_plane_funcs", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 886, i32 37}
!138 = !{ptr @ingenic_drm_crtc_helper_funcs, !139, !"ingenic_drm_crtc_helper_funcs", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 915, i32 43}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 325, i32 3}
!142 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.79, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @ingenic_drm_crtc_atomic_check.__UNIQUE_ID_ddebug319, !141, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 348, i32 5}
!147 = !{ptr @ingenic_drm_crtc_atomic_check.__UNIQUE_ID_ddebug320, !146, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!148 = !{ptr @ingenic_drm_crtc_funcs, !149, !"ingenic_drm_crtc_funcs", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 896, i32 36}
!150 = !{ptr @ingenic_drm_encoder_helper_funcs, !151, !"ingenic_drm_encoder_helper_funcs", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 924, i32 46}
!152 = !{ptr @ingenic_drm_bridge_funcs, !153, !"ingenic_drm_bridge_funcs", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 928, i32 38}
!154 = !{ptr @ingenic_drm_private_state_funcs, !155, !"ingenic_drm_private_state_funcs", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 948, i32 45}
!156 = !{ptr @ingenic_master_ops, !157, !"ingenic_master_ops", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1344, i32 42}
!158 = !{ptr @ingenic_drm_of_match, !159, !"ingenic_drm_of_match", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1468, i32 34}
!160 = !{ptr @jz4740_soc_info, !161, !"jz4740_soc_info", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1433, i32 33}
!162 = !{ptr @jz4740_formats, !163, !"jz4740_formats", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1397, i32 18}
!164 = !{ptr @jz4725b_soc_info, !165, !"jz4725b_soc_info", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1444, i32 33}
!166 = !{ptr @jz4725b_formats_f0, !167, !"jz4725b_formats_f0", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1409, i32 18}
!168 = !{ptr @jz4725b_formats_f1, !169, !"jz4725b_formats_f1", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1403, i32 18}
!170 = !{ptr @jz4770_soc_info, !171, !"jz4770_soc_info", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1456, i32 33}
!172 = !{ptr @jz4770_formats_f0, !173, !"jz4770_formats_f0", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1424, i32 18}
!174 = !{ptr @jz4770_formats_f1, !175, !"jz4770_formats_f1", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1416, i32 18}
!176 = !{ptr @ingenic_drm_pm_ops, !177, !"ingenic_drm_pm_ops", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/ingenic/ingenic-drm-drv.c", i32 1395, i32 8}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i8 0, i8 2}
!188 = !{!"auto-init"}
!189 = !{!"branch_weights", i32 1, i32 2000}
!190 = !{i64 2148772586, i64 2148772591, i64 2148772604, i64 2148772648, i64 2148772682, i64 2148772703}
