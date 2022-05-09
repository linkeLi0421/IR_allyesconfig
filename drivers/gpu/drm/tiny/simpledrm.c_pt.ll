; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tiny/simpledrm.c_pt.bc'
source_filename = "../drivers/gpu/drm/tiny/simpledrm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.simplefb_format = type { ptr, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32 }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.simpledrm_device = type { %struct.drm_device, ptr, i32, ptr, i32, ptr, %struct.drm_display_mode, ptr, i32, ptr, ptr, [8 x i32], i32, %struct.drm_connector, %struct.drm_simple_display_pipe }
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
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.simplefb_platform_data = type { i32, i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.87, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.87 = type { [4 x i8] }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_shadow_plane_state = type { %struct.drm_plane_state, [4 x %struct.dma_buf_map], [4 x %struct.dma_buf_map] }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }

@__initcall__kmod_simpledrm__324_919_simpledrm_platform_driver_init6 = internal global ptr @simpledrm_platform_driver_init, section ".initcall6.init", align 4
@simpledrm_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @simpledrm_probe, ptr @simpledrm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @simpledrm_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_simpledrm_platform_driver_exit = internal global ptr @simpledrm_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description325 = internal constant [73 x i8] c"simpledrm.description=DRM driver for simple-framebuffer platform devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [46 x i8] c"simpledrm.file=drivers/gpu/drm/tiny/simpledrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [25 x i8] c"simpledrm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"simple-framebuffer\00", [45 x i8] zeroinitializer }, align 32
@simpledrm_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-framebuffer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@simpledrm_driver = internal global { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_shmem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_shmem_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.47, ptr @.str.48, ptr @.str.49, i32 19, ptr null, i32 0, ptr @simpledrm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@simpledrm_device_init_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[drm] *ERROR* clock %u not found: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"simpledrm_device_init_clocks\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/tiny/simpledrm.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@simpledrm_device_init_clocks._entry_ptr = internal global ptr @simpledrm_device_init_clocks._entry, section ".printk_index", align 4
@simpledrm_device_init_clocks._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[drm] *ERROR* failed to enable clock %u: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@simpledrm_device_init_clocks._entry_ptr.8 = internal global ptr @simpledrm_device_init_clocks._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"-supply\00", [24 x i8] zeroinitializer }, align 32
@simpledrm_device_init_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[drm] *ERROR* regulator %s not found: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"simpledrm_device_init_regulators\00", [63 x i8] zeroinitializer }, align 32
@simpledrm_device_init_regulators._entry_ptr = internal global ptr @simpledrm_device_init_regulators._entry, section ".printk_index", align 4
@simpledrm_device_init_regulators._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[drm] *ERROR* failed to enable regulator %u: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@simpledrm_device_init_regulators._entry_ptr.14 = internal global ptr @simpledrm_device_init_regulators._entry.12, section ".printk_index", align 4
@simpledrm_device_init_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[drm] *ERROR* no simplefb configuration found\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"simpledrm_device_init_fb\00", [39 x i8] zeroinitializer }, align 32
@simpledrm_device_init_fb._entry_ptr = internal global ptr @simpledrm_device_init_fb._entry, section ".printk_index", align 4
@.str.17 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"display mode={\22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x}\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"framebuffer format=%p4cc, size=%dx%d, stride=%d byte\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"width\00", [26 x i8] zeroinitializer }, align 32
@simplefb_get_validated_int0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[drm] *ERROR* simplefb: invalid framebuffer %s of %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"simplefb_get_validated_int0\00", [36 x i8] zeroinitializer }, align 32
@simplefb_get_validated_int0._entry_ptr = internal global ptr @simplefb_get_validated_int0._entry, section ".printk_index", align 4
@simplefb_get_validated_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.3, i32 52, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"simplefb_get_validated_int\00", [37 x i8] zeroinitializer }, align 32
@simplefb_get_validated_int._entry_ptr = internal global ptr @simplefb_get_validated_int._entry, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"height\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stride\00", [25 x i8] zeroinitializer }, align 32
@simplefb_get_validated_format.formats = internal constant { [10 x %struct.simplefb_format], [136 x i8] } { [10 x %struct.simplefb_format] [%struct.simplefb_format { ptr @.str.25, i32 16, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 909199186 }, %struct.simplefb_format { ptr @.str.26, i32 16, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 6, i32 5, i32 0 }, %struct.fb_bitfield { i32 1, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, i32 892420434 }, %struct.simplefb_format { ptr @.str.27, i32 16, %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 892424792 }, %struct.simplefb_format { ptr @.str.28, i32 16, %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield { i32 15, i32 1, i32 0 }, i32 892424769 }, %struct.simplefb_format { ptr @.str.29, i32 24, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 875710290 }, %struct.simplefb_format { ptr @.str.30, i32 32, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 875713112 }, %struct.simplefb_format { ptr @.str.31, i32 32, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 24, i32 8, i32 0 }, i32 875713089 }, %struct.simplefb_format { ptr @.str.32, i32 32, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 24, i32 8, i32 0 }, i32 875708993 }, %struct.simplefb_format { ptr @.str.33, i32 32, %struct.fb_bitfield { i32 20, i32 10, i32 0 }, %struct.fb_bitfield { i32 10, i32 10, i32 0 }, %struct.fb_bitfield { i32 0, i32 10, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 808669784 }, %struct.simplefb_format { ptr @.str.34, i32 32, %struct.fb_bitfield { i32 20, i32 10, i32 0 }, %struct.fb_bitfield { i32 10, i32 10, i32 0 }, %struct.fb_bitfield { i32 0, i32 10, i32 0 }, %struct.fb_bitfield { i32 30, i32 2, i32 0 }, i32 808669761 }], [136 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r5g6b5\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r5g5b5a1\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"x1r5g5b5\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a1r5g5b5\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r8g8b8\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"x8r8g8b8\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a8r8g8b8\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a8b8g8r8\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"x2r10g10b10\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a2r10g10b10\00", [20 x i8] zeroinitializer }, align 32
@simplefb_get_validated_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 79, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[drm] *ERROR* simplefb: missing framebuffer format\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"simplefb_get_validated_format\00", [34 x i8] zeroinitializer }, align 32
@simplefb_get_validated_format._entry_ptr = internal global ptr @simplefb_get_validated_format._entry, section ".printk_index", align 4
@simplefb_get_validated_format._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[drm] *ERROR* simplefb: unknown framebuffer format %s\0A\00", [41 x i8] zeroinitializer }, align 32
@simplefb_get_validated_format._entry_ptr.39 = internal global ptr @simplefb_get_validated_format._entry.37, section ".printk_index", align 4
@simplefb_read_u32_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[drm] *ERROR* simplefb: cannot parse framebuffer %s: error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"simplefb_read_u32_of\00", [43 x i8] zeroinitializer }, align 32
@simplefb_read_u32_of._entry_ptr = internal global ptr @simplefb_read_u32_of._entry, section ".printk_index", align 4
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@simplefb_read_string_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.43, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"simplefb_read_string_of\00", [40 x i8] zeroinitializer }, align 32
@simplefb_read_string_of._entry_ptr = internal global ptr @simplefb_read_string_of._entry, section ".printk_index", align 4
@simpledrm_device_init_mm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 540, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[drm] *ERROR* could not acquire memory range %pr: error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"simpledrm_device_init_mm\00", [39 x i8] zeroinitializer }, align 32
@simpledrm_device_init_mm._entry_ptr = internal global ptr @simpledrm_device_init_mm._entry, section ".printk_index", align 4
@simpledrm_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create_with_dirty, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@simpledrm_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@simpledrm_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @simpledrm_connector_helper_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@simpledrm_simple_display_pipe_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr @simpledrm_simple_display_pipe_mode_valid, ptr @simpledrm_simple_display_pipe_enable, ptr @simpledrm_simple_display_pipe_disable, ptr null, ptr @simpledrm_simple_display_pipe_update, ptr @drm_gem_simple_kms_prepare_shadow_fb, ptr @drm_gem_simple_kms_cleanup_shadow_fb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_simple_kms_reset_shadow_plane, ptr @drm_gem_simple_kms_duplicate_shadow_plane_state, ptr @drm_gem_simple_kms_destroy_shadow_plane_state }, [36 x i8] zeroinitializer }, align 32
@simpledrm_format_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@simpledrm_device_formats.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s %s: format conversion helpers required for %p4cc\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"simpledrm\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DRM driver for simple-framebuffer platform devices\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20200625\00", [23 x i8] zeroinitializer }, align 32
@simpledrm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant [26 x i8] c"simpledrm_platform_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 910, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 912, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"simpledrm_of_match_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 904, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"simpledrm_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 859, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 299, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 304, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 386, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 415, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 422, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 504, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 512, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 514, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 103, i32 42 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 63, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 51, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 110, i32 42 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 117, i32 41 }
@___asan_gen_.143 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 73, i32 38 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 73, i32 50 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 79, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 93, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 134, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 188, i32 50 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 146, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 539, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [28 x i8] c"simpledrm_mode_config_funcs\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 725, i32 43 }
@___asan_gen_.221 = private unnamed_addr constant [26 x i8] c"simpledrm_connector_funcs\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 610, i32 41 }
@___asan_gen_.224 = private unnamed_addr constant [33 x i8] c"simpledrm_connector_helper_funcs\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 606, i32 48 }
@___asan_gen_.227 = private unnamed_addr constant [36 x i8] c"simpledrm_simple_display_pipe_funcs\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 717, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant [27 x i8] c"simpledrm_format_modifiers\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 578, i32 23 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 759, i32 6 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 861, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 862, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 863, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant [15 x i8] c"simpledrm_fops\00", align 1
@___asan_gen_.246 = private constant [36 x i8] c"../drivers/gpu/drm/tiny/simpledrm.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 857, i32 1 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__exitcall_simpledrm_platform_driver_exit, ptr @__initcall__kmod_simpledrm__324_919_simpledrm_platform_driver_init6, ptr @simpledrm_device_init_clocks._entry, ptr @simpledrm_device_init_clocks._entry.6, ptr @simpledrm_device_init_clocks._entry_ptr, ptr @simpledrm_device_init_clocks._entry_ptr.8, ptr @simpledrm_device_init_fb._entry, ptr @simpledrm_device_init_fb._entry_ptr, ptr @simpledrm_device_init_mm._entry, ptr @simpledrm_device_init_mm._entry_ptr, ptr @simpledrm_device_init_regulators._entry, ptr @simpledrm_device_init_regulators._entry.12, ptr @simpledrm_device_init_regulators._entry_ptr, ptr @simpledrm_device_init_regulators._entry_ptr.14, ptr @simpledrm_platform_driver_exit, ptr @simplefb_get_validated_format._entry, ptr @simplefb_get_validated_format._entry.37, ptr @simplefb_get_validated_format._entry_ptr, ptr @simplefb_get_validated_format._entry_ptr.39, ptr @simplefb_get_validated_int._entry, ptr @simplefb_get_validated_int._entry_ptr, ptr @simplefb_get_validated_int0._entry, ptr @simplefb_get_validated_int0._entry_ptr, ptr @simplefb_read_string_of._entry, ptr @simplefb_read_string_of._entry_ptr, ptr @simplefb_read_u32_of._entry, ptr @simplefb_read_u32_of._entry_ptr, ptr @simpledrm_platform_driver, ptr @.str, ptr @simpledrm_of_match_table, ptr @simpledrm_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @simplefb_get_validated_format.formats, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @simpledrm_mode_config_funcs, ptr @simpledrm_connector_funcs, ptr @simpledrm_connector_helper_funcs, ptr @simpledrm_simple_display_pipe_funcs, ptr @simpledrm_format_modifiers, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @simpledrm_fops], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_device_init_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_device_init_clocks._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_device_init_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_device_init_regulators._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_device_init_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simplefb_get_validated_int0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simplefb_get_validated_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simplefb_get_validated_format.formats to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simplefb_get_validated_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simplefb_get_validated_format._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simplefb_read_u32_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simplefb_read_string_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_device_init_mm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_simple_display_pipe_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_format_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simpledrm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @simpledrm_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @simpledrm_platform_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @simpledrm_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @simpledrm_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simpledrm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %format.i165.i.i = alloca ptr, align 4
  %stride.i157.i.i = alloca i32, align 4
  %height.i148.i.i = alloca i32, align 4
  %width.i.i.i = alloca i32, align 4
  %tmp.i.i = alloca %struct.drm_display_mode, align 4
  %name25.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev.i, ptr noundef nonnull @simpledrm_driver, i32 noundef 5160, i32 noundef 0) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.simpledrm_device_create.exit_crit_edge, label %if.end.i

entry.simpledrm_device_create.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %simpledrm_device_create.exit

if.end.i:                                         ; preds = %entry
  %pdev3.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %pdev3.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev3.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  %2 = load ptr, ptr %pdev3.i, align 4
  %dev3.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %of_node4.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node4.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node4.i.i, align 8
  %platform_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i.i.i, align 8
  %tobool.not.i.i = icmp ne ptr %6, null
  %tobool6.not.i.i = icmp eq ptr %4, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool6.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.if.end7.i_crit_edge, label %if.end.i.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.end.i.i:                                       ; preds = %if.end.i
  %call7.i.i = tail call i32 @of_clk_get_parent_count(ptr noundef nonnull %4) #8
  %clk_count.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %clk_count.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call7.i.i, ptr %clk_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool9.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.end7.i_crit_edge, label %if.end11.i.i

if.end.i.i.if.end7.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %mul.i.i = shl i32 %call7.i.i, 2
  %call.i.i.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %call.i, i32 noundef %mul.i.i, i32 noundef 3520) #8
  %clks.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %clks.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %clks.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool15.not.i.i, label %if.end11.i.i.if.then5.i_crit_edge, label %for.cond.preheader.i.i

if.end11.i.i.if.then5.i_crit_edge:                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

for.cond.preheader.i.i:                           ; preds = %if.end11.i.i
  %9 = ptrtoint ptr %clk_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp103.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp103.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %dev34.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0104.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call19.i.i = tail call ptr @of_clk_get(ptr noundef nonnull %4, i32 noundef %i.0104.i.i) #8
  %cmp.i.i.i = icmp ugt ptr %call19.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then21.i.i, label %if.end27.i.i

if.then21.i.i:                                    ; preds = %for.body.i.i
  %cmp23.i.i = icmp eq ptr %call19.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp23.i.i, label %while.cond.preheader.i.i, label %do.end.i.i

while.cond.preheader.i.i:                         ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0104.i.i)
  %tobool39.not106.i.i = icmp eq i32 %i.0104.i.i, 0
  br i1 %tobool39.not106.i.i, label %while.cond.preheader.i.i.if.then5.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.if.then5.i_crit_edge:    ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

do.end.i.i:                                       ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call19.i.i to i32
  %12 = ptrtoint ptr %dev34.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev34.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef %i.0104.i.i, i32 noundef %11) #11
  br label %for.inc.i.i

if.end27.i.i:                                     ; preds = %for.body.i.i
  %call.i91.i.i = tail call i32 @clk_prepare(ptr noundef %call19.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i91.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end27.i.i.do.end33.i.i_crit_edge

if.end27.i.i.do.end33.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33.i.i

if.end.i.i.i:                                     ; preds = %if.end27.i.i
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %call19.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end35.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call19.i.i) #8
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then3.i.i.i, %if.end27.i.i.do.end33.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call1.i.i.i, %if.then3.i.i.i ], [ %call.i91.i.i, %if.end27.i.i.do.end33.i.i_crit_edge ]
  %14 = ptrtoint ptr %dev34.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev34.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7, i32 noundef %i.0104.i.i, i32 noundef %retval.0.i.ph.i.i) #11
  tail call void @clk_put(ptr noundef %call19.i.i) #8
  br label %for.inc.i.i

if.end35.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %clks.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clks.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %17, i32 %i.0104.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call19.i.i, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end35.i.i, %do.end33.i.i, %do.end.i.i
  %inc.i.i = add nuw i32 %i.0104.i.i, 1
  %19 = ptrtoint ptr %clk_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_count.i.i, align 8
  %cmp.i1.i = icmp ult i32 %inc.i.i, %20
  br i1 %cmp.i1.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %call.i92.i.i = tail call i32 @devm_add_action(ptr noundef %dev3.i.i, ptr noundef nonnull @simpledrm_device_release_clocks, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i.i)
  %tobool.not.i93.i.i = icmp eq i32 %call.i92.i.i, 0
  br i1 %tobool.not.i93.i.i, label %for.end.i.i.if.end7.i_crit_edge, label %if.then.i.i.i

for.end.i.i.if.end7.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i.i.i:                                    ; preds = %for.end.i.i
  %21 = ptrtoint ptr %clk_count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clk_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp12.not.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp12.not.i.i.i, label %if.then.i.i.i.if.then5.i_crit_edge, label %if.then.i.i.i.for.body.i.i.i_crit_edge

if.then.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  br label %for.body.i.i.i

if.then.i.i.i.if.then5.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i_crit_edge
  %i.013.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.i.for.body.i.i.i_crit_edge ]
  %23 = ptrtoint ptr %clks.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clks.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %24, i32 %i.013.i.i.i
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i95.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i95.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i96.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.then.i96.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %26) #8
  tail call void @clk_unprepare(ptr noundef nonnull %26) #8
  %27 = ptrtoint ptr %clks.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clks.i.i, align 4
  %arrayidx4.i.i.i = getelementptr ptr, ptr %28, i32 %i.013.i.i.i
  %29 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx4.i.i.i, align 4
  tail call void @clk_put(ptr noundef %30) #8
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i96.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.013.i.i.i, 1
  %31 = ptrtoint ptr %clk_count.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %clk_count.i.i, align 8
  %cmp.i97.i.i = icmp ult i32 %inc.i.i.i, %32
  br i1 %cmp.i97.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.if.then5.i_crit_edge

for.inc.i.i.i.if.then5.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

while.body.i.i:                                   ; preds = %if.end48.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %i.1107.i.i = phi i32 [ %dec.i.i, %if.end48.i.i.while.body.i.i_crit_edge ], [ %i.0104.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %i.1107.i.i, -1
  %33 = ptrtoint ptr %clks.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clks.i.i, align 4
  %arrayidx41.i.i = getelementptr ptr, ptr %34, i32 %dec.i.i
  %35 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx41.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %36, null
  br i1 %tobool42.not.i.i, label %while.body.i.i.if.end48.i.i_crit_edge, label %if.then43.i.i

while.body.i.i.if.end48.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

if.then43.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %36) #8
  tail call void @clk_unprepare(ptr noundef nonnull %36) #8
  %37 = ptrtoint ptr %clks.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clks.i.i, align 4
  %arrayidx47.i.i = getelementptr ptr, ptr %38, i32 %dec.i.i
  %39 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx47.i.i, align 4
  tail call void @clk_put(ptr noundef %40) #8
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then43.i.i, %while.body.i.i.if.end48.i.i_crit_edge
  %tobool39.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end48.i.i.if.then5.i_crit_edge, label %if.end48.i.i.while.body.i.i_crit_edge

if.end48.i.i.while.body.i.i_crit_edge:            ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end48.i.i.if.then5.i_crit_edge:                ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end48.i.i.if.then5.i_crit_edge, %for.inc.i.i.i.if.then5.i_crit_edge, %if.then.i.i.i.if.then5.i_crit_edge, %while.cond.preheader.i.i.if.then5.i_crit_edge, %if.end11.i.i.if.then5.i_crit_edge
  %retval.0.i53.i = phi i32 [ -517, %while.cond.preheader.i.i.if.then5.i_crit_edge ], [ %call.i92.i.i, %if.then.i.i.i.if.then5.i_crit_edge ], [ -12, %if.end11.i.i.if.then5.i_crit_edge ], [ %call.i92.i.i, %for.inc.i.i.i.if.then5.i_crit_edge ], [ -517, %if.end48.i.i.if.then5.i_crit_edge ]
  %41 = inttoptr i32 %retval.0.i53.i to ptr
  br label %simpledrm_device_create.exit

if.end7.i:                                        ; preds = %for.end.i.i.if.end7.i_crit_edge, %if.end.i.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %42 = ptrtoint ptr %pdev3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev3.i, align 4
  %dev3.i3.i = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  %of_node4.i4.i = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3, i32 27
  %44 = ptrtoint ptr %of_node4.i4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node4.i4.i, align 8
  %platform_data.i.i5.i = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3, i32 7
  %46 = ptrtoint ptr %platform_data.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %platform_data.i.i5.i, align 8
  %tobool.not.i6.i = icmp ne ptr %47, null
  %tobool6.not.i7.i = icmp eq ptr %45, null
  %or.cond.i8.i = select i1 %tobool.not.i6.i, i1 true, i1 %tobool6.not.i7.i
  br i1 %or.cond.i8.i, label %if.end7.i.if.end12.i_crit_edge, label %if.end.i9.i

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end.i9.i:                                      ; preds = %if.end7.i
  %properties.i.i = getelementptr inbounds %struct.device_node, ptr %45, i32 0, i32 4
  %48 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %prop.0149.i.i = load ptr, ptr %properties.i.i, align 4
  %cmp.not150.i.i = icmp eq ptr %prop.0149.i.i, null
  br i1 %cmp.not150.i.i, label %if.end.i9.i.if.end12.i_crit_edge, label %if.end.i9.i.for.body.i12.i_crit_edge

if.end.i9.i.for.body.i12.i_crit_edge:             ; preds = %if.end.i9.i
  br label %for.body.i12.i

if.end.i9.i.if.end12.i_crit_edge:                 ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

for.body.i12.i:                                   ; preds = %for.body.i12.i.for.body.i12.i_crit_edge, %if.end.i9.i.for.body.i12.i_crit_edge
  %prop.0152.i.i = phi ptr [ %prop.0.i.i, %for.body.i12.i.for.body.i12.i_crit_edge ], [ %prop.0149.i.i, %if.end.i9.i.for.body.i12.i_crit_edge ]
  %count.0151.i.i = phi i32 [ %count.1.i.i, %for.body.i12.i.for.body.i12.i_crit_edge ], [ 0, %if.end.i9.i.for.body.i12.i_crit_edge ]
  %49 = ptrtoint ptr %prop.0152.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prop.0152.i.i, align 4
  %call7.i10.i = tail call ptr @strstr(ptr noundef %50, ptr noundef nonnull @.str.9) #8
  %tobool8.not.i.i = icmp ne ptr %call7.i10.i, null
  %cmp10.not.i.i = icmp ne ptr %call7.i10.i, %50
  %not.or.cond136.i.i = and i1 %tobool8.not.i.i, %cmp10.not.i.i
  %inc.i11.i = zext i1 %not.or.cond136.i.i to i32
  %count.1.i.i = add i32 %count.0151.i.i, %inc.i11.i
  %next.i.i = getelementptr inbounds %struct.property, ptr %prop.0152.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %prop.0.i.i = load ptr, ptr %next.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %prop.0.i.i, null
  br i1 %cmp.not.i.i, label %for.end.i13.i, label %for.body.i12.i.for.body.i12.i_crit_edge

for.body.i12.i.for.body.i12.i_crit_edge:          ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i12.i

for.end.i13.i:                                    ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i.i)
  %tobool13.not.i.i = icmp eq i32 %count.1.i.i, 0
  br i1 %tobool13.not.i.i, label %for.end.i13.i.if.end12.i_crit_edge, label %if.end15.i.i

for.end.i13.i.if.end12.i_crit_edge:               ; preds = %for.end.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end15.i.i:                                     ; preds = %for.end.i13.i
  %mul.i14.i = shl i32 %count.1.i.i, 2
  %call.i.i15.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %call.i, i32 noundef %mul.i14.i, i32 noundef 3520) #8
  %regulators.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 5
  %52 = ptrtoint ptr %regulators.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i15.i, ptr %regulators.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %call.i.i15.i, null
  br i1 %tobool18.not.i.i, label %if.end15.i.i.if.then10.i_crit_edge, label %for.cond22.preheader.i.i

if.end15.i.i.if.then10.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

for.cond22.preheader.i.i:                         ; preds = %if.end15.i.i
  %53 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %prop.1153.i.i = load ptr, ptr %properties.i.i, align 4
  %cmp23.not154.i.i = icmp eq ptr %prop.1153.i.i, null
  br i1 %cmp23.not154.i.i, label %for.cond22.preheader.i.i.for.end64.i.i_crit_edge, label %for.body24.lr.ph.i.i

for.cond22.preheader.i.i.for.end64.i.i_crit_edge: ; preds = %for.cond22.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64.i.i

for.body24.lr.ph.i.i:                             ; preds = %for.cond22.preheader.i.i
  %dev57.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  br label %for.body24.i.i

for.body24.i.i:                                   ; preds = %for.inc62.i.i.for.body24.i.i_crit_edge, %for.body24.lr.ph.i.i
  %prop.1156.i.i = phi ptr [ %prop.1153.i.i, %for.body24.lr.ph.i.i ], [ %prop.1.i.i, %for.inc62.i.i.for.body24.i.i_crit_edge ]
  %i.0155.i.i = phi i32 [ 0, %for.body24.lr.ph.i.i ], [ %i.1.ph.i.i, %for.inc62.i.i.for.body24.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name25.i.i) #8
  %54 = call ptr @memset(ptr %name25.i.i, i32 255, i32 32)
  %55 = ptrtoint ptr %prop.1156.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prop.1156.i.i, align 4
  %call27.i.i = call ptr @strstr(ptr noundef %56, ptr noundef nonnull @.str.9) #8
  %tobool28.not.i.i = icmp eq ptr %call27.i.i, null
  %cmp31.i.i = icmp eq ptr %call27.i.i, %56
  %or.cond137.i.i = or i1 %tobool28.not.i.i, %cmp31.i.i
  br i1 %or.cond137.i.i, label %for.body24.i.i.for.inc62.i.i_crit_edge, label %if.end33.i.i

for.body24.i.i.for.inc62.i.i_crit_edge:           ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.i.i

if.end33.i.i:                                     ; preds = %for.body24.i.i
  %call35.i.i = call i32 @strlen(ptr noundef %56) #12
  %add.i.i = add i32 %call35.i.i, -6
  %57 = call i32 @llvm.umin.i32(i32 %add.i.i, i32 32) #8
  %call38.i.i = call i32 @strscpy(ptr noundef nonnull %name25.i.i, ptr noundef %56, i32 noundef %57) #8
  %call41.i.i = call ptr @regulator_get_optional(ptr noundef %dev3.i3.i, ptr noundef nonnull %name25.i.i) #8
  %cmp.i.i16.i = icmp ugt ptr %call41.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i16.i, label %if.then43.i17.i, label %if.end50.i.i

if.then43.i17.i:                                  ; preds = %if.end33.i.i
  %cmp45.i.i = icmp eq ptr %call41.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp45.i.i, label %cleanup.i.i, label %do.end.i18.i

do.end.i18.i:                                     ; preds = %if.then43.i17.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %call41.i.i to i32
  %59 = ptrtoint ptr %dev57.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev57.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.10, ptr noundef nonnull %name25.i.i, i32 noundef %58) #11
  br label %for.inc62.i.i

if.end50.i.i:                                     ; preds = %if.end33.i.i
  %call51.i.i = call i32 @regulator_enable(ptr noundef %call41.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %tobool52.not.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %tobool52.not.i.i, label %if.end58.i.i, label %do.end56.i.i

do.end56.i.i:                                     ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %dev57.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev57.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.13, i32 noundef %i.0155.i.i, i32 noundef %call51.i.i) #11
  call void @regulator_put(ptr noundef %call41.i.i) #8
  br label %for.inc62.i.i

if.end58.i.i:                                     ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %regulators.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regulators.i.i, align 4
  %inc60.i.i = add i32 %i.0155.i.i, 1
  %arrayidx.i19.i = getelementptr ptr, ptr %64, i32 %i.0155.i.i
  %65 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call41.i.i, ptr %arrayidx.i19.i, align 4
  br label %for.inc62.i.i

cleanup.i.i:                                      ; preds = %if.then43.i17.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name25.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0155.i.i)
  %tobool67.not158.i.i = icmp eq i32 %i.0155.i.i, 0
  br i1 %tobool67.not158.i.i, label %cleanup.i.i.if.then10.i_crit_edge, label %cleanup.i.i.while.body.i27.i_crit_edge

cleanup.i.i.while.body.i27.i_crit_edge:           ; preds = %cleanup.i.i
  br label %while.body.i27.i

cleanup.i.i.if.then10.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

for.inc62.i.i:                                    ; preds = %if.end58.i.i, %do.end56.i.i, %do.end.i18.i, %for.body24.i.i.for.inc62.i.i_crit_edge
  %i.1.ph.i.i = phi i32 [ %i.0155.i.i, %for.body24.i.i.for.inc62.i.i_crit_edge ], [ %inc60.i.i, %if.end58.i.i ], [ %i.0155.i.i, %do.end56.i.i ], [ %i.0155.i.i, %do.end.i18.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name25.i.i) #8
  %next63.i.i = getelementptr inbounds %struct.property, ptr %prop.1156.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %next63.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %prop.1.i.i = load ptr, ptr %next63.i.i, align 4
  %cmp23.not.i.i = icmp eq ptr %prop.1.i.i, null
  br i1 %cmp23.not.i.i, label %for.inc62.i.i.for.end64.i.i_crit_edge, label %for.inc62.i.i.for.body24.i.i_crit_edge

for.inc62.i.i.for.body24.i.i_crit_edge:           ; preds = %for.inc62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.i.i

for.inc62.i.i.for.end64.i.i_crit_edge:            ; preds = %for.inc62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64.i.i

for.end64.i.i:                                    ; preds = %for.inc62.i.i.for.end64.i.i_crit_edge, %for.cond22.preheader.i.i.for.end64.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %for.cond22.preheader.i.i.for.end64.i.i_crit_edge ], [ %i.1.ph.i.i, %for.inc62.i.i.for.end64.i.i_crit_edge ]
  %regulator_count.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 4
  %67 = ptrtoint ptr %regulator_count.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %i.0.lcssa.i.i, ptr %regulator_count.i.i, align 8
  %call.i138.i.i = call i32 @devm_add_action(ptr noundef %dev3.i3.i, ptr noundef nonnull @simpledrm_device_release_regulators, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i.i)
  %tobool.not.i.i20.i = icmp eq i32 %call.i138.i.i, 0
  br i1 %tobool.not.i.i20.i, label %for.end64.i.i.if.end12.i_crit_edge, label %if.then.i.i21.i

for.end64.i.i.if.end12.i_crit_edge:               ; preds = %for.end64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i.i21.i:                                  ; preds = %for.end64.i.i
  %68 = ptrtoint ptr %regulator_count.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %regulator_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp13.not.i.i.i = icmp eq i32 %69, 0
  br i1 %cmp13.not.i.i.i, label %if.then.i.i21.i.if.then10.i_crit_edge, label %if.then.i.i21.i.for.body.i.i23.i_crit_edge

if.then.i.i21.i.for.body.i.i23.i_crit_edge:       ; preds = %if.then.i.i21.i
  br label %for.body.i.i23.i

if.then.i.i21.i.if.then10.i_crit_edge:            ; preds = %if.then.i.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

for.body.i.i23.i:                                 ; preds = %for.inc.i.i25.i.for.body.i.i23.i_crit_edge, %if.then.i.i21.i.for.body.i.i23.i_crit_edge
  %i.014.i.i.i = phi i32 [ %inc.i.i24.i, %for.inc.i.i25.i.for.body.i.i23.i_crit_edge ], [ 0, %if.then.i.i21.i.for.body.i.i23.i_crit_edge ]
  %70 = ptrtoint ptr %regulators.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regulators.i.i, align 4
  %arrayidx.i.i22.i = getelementptr ptr, ptr %71, i32 %i.014.i.i.i
  %72 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i22.i, align 4
  %tobool.not.i139.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i139.i.i, label %for.body.i.i23.i.for.inc.i.i25.i_crit_edge, label %if.then.i140.i.i

for.body.i.i23.i.for.inc.i.i25.i_crit_edge:       ; preds = %for.body.i.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i25.i

if.then.i140.i.i:                                 ; preds = %for.body.i.i23.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i.i = call i32 @regulator_disable(ptr noundef nonnull %73) #8
  %74 = ptrtoint ptr %regulators.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regulators.i.i, align 4
  %arrayidx5.i.i.i = getelementptr ptr, ptr %75, i32 %i.014.i.i.i
  %76 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx5.i.i.i, align 4
  call void @regulator_put(ptr noundef %77) #8
  br label %for.inc.i.i25.i

for.inc.i.i25.i:                                  ; preds = %if.then.i140.i.i, %for.body.i.i23.i.for.inc.i.i25.i_crit_edge
  %inc.i.i24.i = add nuw i32 %i.014.i.i.i, 1
  %78 = ptrtoint ptr %regulator_count.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %regulator_count.i.i, align 8
  %cmp.i141.i.i = icmp ult i32 %inc.i.i24.i, %79
  br i1 %cmp.i141.i.i, label %for.inc.i.i25.i.for.body.i.i23.i_crit_edge, label %for.inc.i.i25.i.if.then10.i_crit_edge

for.inc.i.i25.i.if.then10.i_crit_edge:            ; preds = %for.inc.i.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

for.inc.i.i25.i.for.body.i.i23.i_crit_edge:       ; preds = %for.inc.i.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i23.i

while.body.i27.i:                                 ; preds = %if.end77.i.i.while.body.i27.i_crit_edge, %cleanup.i.i.while.body.i27.i_crit_edge
  %i.2159.i.i = phi i32 [ %dec.i26.i, %if.end77.i.i.while.body.i27.i_crit_edge ], [ %i.0155.i.i, %cleanup.i.i.while.body.i27.i_crit_edge ]
  %dec.i26.i = add i32 %i.2159.i.i, -1
  %80 = ptrtoint ptr %regulators.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regulators.i.i, align 4
  %arrayidx69.i.i = getelementptr ptr, ptr %81, i32 %dec.i26.i
  %82 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx69.i.i, align 4
  %tobool70.not.i.i = icmp eq ptr %83, null
  br i1 %tobool70.not.i.i, label %while.body.i27.i.if.end77.i.i_crit_edge, label %if.then71.i.i

while.body.i27.i.if.end77.i.i_crit_edge:          ; preds = %while.body.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i.i

if.then71.i.i:                                    ; preds = %while.body.i27.i
  call void @__sanitizer_cov_trace_pc() #10
  %call74.i.i = call i32 @regulator_disable(ptr noundef nonnull %83) #8
  %84 = ptrtoint ptr %regulators.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regulators.i.i, align 4
  %arrayidx76.i.i = getelementptr ptr, ptr %85, i32 %dec.i26.i
  %86 = ptrtoint ptr %arrayidx76.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx76.i.i, align 4
  call void @regulator_put(ptr noundef %87) #8
  br label %if.end77.i.i

if.end77.i.i:                                     ; preds = %if.then71.i.i, %while.body.i27.i.if.end77.i.i_crit_edge
  %tobool67.not.i.i = icmp eq i32 %dec.i26.i, 0
  br i1 %tobool67.not.i.i, label %if.end77.i.i.if.then10.i_crit_edge, label %if.end77.i.i.while.body.i27.i_crit_edge

if.end77.i.i.while.body.i27.i_crit_edge:          ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i27.i

if.end77.i.i.if.then10.i_crit_edge:               ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.end77.i.i.if.then10.i_crit_edge, %for.inc.i.i25.i.if.then10.i_crit_edge, %if.then.i.i21.i.if.then10.i_crit_edge, %cleanup.i.i.if.then10.i_crit_edge, %if.end15.i.i.if.then10.i_crit_edge
  %retval.0.i2864.i = phi i32 [ -517, %cleanup.i.i.if.then10.i_crit_edge ], [ %call.i138.i.i, %if.then.i.i21.i.if.then10.i_crit_edge ], [ -12, %if.end15.i.i.if.then10.i_crit_edge ], [ %call.i138.i.i, %for.inc.i.i25.i.if.then10.i_crit_edge ], [ -517, %if.end77.i.i.if.then10.i_crit_edge ]
  %88 = inttoptr i32 %retval.0.i2864.i to ptr
  br label %simpledrm_device_create.exit

if.end12.i:                                       ; preds = %for.end64.i.i.if.end12.i_crit_edge, %for.end.i13.i.if.end12.i_crit_edge, %if.end.i9.i.if.end12.i_crit_edge, %if.end7.i.if.end12.i_crit_edge
  %89 = ptrtoint ptr %pdev3.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev3.i, align 4
  %platform_data.i.i30.i = getelementptr inbounds %struct.platform_device, ptr %90, i32 0, i32 3, i32 7
  %91 = ptrtoint ptr %platform_data.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %platform_data.i.i30.i, align 8
  %of_node5.i.i = getelementptr inbounds %struct.platform_device, ptr %90, i32 0, i32 3, i32 27
  %93 = ptrtoint ptr %of_node5.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %of_node5.i.i, align 8
  %tobool.not.i31.i = icmp eq ptr %92, null
  br i1 %tobool.not.i31.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end12.i
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %simplefb_get_width_pd.exit.thread.i.i, label %if.end.i32.i

simplefb_get_width_pd.exit.thread.i.i:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %98 = ptrtoint ptr %dev1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev1.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %96) #11
  br label %if.then15.i

if.end.i32.i:                                     ; preds = %if.then.i.i
  %height.i.i.i = getelementptr inbounds %struct.simplefb_platform_data, ptr %92, i32 0, i32 1
  %100 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %height.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %simplefb_get_height_pd.exit.thread.i.i, label %if.end11.i33.i

simplefb_get_height_pd.exit.thread.i.i:           ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i.i141.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %103 = ptrtoint ptr %dev1.i.i.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev1.i.i.i141.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23, i32 noundef %101) #11
  br label %if.then15.i

if.end11.i33.i:                                   ; preds = %if.end.i32.i
  %stride.i.i.i = getelementptr inbounds %struct.simplefb_platform_data, ptr %92, i32 0, i32 2
  %105 = ptrtoint ptr %stride.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %stride.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.i.i.i.i = icmp slt i32 %106, 0
  br i1 %cmp.i.i.i.i, label %simplefb_get_stride_pd.exit.thread.i.i, label %if.end15.i36.i

simplefb_get_stride_pd.exit.thread.i.i:           ; preds = %if.end11.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %107 = ptrtoint ptr %dev1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev1.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.24, i32 noundef %106) #11
  br label %if.then15.i

if.end15.i36.i:                                   ; preds = %if.end11.i33.i
  %format.i.i.i = getelementptr inbounds %struct.simplefb_platform_data, ptr %92, i32 0, i32 3
  %109 = ptrtoint ptr %format.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %format.i.i.i, align 4
  %call.i.i34.i = call fastcc ptr @simplefb_get_validated_format(ptr noundef %call.i, ptr noundef %110) #8
  %cmp.i.i35.i = icmp ugt ptr %call.i.i34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i35.i, label %if.end15.i36.i.simpledrm_device_init_fb.exit.i_crit_edge, label %if.end15.i36.i.if.end43.i.i_crit_edge

if.end15.i36.i.if.end43.i.i_crit_edge:            ; preds = %if.end15.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i.i

if.end15.i36.i.simpledrm_device_init_fb.exit.i_crit_edge: ; preds = %if.end15.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %simpledrm_device_init_fb.exit.i

if.else.i.i:                                      ; preds = %if.end12.i
  %tobool21.not.i.i = icmp eq ptr %94, null
  br i1 %tobool21.not.i.i, label %do.end.i40.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %if.else.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %width.i.i.i) #8
  %111 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %width.i.i.i, align 4, !annotation !133
  %call.i.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %94, ptr noundef nonnull @.str.19, ptr noundef nonnull %width.i.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i32 %call.i.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i37.i, label %simplefb_read_u32_of.exit.i.i.i

simplefb_read_u32_of.exit.i.i.i:                  ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i145.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %112 = ptrtoint ptr %dev1.i.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev1.i.i145.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.19, i32 noundef %call.i.i.i.i.i.i) #11
  br label %simplefb_get_width_of.exit.thread.i.i

if.end.i.i37.i:                                   ; preds = %if.then22.i.i
  %114 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %width.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %return.sink.split.i.i147.i.i, label %if.end26.i.i

return.sink.split.i.i147.i.i:                     ; preds = %if.end.i.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i.i146.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %117 = ptrtoint ptr %dev1.i.i.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev1.i.i.i146.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %115) #11
  br label %simplefb_get_width_of.exit.thread.i.i

simplefb_get_width_of.exit.thread.i.i:            ; preds = %return.sink.split.i.i147.i.i, %simplefb_read_u32_of.exit.i.i.i
  %retval.0.i.ph.i38.i = phi i32 [ -22, %return.sink.split.i.i147.i.i ], [ %call.i.i.i.i.i.i, %simplefb_read_u32_of.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width.i.i.i) #8
  br label %if.then15.i

if.end26.i.i:                                     ; preds = %if.end.i.i37.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %height.i148.i.i) #8
  %119 = ptrtoint ptr %height.i148.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %height.i148.i.i, align 4, !annotation !133
  %call.i.i.i.i149.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %94, ptr noundef nonnull @.str.23, ptr noundef nonnull %height.i148.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i149.i.i)
  %tobool.not.i.i150.i.i = icmp sgt i32 %call.i.i.i.i149.i.i, -1
  br i1 %tobool.not.i.i150.i.i, label %if.end.i153.i.i, label %simplefb_read_u32_of.exit.i152.i.i

simplefb_read_u32_of.exit.i152.i.i:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i151.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %120 = ptrtoint ptr %dev1.i.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev1.i.i151.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.23, i32 noundef %call.i.i.i.i149.i.i) #11
  br label %simplefb_get_height_of.exit.thread.i.i

if.end.i153.i.i:                                  ; preds = %if.end26.i.i
  %122 = ptrtoint ptr %height.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %height.i148.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %123)
  %124 = icmp slt i32 %123, 1
  br i1 %124, label %return.sink.split.i.i155.i.i, label %if.end30.i.i

return.sink.split.i.i155.i.i:                     ; preds = %if.end.i153.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i.i154.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %125 = ptrtoint ptr %dev1.i.i.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev1.i.i.i154.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23, i32 noundef %123) #11
  br label %simplefb_get_height_of.exit.thread.i.i

simplefb_get_height_of.exit.thread.i.i:           ; preds = %return.sink.split.i.i155.i.i, %simplefb_read_u32_of.exit.i152.i.i
  %retval.0.i156.ph.i.i = phi i32 [ -22, %return.sink.split.i.i155.i.i ], [ %call.i.i.i.i149.i.i, %simplefb_read_u32_of.exit.i152.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %height.i148.i.i) #8
  br label %if.then15.i

if.end30.i.i:                                     ; preds = %if.end.i153.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %height.i148.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride.i157.i.i) #8
  %127 = ptrtoint ptr %stride.i157.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %stride.i157.i.i, align 4, !annotation !133
  %call.i.i.i.i158.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %94, ptr noundef nonnull @.str.24, ptr noundef nonnull %stride.i157.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i158.i.i)
  %tobool.not.i.i159.i.i = icmp sgt i32 %call.i.i.i.i158.i.i, -1
  br i1 %tobool.not.i.i159.i.i, label %if.end.i163.i.i, label %simplefb_read_u32_of.exit.i161.i.i

simplefb_read_u32_of.exit.i161.i.i:               ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i160.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %128 = ptrtoint ptr %dev1.i.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev1.i.i160.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.24, i32 noundef %call.i.i.i.i158.i.i) #11
  br label %simplefb_get_stride_of.exit.thread.i.i

if.end.i163.i.i:                                  ; preds = %if.end30.i.i
  %130 = ptrtoint ptr %stride.i157.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %stride.i157.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.i.i162.i.i = icmp slt i32 %131, 0
  br i1 %cmp.i.i162.i.i, label %do.end.i6.i.i.i, label %if.end34.i.i

do.end.i6.i.i.i:                                  ; preds = %if.end.i163.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i5.i.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %132 = ptrtoint ptr %dev1.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev1.i5.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.24, i32 noundef %131) #11
  br label %simplefb_get_stride_of.exit.thread.i.i

simplefb_get_stride_of.exit.thread.i.i:           ; preds = %do.end.i6.i.i.i, %simplefb_read_u32_of.exit.i161.i.i
  %retval.0.i164.ph.i.i = phi i32 [ -22, %do.end.i6.i.i.i ], [ %call.i.i.i.i158.i.i, %simplefb_read_u32_of.exit.i161.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride.i157.i.i) #8
  br label %if.then15.i

if.end34.i.i:                                     ; preds = %if.end.i163.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride.i157.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %format.i165.i.i) #8
  %134 = ptrtoint ptr %format.i165.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 -1 to ptr), ptr %format.i165.i.i, align 4, !annotation !133
  %call.i.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %94, ptr noundef nonnull @.str.42, ptr noundef nonnull %format.i165.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i166.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i166.i.i, label %if.end.i168.i.i, label %if.then.i.i39.i

if.then.i.i39.i:                                  ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i167.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %135 = ptrtoint ptr %dev1.i.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev1.i.i167.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.42, i32 noundef %call.i.i.i.i) #11
  %137 = inttoptr i32 %call.i.i.i.i to ptr
  br label %simplefb_get_format_of.exit.i.i

if.end.i168.i.i:                                  ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %format.i165.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %format.i165.i.i, align 4
  %call2.i.i.i = call fastcc ptr @simplefb_get_validated_format(ptr noundef %call.i, ptr noundef %139) #8
  br label %simplefb_get_format_of.exit.i.i

simplefb_get_format_of.exit.i.i:                  ; preds = %if.end.i168.i.i, %if.then.i.i39.i
  %retval.0.i169.i.i = phi ptr [ %137, %if.then.i.i39.i ], [ %call2.i.i.i, %if.end.i168.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format.i165.i.i) #8
  %cmp.i170.i.i = icmp ugt ptr %retval.0.i169.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170.i.i, label %simplefb_get_format_of.exit.i.i.simpledrm_device_init_fb.exit.i_crit_edge, label %simplefb_get_format_of.exit.i.i.if.end43.i.i_crit_edge

simplefb_get_format_of.exit.i.i.if.end43.i.i_crit_edge: ; preds = %simplefb_get_format_of.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i.i

simplefb_get_format_of.exit.i.i.simpledrm_device_init_fb.exit.i_crit_edge: ; preds = %simplefb_get_format_of.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %simpledrm_device_init_fb.exit.i

do.end.i40.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev41.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %140 = ptrtoint ptr %dev41.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev41.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.15) #11
  br label %if.then15.i

if.end43.i.i:                                     ; preds = %simplefb_get_format_of.exit.i.i.if.end43.i.i_crit_edge, %if.end15.i36.i.if.end43.i.i_crit_edge
  %width.0.i.i = phi i32 [ %96, %if.end15.i36.i.if.end43.i.i_crit_edge ], [ %115, %simplefb_get_format_of.exit.i.i.if.end43.i.i_crit_edge ]
  %height.0.i.i = phi i32 [ %101, %if.end15.i36.i.if.end43.i.i_crit_edge ], [ %123, %simplefb_get_format_of.exit.i.i.if.end43.i.i_crit_edge ]
  %stride.0.i.i = phi i32 [ %106, %if.end15.i36.i.if.end43.i.i_crit_edge ], [ %131, %simplefb_get_format_of.exit.i.i.if.end43.i.i_crit_edge ]
  %format.0.i.i = phi ptr [ %call.i.i34.i, %if.end15.i36.i.if.end43.i.i_crit_edge ], [ %retval.0.i169.i.i, %simplefb_get_format_of.exit.i.i.if.end43.i.i_crit_edge ]
  %mode.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tmp.i.i) #8
  %142 = getelementptr inbounds i8, ptr %tmp.i.i, i32 12
  %143 = call ptr @memset(ptr %142, i32 0, i32 100)
  %hdisplay.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 1
  %conv.i.i.i = trunc i32 %width.0.i.i to i16
  %144 = ptrtoint ptr %hdisplay.i.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv.i.i.i, ptr %hdisplay.i.i.i, align 4, !alias.scope !134
  %hsync_start.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 2
  %145 = ptrtoint ptr %hsync_start.i.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv.i.i.i, ptr %hsync_start.i.i.i, align 2, !alias.scope !134
  %hsync_end.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 3
  %146 = ptrtoint ptr %hsync_end.i.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv.i.i.i, ptr %hsync_end.i.i.i, align 4, !alias.scope !134
  %htotal.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 4
  %147 = ptrtoint ptr %htotal.i.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv.i.i.i, ptr %htotal.i.i.i, align 2, !alias.scope !134
  %vdisplay.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 6
  %conv4.i.i.i = trunc i32 %height.0.i.i to i16
  %148 = ptrtoint ptr %vdisplay.i.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv4.i.i.i, ptr %vdisplay.i.i.i, align 2, !alias.scope !134
  %vsync_start.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 7
  %149 = ptrtoint ptr %vsync_start.i.i.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv4.i.i.i, ptr %vsync_start.i.i.i, align 4, !alias.scope !134
  %vsync_end.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 8
  %150 = ptrtoint ptr %vsync_end.i.i.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv4.i.i.i, ptr %vsync_end.i.i.i, align 2, !alias.scope !134
  %vtotal.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 9
  %151 = ptrtoint ptr %vtotal.i.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv4.i.i.i, ptr %vtotal.i.i.i, align 4, !alias.scope !134
  %width_mm.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 26
  %mul.i.i.i = mul i32 %width.0.i.i, 254
  %div.i.i.i = udiv i32 %mul.i.i.i, 960
  %conv8.i.i.i = trunc i32 %div.i.i.i to i16
  %152 = ptrtoint ptr %width_mm.i.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv8.i.i.i, ptr %width_mm.i.i.i, align 2, !alias.scope !134
  %height_mm.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 27
  %mul9.i.i.i = mul i32 %height.0.i.i, 254
  %div10.i.i.i = udiv i32 %mul9.i.i.i, 960
  %conv11.i.i.i = trunc i32 %div10.i.i.i to i16
  %153 = ptrtoint ptr %height_mm.i.i.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv11.i.i.i, ptr %height_mm.i.i.i, align 4, !alias.scope !134
  %type.i.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %tmp.i.i, i32 0, i32 28
  %154 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 64, ptr %type.i.i.i, align 2, !alias.scope !134
  %conv13.i.i.i = and i32 %width.0.i.i, 65535
  %conv15.i.i.i = and i32 %height.0.i.i, 65535
  %mul16.i.i.i = mul nuw nsw i32 %conv13.i.i.i, 60
  %mul17.i.i.i = mul i32 %mul16.i.i.i, %conv15.i.i.i
  %div18.i.i.i = sdiv i32 %mul17.i.i.i, 1000
  %155 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %div18.i.i.i, ptr %tmp.i.i, align 4, !alias.scope !134
  call void @drm_mode_set_name(ptr noundef nonnull %tmp.i.i) #8
  %156 = call ptr @memcpy(ptr %mode.i.i, ptr %tmp.i.i, i32 112)
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tmp.i.i) #8
  %format44.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 7
  %157 = ptrtoint ptr %format44.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %format.0.i.i, ptr %format44.i.i, align 8
  %pitch.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 8
  %158 = ptrtoint ptr %pitch.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %stride.0.i.i, ptr %pitch.i.i, align 4
  %tobool45.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool45.not.i.i, label %if.end43.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end43.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev46.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %159 = ptrtoint ptr %dev46.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev46.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end43.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %160, %cond.true.i.i ], [ null, %if.end43.i.i.cond.end.i.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 31
  %call49.i.i = call i32 @drm_mode_vrefresh(ptr noundef %mode.i.i) #8
  %161 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %mode.i.i, align 8
  %hdisplay.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 1
  %163 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %hdisplay.i.i, align 4
  %conv.i.i = zext i16 %164 to i32
  %hsync_start.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 2
  %165 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %hsync_start.i.i, align 2
  %conv53.i.i = zext i16 %166 to i32
  %hsync_end.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 3
  %167 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %hsync_end.i.i, align 8
  %conv55.i.i = zext i16 %168 to i32
  %htotal.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 4
  %169 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %htotal.i.i, align 2
  %conv57.i.i = zext i16 %170 to i32
  %vdisplay.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 6
  %171 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %vdisplay.i.i, align 2
  %conv59.i.i = zext i16 %172 to i32
  %vsync_start.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 7
  %173 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %vsync_start.i.i, align 8
  %conv61.i.i = zext i16 %174 to i32
  %vsync_end.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 8
  %175 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %vsync_end.i.i, align 2
  %conv63.i.i = zext i16 %176 to i32
  %vtotal.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 9
  %177 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %vtotal.i.i, align 4
  %conv65.i.i = zext i16 %178 to i32
  %type.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 28
  %179 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %type.i.i, align 2
  %conv67.i.i = zext i8 %180 to i32
  %flags.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 6, i32 11
  %181 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flags.i.i, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i.i, i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef %name.i.i, i32 noundef %call49.i.i, i32 noundef %162, i32 noundef %conv.i.i, i32 noundef %conv53.i.i, i32 noundef %conv55.i.i, i32 noundef %conv57.i.i, i32 noundef %conv59.i.i, i32 noundef %conv61.i.i, i32 noundef %conv63.i.i, i32 noundef %conv65.i.i, i32 noundef %conv67.i.i, i32 noundef %182) #8
  br i1 %tobool45.not.i.i, label %cond.end.i.i.simpledrm_device_init_fb.exit.thread68.i_crit_edge, label %cond.true70.i.i

cond.end.i.i.simpledrm_device_init_fb.exit.thread68.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %simpledrm_device_init_fb.exit.thread68.i

cond.true70.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev71.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %183 = ptrtoint ptr %dev71.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev71.i.i, align 4
  br label %simpledrm_device_init_fb.exit.thread68.i

simpledrm_device_init_fb.exit.thread68.i:         ; preds = %cond.true70.i.i, %cond.end.i.i.simpledrm_device_init_fb.exit.thread68.i_crit_edge
  %cond74.i.i = phi ptr [ %184, %cond.true70.i.i ], [ null, %cond.end.i.i.simpledrm_device_init_fb.exit.thread68.i_crit_edge ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond74.i.i, i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef %format.0.i.i, i32 noundef %width.0.i.i, i32 noundef %height.0.i.i, i32 noundef %stride.0.i.i) #8
  %185 = ptrtoint ptr %pdev3.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pdev3.i, align 4
  %call.i.i = call ptr @platform_get_resource(ptr noundef %186, i32 noundef 512, i32 noundef 0) #8
  %tobool.not.i44.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i44.i, label %simpledrm_device_init_fb.exit.thread68.i.if.then_crit_edge, label %if.end.i45.i

simpledrm_device_init_fb.exit.thread68.i.if.then_crit_edge: ; preds = %simpledrm_device_init_fb.exit.thread68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

simpledrm_device_init_fb.exit.i:                  ; preds = %simplefb_get_format_of.exit.i.i.simpledrm_device_init_fb.exit.i_crit_edge, %if.end15.i36.i.simpledrm_device_init_fb.exit.i_crit_edge
  %retval.0.i41.in.i = phi ptr [ %call.i.i34.i, %if.end15.i36.i.simpledrm_device_init_fb.exit.i_crit_edge ], [ %retval.0.i169.i.i, %simplefb_get_format_of.exit.i.i.simpledrm_device_init_fb.exit.i_crit_edge ]
  %retval.0.i41.i = ptrtoint ptr %retval.0.i41.in.i to i32
  br label %if.then15.i

if.then15.i:                                      ; preds = %simpledrm_device_init_fb.exit.i, %do.end.i40.i, %simplefb_get_stride_of.exit.thread.i.i, %simplefb_get_height_of.exit.thread.i.i, %simplefb_get_width_of.exit.thread.i.i, %simplefb_get_stride_pd.exit.thread.i.i, %simplefb_get_height_pd.exit.thread.i.i, %simplefb_get_width_pd.exit.thread.i.i
  %retval.0.i4167.i = phi i32 [ %retval.0.i41.i, %simpledrm_device_init_fb.exit.i ], [ %retval.0.i164.ph.i.i, %simplefb_get_stride_of.exit.thread.i.i ], [ %retval.0.i156.ph.i.i, %simplefb_get_height_of.exit.thread.i.i ], [ %retval.0.i.ph.i38.i, %simplefb_get_width_of.exit.thread.i.i ], [ -22, %simplefb_get_stride_pd.exit.thread.i.i ], [ -22, %simplefb_get_height_pd.exit.thread.i.i ], [ -22, %simplefb_get_width_pd.exit.thread.i.i ], [ -19, %do.end.i40.i ]
  %187 = inttoptr i32 %retval.0.i4167.i to ptr
  br label %simpledrm_device_create.exit

if.end.i45.i:                                     ; preds = %simpledrm_device_init_fb.exit.thread68.i
  %188 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %call.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i, i32 0, i32 1
  %190 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %end.i.i.i, align 4
  %sub.i.i.i = sub i32 1, %189
  %add.i.i.i = add i32 %sub.i.i.i, %191
  %call4.i.i = call i32 @devm_aperture_acquire_from_firmware(ptr noundef %call.i, i32 noundef %189, i32 noundef %add.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end8.i.i, label %do.end.i46.i

do.end.i46.i:                                     ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %192 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev7.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.44, ptr noundef nonnull %call.i.i, i32 noundef %call4.i.i) #11
  %phi.cast.i = inttoptr i32 %call4.i.i to ptr
  br label %simpledrm_device_create.exit

if.end8.i.i:                                      ; preds = %if.end.i45.i
  %dev9.i.i = getelementptr inbounds %struct.platform_device, ptr %186, i32 0, i32 3
  %194 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %call.i.i, align 4
  %196 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %end.i.i.i, align 4
  %sub.i37.i.i = sub i32 1, %195
  %add.i38.i.i = add i32 %sub.i37.i.i, %197
  %call12.i.i = call ptr @devm_ioremap_wc(ptr noundef %dev9.i.i, i32 noundef %195, i32 noundef %add.i38.i.i) #8
  %tobool13.not.i47.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool13.not.i47.i, label %if.end8.i.i.if.then_crit_edge, label %if.end22.i

if.end8.i.i.if.then_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end22.i:                                       ; preds = %if.end8.i.i
  %mem16.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 9
  %198 = ptrtoint ptr %mem16.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call.i.i, ptr %mem16.i.i, align 8
  %screen_base17.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 10
  %199 = ptrtoint ptr %screen_base17.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call12.i.i, ptr %screen_base17.i.i, align 4
  %connector3.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 13
  %pipe4.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 14
  %call.i13 = call i32 @drmm_mode_config_init(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i, label %if.end.i14, label %if.end22.i.simpledrm_device_init_modeset.exit.thread_crit_edge

if.end22.i.simpledrm_device_init_modeset.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %simpledrm_device_init_modeset.exit.thread

if.end.i14:                                       ; preds = %if.end22.i
  %200 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %hdisplay.i.i, align 4
  %conv.i = zext i16 %201 to i32
  %202 = call i16 @llvm.umax.i16(i16 %201, i16 4096) #8
  %203 = zext i16 %202 to i32
  %204 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %vdisplay.i.i, align 2
  %conv6.i = zext i16 %205 to i32
  %206 = call i16 @llvm.umax.i16(i16 %205, i16 4096) #8
  %207 = zext i16 %206 to i32
  %min_width.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 30, i32 23
  %208 = ptrtoint ptr %min_width.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %conv.i, ptr %min_width.i, align 4
  %max_width17.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 30, i32 25
  %209 = ptrtoint ptr %max_width17.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %203, ptr %max_width17.i, align 4
  %min_height.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 30, i32 24
  %210 = ptrtoint ptr %min_height.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %conv6.i, ptr %min_height.i, align 4
  %max_height22.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 30, i32 26
  %211 = ptrtoint ptr %max_height22.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %207, ptr %max_height22.i, align 4
  %prefer_shadow_fbdev.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 30, i32 93
  %212 = ptrtoint ptr %prefer_shadow_fbdev.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %prefer_shadow_fbdev.i, align 4
  %213 = ptrtoint ptr %format44.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %format44.i.i, align 8
  %215 = getelementptr inbounds %struct.drm_format_info, ptr %214, i32 0, i32 3
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %215, align 2
  %conv24.i = zext i8 %217 to i32
  %mul.i = shl nuw nsw i32 %conv24.i, 3
  %preferred_depth.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 30, i32 91
  %218 = ptrtoint ptr %preferred_depth.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %mul.i, ptr %preferred_depth.i, align 4
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 30, i32 27
  %219 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @simpledrm_mode_config_funcs, ptr %funcs.i, align 4
  %call27.i = call i32 @drm_connector_init(ptr noundef %call.i, ptr noundef %connector3.i, ptr noundef nonnull @simpledrm_connector_funcs, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end.i14.simpledrm_device_init_modeset.exit.thread_crit_edge

if.end.i14.simpledrm_device_init_modeset.exit.thread_crit_edge: ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %simpledrm_device_init_modeset.exit.thread

if.end30.i:                                       ; preds = %if.end.i14
  %helper_private.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 13, i32 35
  %220 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @simpledrm_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %nformats.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 12
  %221 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %nformats.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool.not.i.i15 = icmp eq i32 %222, 0
  br i1 %tobool.not.i.i15, label %if.end.i.i16, label %if.end30.i.simpledrm_device_formats.exit.i_crit_edge

if.end30.i.simpledrm_device_formats.exit.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %simpledrm_device_formats.exit.i

if.end.i.i16:                                     ; preds = %if.end30.i
  %223 = ptrtoint ptr %format44.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %format44.i.i, align 8
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %224, align 4
  %formats.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 11
  %227 = ptrtoint ptr %formats.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %formats.i.i, align 8
  %228 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 1, ptr %nformats.i.i, align 8
  %229 = load i32, ptr %224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875713112, i32 %229)
  %cmp7.i.i = icmp eq i32 %229, 875713112
  br i1 %cmp7.i.i, label %if.end.i.i16.for.inc.i.i17_crit_edge, label %if.end9.i.i

if.end.i.i16.for.inc.i.i17_crit_edge:             ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i17

if.end9.i.i:                                      ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13.i.i = getelementptr %struct.simpledrm_device, ptr %call.i, i32 0, i32 11, i32 1
  %230 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 875713112, ptr %arrayidx13.i.i, align 4
  %231 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 2, ptr %nformats.i.i, align 8
  br label %for.inc.i.i17

for.inc.i.i17:                                    ; preds = %if.end9.i.i, %if.end.i.i16.for.inc.i.i17_crit_edge
  %232 = ptrtoint ptr %format44.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %format44.i.i, align 8
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875713089, i32 %235)
  %cmp7.1.i.i = icmp eq i32 %235, 875713089
  br i1 %cmp7.1.i.i, label %for.inc.i.i17.for.inc.1.i.i_crit_edge, label %if.end9.1.i.i

for.inc.i.i17.for.inc.1.i.i_crit_edge:            ; preds = %for.inc.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.end9.1.i.i:                                    ; preds = %for.inc.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  %236 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %nformats.i.i, align 8
  %arrayidx13.1.i.i = getelementptr %struct.simpledrm_device, ptr %call.i, i32 0, i32 11, i32 %237
  %238 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 875713089, ptr %arrayidx13.1.i.i, align 4
  %239 = load i32, ptr %nformats.i.i, align 8
  %inc.1.i.i = add i32 %239, 1
  store i32 %inc.1.i.i, ptr %nformats.i.i, align 8
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end9.1.i.i, %for.inc.i.i17.for.inc.1.i.i_crit_edge
  %240 = ptrtoint ptr %format44.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %format44.i.i, align 8
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 909199186, i32 %243)
  %cmp7.2.i.i = icmp eq i32 %243, 909199186
  br i1 %cmp7.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end9.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.end9.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %244 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %nformats.i.i, align 8
  %arrayidx13.2.i.i = getelementptr %struct.simpledrm_device, ptr %call.i, i32 0, i32 11, i32 %245
  %246 = ptrtoint ptr %arrayidx13.2.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 909199186, ptr %arrayidx13.2.i.i, align 4
  %247 = load i32, ptr %nformats.i.i, align 8
  %inc.2.i.i = add i32 %247, 1
  store i32 %inc.2.i.i, ptr %nformats.i.i, align 8
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.end9.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %248 = ptrtoint ptr %format44.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %format44.i.i, align 8
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875710290, i32 %251)
  %cmp7.3.i.i = icmp eq i32 %251, 875710290
  br i1 %cmp7.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.end9.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i

if.end9.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %252 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %nformats.i.i, align 8
  %arrayidx13.3.i.i = getelementptr %struct.simpledrm_device, ptr %call.i, i32 0, i32 11, i32 %253
  %254 = ptrtoint ptr %arrayidx13.3.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 875710290, ptr %arrayidx13.3.i.i, align 4
  %255 = load i32, ptr %nformats.i.i, align 8
  %inc.3.i.i = add i32 %255, 1
  store i32 %inc.3.i.i, ptr %nformats.i.i, align 8
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.end9.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %256 = ptrtoint ptr %format44.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %format44.i.i, align 8
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 808669784, i32 %259)
  %cmp7.4.i.i = icmp eq i32 %259, 808669784
  br i1 %cmp7.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.end9.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i.i

if.end9.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %260 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %nformats.i.i, align 8
  %arrayidx13.4.i.i = getelementptr %struct.simpledrm_device, ptr %call.i, i32 0, i32 11, i32 %261
  %262 = ptrtoint ptr %arrayidx13.4.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 808669784, ptr %arrayidx13.4.i.i, align 4
  %263 = load i32, ptr %nformats.i.i, align 8
  %inc.4.i.i = add i32 %263, 1
  store i32 %inc.4.i.i, ptr %nformats.i.i, align 8
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.end9.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %264 = ptrtoint ptr %format44.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %format44.i.i, align 8
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 808669761, i32 %267)
  %cmp7.5.i.i = icmp eq i32 %267, 808669761
  %268 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %.pr.i.i = load i32, ptr %nformats.i.i, align 8
  br i1 %cmp7.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge, label %if.end9.5.i.i

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i.i

if.end9.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13.5.i.i = getelementptr %struct.simpledrm_device, ptr %call.i, i32 0, i32 11, i32 %.pr.i.i
  %269 = ptrtoint ptr %arrayidx13.5.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 808669761, ptr %arrayidx13.5.i.i, align 4
  %270 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %nformats.i.i, align 8
  %inc.5.i.i = add i32 %271, 1
  store i32 %inc.5.i.i, ptr %nformats.i.i, align 8
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.end9.5.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %272 = phi i32 [ %inc.5.i.i, %if.end9.5.i.i ], [ %.pr.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %272)
  %cmp17.not.i.i = icmp eq i32 %272, 6
  br i1 %cmp17.not.i.i, label %for.inc.5.i.i.simpledrm_device_formats.exit.i_crit_edge, label %land.rhs.i.i

for.inc.5.i.i.simpledrm_device_formats.exit.i_crit_edge: ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %simpledrm_device_formats.exit.i

land.rhs.i.i:                                     ; preds = %for.inc.5.i.i
  %.b86.i.i = load i1, ptr @simpledrm_device_formats.__already_done, align 1
  br i1 %.b86.i.i, label %land.rhs.i.i.if.then61.i.i_crit_edge, label %if.then25.i.i, !prof !137

land.rhs.i.i.if.then61.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61.i.i

if.then25.i.i:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @simpledrm_device_formats.__already_done, align 1
  %dev35.i.i = getelementptr inbounds %struct.drm_device, ptr %call.i, i32 0, i32 2
  %273 = ptrtoint ptr %dev35.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev35.i.i, align 4
  %call.i.i18 = call ptr @dev_driver_string(ptr noundef %274) #8
  %275 = ptrtoint ptr %dev35.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev35.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %276, i32 0, i32 3
  %277 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i19 = icmp eq ptr %278, null
  br i1 %tobool.not.i.i.i19, label %if.end.i.i.i20, label %if.then25.i.i.dev_name.exit.i.i_crit_edge

if.then25.i.i.dev_name.exit.i.i_crit_edge:        ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i20:                                   ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %279 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %276, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i20, %if.then25.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %280, %if.end.i.i.i20 ], [ %278, %if.then25.i.i.dev_name.exit.i.i_crit_edge ]
  %281 = ptrtoint ptr %format44.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %format44.i.i, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 761, i32 noundef 9, ptr noundef nonnull @.str.46, ptr noundef %call.i.i18, ptr noundef %retval.0.i.i.i, ptr noundef %282) #8
  br label %if.then61.i.i

if.then61.i.i:                                    ; preds = %dev_name.exit.i.i, %land.rhs.i.i.if.then61.i.i_crit_edge
  %283 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 1, ptr %nformats.i.i, align 8
  br label %simpledrm_device_formats.exit.i

simpledrm_device_formats.exit.i:                  ; preds = %if.then61.i.i, %for.inc.5.i.i.simpledrm_device_formats.exit.i_crit_edge, %if.end30.i.simpledrm_device_formats.exit.i_crit_edge
  %284 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %nformats.i.i, align 8
  %formats65.i.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 11
  %call32.i = call i32 @drm_simple_display_pipe_init(ptr noundef %call.i, ptr noundef %pipe4.i, ptr noundef nonnull @simpledrm_simple_display_pipe_funcs, ptr noundef %formats65.i.i, i32 noundef %285, ptr noundef nonnull @simpledrm_format_modifiers, ptr noundef %connector3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %287, label %simpledrm_device_formats.exit.i.simpledrm_device_init_modeset.exit.thread_crit_edge

simpledrm_device_formats.exit.i.simpledrm_device_init_modeset.exit.thread_crit_edge: ; preds = %simpledrm_device_formats.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %simpledrm_device_init_modeset.exit.thread

simpledrm_device_init_modeset.exit.thread:        ; preds = %simpledrm_device_formats.exit.i.simpledrm_device_init_modeset.exit.thread_crit_edge, %if.end.i14.simpledrm_device_init_modeset.exit.thread_crit_edge, %if.end22.i.simpledrm_device_init_modeset.exit.thread_crit_edge
  %retval.0.i21.ph = phi i32 [ %call32.i, %simpledrm_device_formats.exit.i.simpledrm_device_init_modeset.exit.thread_crit_edge ], [ %call27.i, %if.end.i14.simpledrm_device_init_modeset.exit.thread_crit_edge ], [ %call.i13, %if.end22.i.simpledrm_device_init_modeset.exit.thread_crit_edge ]
  %286 = inttoptr i32 %retval.0.i21.ph to ptr
  br label %simpledrm_device_create.exit

287:                                              ; preds = %simpledrm_device_formats.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %plane.i = getelementptr inbounds %struct.simpledrm_device, ptr %call.i, i32 0, i32 14, i32 1
  call void @drm_plane_enable_fb_damage_clips(ptr noundef %plane.i) #8
  call void @drm_mode_config_reset(ptr noundef %call.i) #8
  br label %simpledrm_device_create.exit

simpledrm_device_create.exit:                     ; preds = %287, %simpledrm_device_init_modeset.exit.thread, %do.end.i46.i, %if.then15.i, %if.then10.i, %if.then5.i, %entry.simpledrm_device_create.exit_crit_edge
  %retval.0.i = phi ptr [ %41, %if.then5.i ], [ %88, %if.then10.i ], [ %187, %if.then15.i ], [ %call.i, %entry.simpledrm_device_create.exit_crit_edge ], [ %phi.cast.i, %do.end.i46.i ], [ %call.i, %287 ], [ %286, %simpledrm_device_init_modeset.exit.thread ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %simpledrm_device_create.exit.if.then_crit_edge, label %if.end

simpledrm_device_create.exit.if.then_crit_edge:   ; preds = %simpledrm_device_create.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %simpledrm_device_create.exit.if.then_crit_edge, %if.end8.i.i.if.then_crit_edge, %simpledrm_device_init_fb.exit.thread68.i.if.then_crit_edge
  %retval.0.i26 = phi ptr [ %retval.0.i, %simpledrm_device_create.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %simpledrm_device_init_fb.exit.thread68.i.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.if.then_crit_edge ]
  %288 = ptrtoint ptr %retval.0.i26 to i32
  br label %cleanup

if.end:                                           ; preds = %simpledrm_device_create.exit
  %call4 = call i32 @drm_dev_register(ptr noundef %retval.0.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_fbdev_generic_setup(ptr noundef %retval.0.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %288, %if.then ], [ 0, %if.end6 ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simpledrm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unplug(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simpledrm_device_release_clocks(ptr nocapture noundef readonly %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_count = getelementptr inbounds %struct.simpledrm_device, ptr %res, i32 0, i32 2
  %0 = ptrtoint ptr %clk_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clks = getelementptr inbounds %struct.simpledrm_device, ptr %res, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clks, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %5) #8
  tail call void @clk_unprepare(ptr noundef nonnull %5) #8
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %i.013
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_put(ptr noundef %9) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.013, 1
  %10 = ptrtoint ptr %clk_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_count, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simpledrm_device_release_regulators(ptr nocapture noundef readonly %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regulator_count = getelementptr inbounds %struct.simpledrm_device, ptr %res, i32 0, i32 4
  %0 = ptrtoint ptr %regulator_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regulator_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.not = icmp eq i32 %1, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regulators = getelementptr inbounds %struct.simpledrm_device, ptr %res, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulators, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.014
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #8
  %6 = ptrtoint ptr %regulators to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulators, align 4
  %arrayidx5 = getelementptr ptr, ptr %7, i32 %i.014
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  tail call void @regulator_put(ptr noundef %9) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.014, 1
  %10 = ptrtoint ptr %regulator_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regulator_count, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @simplefb_get_validated_format(ptr nocapture noundef readonly %dev, ptr noundef %format_name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %format_name, null
  br i1 %tobool.not, label %do.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef nonnull %format_name, ptr noundef nonnull dereferenceable(7) @.str.25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.body.preheader.if.then4_crit_edge, label %if.end10

while.body.preheader.if.then4_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.then4:                                         ; preds = %if.end10.8.if.then4_crit_edge, %if.end10.7.if.then4_crit_edge, %if.end10.6.if.then4_crit_edge, %if.end10.5.if.then4_crit_edge, %if.end10.4.if.then4_crit_edge, %if.end10.3.if.then4_crit_edge, %if.end10.2.if.then4_crit_edge, %if.end10.1.if.then4_crit_edge, %if.end10.if.then4_crit_edge, %while.body.preheader.if.then4_crit_edge
  %fmt.027.lcssa = phi ptr [ @simplefb_get_validated_format.formats, %while.body.preheader.if.then4_crit_edge ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_get_validated_format.formats, i32 0, i32 1), %if.end10.if.then4_crit_edge ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_get_validated_format.formats, i32 0, i32 2), %if.end10.1.if.then4_crit_edge ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_get_validated_format.formats, i32 0, i32 3), %if.end10.2.if.then4_crit_edge ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_get_validated_format.formats, i32 0, i32 4), %if.end10.3.if.then4_crit_edge ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_get_validated_format.formats, i32 0, i32 5), %if.end10.4.if.then4_crit_edge ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_get_validated_format.formats, i32 0, i32 6), %if.end10.5.if.then4_crit_edge ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_get_validated_format.formats, i32 0, i32 7), %if.end10.6.if.then4_crit_edge ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_get_validated_format.formats, i32 0, i32 8), %if.end10.7.if.then4_crit_edge ], [ getelementptr inbounds ([10 x %struct.simplefb_format], ptr @simplefb_get_validated_format.formats, i32 0, i32 9), %if.end10.8.if.then4_crit_edge ]
  %fourcc = getelementptr inbounds %struct.simplefb_format, ptr %fmt.027.lcssa, i32 0, i32 6
  %2 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc, align 4
  %call5 = tail call ptr @drm_format_info(i32 noundef %3) #8
  %tobool6.not = icmp eq ptr %call5, null
  %spec.select = select i1 %tobool6.not, ptr inttoptr (i32 -22 to ptr), ptr %call5
  br label %cleanup

if.end10:                                         ; preds = %while.body.preheader
  %call2.1 = tail call i32 @strcmp(ptr noundef nonnull %format_name, ptr noundef nonnull dereferenceable(9) @.str.26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool3.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool3.not.1, label %if.end10.if.then4_crit_edge, label %if.end10.1

if.end10.if.then4_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end10.1:                                       ; preds = %if.end10
  %call2.2 = tail call i32 @strcmp(ptr noundef nonnull %format_name, ptr noundef nonnull dereferenceable(9) @.str.27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool3.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool3.not.2, label %if.end10.1.if.then4_crit_edge, label %if.end10.2

if.end10.1.if.then4_crit_edge:                    ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end10.2:                                       ; preds = %if.end10.1
  %call2.3 = tail call i32 @strcmp(ptr noundef nonnull %format_name, ptr noundef nonnull dereferenceable(9) @.str.28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %tobool3.not.3 = icmp eq i32 %call2.3, 0
  br i1 %tobool3.not.3, label %if.end10.2.if.then4_crit_edge, label %if.end10.3

if.end10.2.if.then4_crit_edge:                    ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end10.3:                                       ; preds = %if.end10.2
  %call2.4 = tail call i32 @strcmp(ptr noundef nonnull %format_name, ptr noundef nonnull dereferenceable(7) @.str.29) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.4)
  %tobool3.not.4 = icmp eq i32 %call2.4, 0
  br i1 %tobool3.not.4, label %if.end10.3.if.then4_crit_edge, label %if.end10.4

if.end10.3.if.then4_crit_edge:                    ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end10.4:                                       ; preds = %if.end10.3
  %call2.5 = tail call i32 @strcmp(ptr noundef nonnull %format_name, ptr noundef nonnull dereferenceable(9) @.str.30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.5)
  %tobool3.not.5 = icmp eq i32 %call2.5, 0
  br i1 %tobool3.not.5, label %if.end10.4.if.then4_crit_edge, label %if.end10.5

if.end10.4.if.then4_crit_edge:                    ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end10.5:                                       ; preds = %if.end10.4
  %call2.6 = tail call i32 @strcmp(ptr noundef nonnull %format_name, ptr noundef nonnull dereferenceable(9) @.str.31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.6)
  %tobool3.not.6 = icmp eq i32 %call2.6, 0
  br i1 %tobool3.not.6, label %if.end10.5.if.then4_crit_edge, label %if.end10.6

if.end10.5.if.then4_crit_edge:                    ; preds = %if.end10.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end10.6:                                       ; preds = %if.end10.5
  %call2.7 = tail call i32 @strcmp(ptr noundef nonnull %format_name, ptr noundef nonnull dereferenceable(9) @.str.32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.7)
  %tobool3.not.7 = icmp eq i32 %call2.7, 0
  br i1 %tobool3.not.7, label %if.end10.6.if.then4_crit_edge, label %if.end10.7

if.end10.6.if.then4_crit_edge:                    ; preds = %if.end10.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end10.7:                                       ; preds = %if.end10.6
  %call2.8 = tail call i32 @strcmp(ptr noundef nonnull %format_name, ptr noundef nonnull dereferenceable(12) @.str.33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.8)
  %tobool3.not.8 = icmp eq i32 %call2.8, 0
  br i1 %tobool3.not.8, label %if.end10.7.if.then4_crit_edge, label %if.end10.8

if.end10.7.if.then4_crit_edge:                    ; preds = %if.end10.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end10.8:                                       ; preds = %if.end10.7
  %call2.9 = tail call i32 @strcmp(ptr noundef nonnull %format_name, ptr noundef nonnull dereferenceable(12) @.str.34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.9)
  %tobool3.not.9 = icmp eq i32 %call2.9, 0
  br i1 %tobool3.not.9, label %if.end10.8.if.then4_crit_edge, label %if.end10.9

if.end10.8.if.then4_crit_edge:                    ; preds = %if.end10.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end10.9:                                       ; preds = %if.end10.8
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef nonnull %format_name) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end10.9, %if.then4, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end10.9 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %spec.select, %if.then4 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_aperture_acquire_from_firmware(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create_with_dirty(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simpledrm_connector_helper_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %mode2 = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 6
  %call3 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %mode2) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 31
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_mode_set_name(ptr noundef nonnull %call3) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 2
  %6 = or i8 %5, 8
  store i8 %6, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call3) #8
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 26
  %7 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %width_mm, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool9.not = icmp eq i16 %8, 0
  br i1 %tobool9.not, label %if.end6.if.end14_crit_edge, label %if.then10

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = zext i16 %8 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %9 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv12, ptr %display_info, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 27
  %10 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %height_mm, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool15.not = icmp eq i16 %11, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %conv18 = zext i16 %11 to i32
  %height_mm20 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %height_mm20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv18, ptr %height_mm20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then16 ], [ 1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @simpledrm_simple_display_pipe_mode_valid(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readonly %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %hdisplay2 = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %hdisplay2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not = icmp eq i16 %3, %5
  %vdisplay20 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %6 = ptrtoint ptr %vdisplay20 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay20, align 2
  %vdisplay23 = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %vdisplay23 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vdisplay23, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp25.not = icmp eq i16 %7, %9
  %. = select i1 %cmp25.not, i32 0, i32 32
  %spec.select = select i1 %cmp25.not, i32 31, i32 33
  %retval.0 = select i1 %cmp.not, i32 %., i32 %spec.select
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simpledrm_simple_display_pipe_enable(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readonly %plane_state) #2 align 64 {
entry:
  %src_clip = alloca %struct.drm_rect, align 4
  %dst_clip = alloca %struct.drm_rect, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 2
  %2 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb2, align 4
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %plane_state, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %screen_base = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %screen_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %screen_base, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_clip) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst_clip) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %idx, align 4, !annotation !133
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.drm_rect, ptr %src_clip, i32 0, i32 3
  %10 = getelementptr inbounds %struct.drm_rect, ptr %src_clip, i32 0, i32 2
  %11 = getelementptr inbounds %struct.drm_rect, ptr %src_clip, i32 0, i32 1
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 20
  %12 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src, align 4
  %shr.i = ashr i32 %13, 16
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 20, i32 1
  %14 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %y1.i, align 4
  %shr1.i = ashr i32 %15, 16
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %x2.i.i, align 4
  %sub.i.i = sub i32 %17, %13
  %shr2.i = ashr i32 %sub.i.i, 16
  %y2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 20, i32 3
  %18 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y2.i.i, align 4
  %sub.i8.i = sub i32 %19, %15
  %shr4.i = ashr i32 %sub.i8.i, 16
  %20 = ptrtoint ptr %src_clip to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i, ptr %src_clip, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr1.i, ptr %11, align 4
  %add.i.i = add nsw i32 %shr2.i, %shr.i
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i.i, ptr %10, align 4
  %add1.i.i = add nsw i32 %shr4.i, %shr1.i
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add1.i.i, ptr %9, align 4
  %dst5 = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 21
  %24 = call ptr @memcpy(ptr %dst_clip, ptr %dst5, i32 16)
  %call6 = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %dst_clip, ptr noundef nonnull %src_clip) #8
  br i1 %call6, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #8
  br i1 %call9, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %pitch = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pitch, align 4
  %format = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %format, align 8
  %call12 = call i32 @drm_fb_clip_offset(i32 noundef %26, ptr noundef %28, ptr noundef nonnull %dst_clip) #8
  %add.ptr = getelementptr i8, ptr %7, i32 %call12
  %29 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pitch, align 4
  %31 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %format, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %call16 = call i32 @drm_fb_blit_toio(ptr noundef %add.ptr, i32 noundef %30, i32 noundef %34, ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %src_clip) #8
  %35 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %36) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst_clip) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_clip) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simpledrm_simple_display_pipe_disable(ptr nocapture noundef readonly %pipe) #2 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !133
  %call3 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #8
  br i1 %call3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %screen_base = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %screen_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %screen_base, align 4
  %pitch = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pitch, align 4
  %vdisplay = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 6, i32 6
  %7 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vdisplay, align 2
  %conv = zext i16 %8 to i32
  %mul = mul i32 %6, %conv
  call void @mmioset(ptr noundef %4, i32 noundef 0, i32 noundef %mul) #8
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simpledrm_simple_display_pipe_update(ptr nocapture noundef readonly %pipe, ptr noundef %old_plane_state) #2 align 64 {
entry:
  %src_clip = alloca %struct.drm_rect, align 4
  %dst_clip = alloca %struct.drm_rect, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %state = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb2, align 4
  %screen_base = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %screen_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %screen_base, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %src_clip) #8
  %10 = call ptr @memset(ptr %src_clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst_clip) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %11 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %idx, align 4, !annotation !133
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef %old_plane_state, ptr noundef %3, ptr noundef nonnull %src_clip) #8
  br i1 %call5, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dst8 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 21
  %12 = call ptr @memcpy(ptr %dst_clip, ptr %dst8, i32 16)
  %call9 = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %dst_clip, ptr noundef nonnull %src_clip) #8
  br i1 %call9, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #8
  br i1 %call12, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %pitch = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pitch, align 4
  %format = getelementptr inbounds %struct.simpledrm_device, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %format, align 8
  %call15 = call i32 @drm_fb_clip_offset(i32 noundef %14, ptr noundef %16, ptr noundef nonnull %dst_clip) #8
  %add.ptr = getelementptr i8, ptr %9, i32 %call15
  %17 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pitch, align 4
  %19 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %format, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %call19 = call i32 @drm_fb_blit_toio(ptr noundef %add.ptr, i32 noundef %18, i32 noundef %22, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %src_clip) #8
  %23 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst_clip) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %src_clip) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_simple_kms_prepare_shadow_fb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_cleanup_shadow_fb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_reset_shadow_plane(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_simple_kms_duplicate_shadow_plane_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_simple_kms_destroy_shadow_plane_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_clip_offset(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_blit_toio(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

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
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_simpledrm__324_919_simpledrm_platform_driver_init6, !1, !"__initcall__kmod_simpledrm__324_919_simpledrm_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 919, i32 1}
!2 = !{ptr @__exitcall_simpledrm_platform_driver_exit, !1, !"__exitcall_simpledrm_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description325, !4, !"__UNIQUE_ID_description325", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 921, i32 1}
!5 = !{ptr @__UNIQUE_ID_file326, !6, !"__UNIQUE_ID_file326", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 922, i32 1}
!7 = !{ptr @__UNIQUE_ID_license327, !6, !"__UNIQUE_ID_license327", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 912, i32 11}
!10 = !{ptr @simpledrm_platform_driver, !11, !"simpledrm_platform_driver", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 910, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 299, i32 4}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @simpledrm_device_init_clocks._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @simpledrm_device_init_clocks._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 304, i32 4}
!22 = !{ptr @simpledrm_device_init_clocks._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @simpledrm_device_init_clocks._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 386, i32 26}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 415, i32 4}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @simpledrm_device_init_regulators._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @simpledrm_device_init_regulators._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 422, i32 4}
!33 = !{ptr @simpledrm_device_init_regulators._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @simpledrm_device_init_regulators._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 504, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @simpledrm_device_init_fb._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @simpledrm_device_init_fb._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 512, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 514, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 103, i32 42}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 63, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @simplefb_get_validated_int0._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @simplefb_get_validated_int0._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 51, i32 3}
!53 = !{ptr @simplefb_get_validated_int._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @simplefb_get_validated_int._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 110, i32 42}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 117, i32 41}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 73, i32 50}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @simplefb_get_validated_format.formats, !71, !"formats", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 73, i32 38}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 79, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @simplefb_get_validated_format._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @simplefb_get_validated_format._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 93, i32 2}
!79 = !{ptr @simplefb_get_validated_format._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @simplefb_get_validated_format._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 134, i32 3}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @simplefb_read_u32_of._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @simplefb_read_u32_of._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 188, i32 50}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 146, i32 3}
!90 = !{ptr @simplefb_read_string_of._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @simplefb_read_string_of._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 539, i32 3}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @simpledrm_device_init_mm._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @simpledrm_device_init_mm._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @simpledrm_mode_config_funcs, !98, !"simpledrm_mode_config_funcs", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 725, i32 43}
!99 = !{ptr @simpledrm_connector_funcs, !100, !"simpledrm_connector_funcs", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 610, i32 41}
!101 = !{ptr @simpledrm_connector_helper_funcs, !102, !"simpledrm_connector_helper_funcs", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 606, i32 48}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 759, i32 6}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !107, !"simpledrm_default_formats", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 567, i32 23}
!108 = !{ptr @simpledrm_simple_display_pipe_funcs, !109, !"simpledrm_simple_display_pipe_funcs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 717, i32 1}
!110 = !{ptr @simpledrm_format_modifiers, !111, !"simpledrm_format_modifiers", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 578, i32 23}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 861, i32 12}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 862, i32 12}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 863, i32 12}
!118 = !{ptr @simpledrm_driver, !119, !"simpledrm_driver", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 859, i32 26}
!120 = !{ptr @simpledrm_fops, !121, !"simpledrm_fops", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 857, i32 1}
!122 = !{ptr @simpledrm_of_match_table, !123, !"simpledrm_of_match_table", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/tiny/simpledrm.c", i32 904, i32 34}
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
!134 = !{!135}
!135 = distinct !{!135, !136, !"simpledrm_mode: %agg.result"}
!136 = distinct !{!136, !"simpledrm_mode"}
!137 = !{!"branch_weights", i32 2000, i32 1}
