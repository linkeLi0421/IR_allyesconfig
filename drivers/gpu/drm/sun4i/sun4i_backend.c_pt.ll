; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_backend.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_backend.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.component_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sunxi_engine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sun4i_backend_quirks = type { i8, i8 }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.sun4i_layer_state = type { %struct.drm_plane_state, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.sun4i_backend = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, ptr }
%struct.sun4i_drv = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.sun4i_frontend = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.sun4i_layer = type { %struct.drm_plane, ptr, ptr, i32 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%sabling layer %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Updating layer %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Primary layer, updating global size W: %u H: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Layer size W: %u H: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Layer coordinates X: %d Y: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Switching display backend interlaced mode %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid format\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Layer line width: %d bits\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Setting buffer address to %pad\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting address lower bits to 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Setting address high bits to 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Setting layer %d's priority to %d and pipe %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__initcall__kmod_sun4i_backend__318_1036_sun4i_backend_platform_driver_init6 = internal global ptr @sun4i_backend_platform_driver_init, section ".initcall6.init", align 4
@sun4i_backend_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_backend_probe, ptr @sun4i_backend_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.19, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_backend_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_backend_platform_driver_exit = internal global ptr @sun4i_backend_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author319 = internal constant [70 x i8] c"sun4i_backend.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [63 x i8] c"sun4i_backend.description=Allwinner A10 Display Backend Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [55 x i8] c"sun4i_backend.file=drivers/gpu/drm/sun4i/sun4i-backend\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [26 x i8] c"sun4i_backend.license=GPL\00", section ".modinfo", align 1
@sunxi_bt601_yuv2rgb_coef = external dso_local local_unnamed_addr constant [12 x i32], align 4
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported YUV format (0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unsupported YUV pixel sequence (0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Setting packed YUV buffer address to %pad\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sun4i-backend\00", [18 x i8] zeroinitializer }, align 32
@sun4i_backend_of_table = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_backend_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-display-backend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_backend_quirks }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@sun4i_backend_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sun4i_backend_bind, ptr @sun4i_backend_unbind }, [24 x i8] zeroinitializer }, align 32
@sun4i_backend_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&backend->frontend_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"interconnects\00", [18 x i8] zeroinitializer }, align 32
@sun4i_backend_engine_ops = internal constant { %struct.sunxi_engine_ops, [36 x i8] } { %struct.sunxi_engine_ops { ptr @sun4i_backend_atomic_begin, ptr @sun4i_backend_atomic_check, ptr @sun4i_backend_commit, ptr @sun4i_layers_init, ptr @sun4i_backend_apply_color_correction, ptr @sun4i_backend_disable_color_correction, ptr @sun4i_backend_vblank_quirk }, [36 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 815, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Couldn't find matching frontend, frontend features disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun4i_backend_bind\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/sun4i/sun4i_backend.c\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry_ptr = internal global ptr @sun4i_backend_bind._entry, section ".printk_index", align 4
@sun4i_backend_bind._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.24, i32 823, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset line\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry_ptr.30 = internal global ptr @sun4i_backend_bind._entry.27, section ".printk_index", align 4
@sun4i_backend_bind._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.24, i32 829, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't deassert our reset line\0A\00", [62 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry_ptr.33 = internal global ptr @sun4i_backend_bind._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.23, ptr @.str.24, i32 835, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't get the backend bus clock\0A\00", [60 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry_ptr.37 = internal global ptr @sun4i_backend_bind._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.23, ptr @.str.24, i32 843, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't get the backend module clock\0A\00", [57 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry_ptr.41 = internal global ptr @sun4i_backend_bind._entry.39, section ".printk_index", align 4
@sun4i_backend_bind._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.23, ptr @.str.24, i32 850, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Couldn't set the module clock frequency\0A\00", [55 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry_ptr.44 = internal global ptr @sun4i_backend_bind._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ram\00", [28 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.23, ptr @.str.24, i32 858, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't get the backend RAM clock\0A\00", [60 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry_ptr.48 = internal global ptr @sun4i_backend_bind._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"allwinner,sun8i-a33-display-backend\00", [60 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.23, ptr @.str.24, i32 868, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't init SAT resources\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry_ptr.52 = internal global ptr @sun4i_backend_bind._entry.50, section ".printk_index", align 4
@sun4i_backend_bind._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sun4i_backend_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 22528, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sun4i_backend:874:(&sun4i_backend_regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.23, ptr @.str.24, i32 876, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't create the backend regmap\0A\00", [60 x i8] zeroinitializer }, align 32
@sun4i_backend_bind._entry_ptr.56 = internal global ptr @sun4i_backend_bind._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Starting checking our planes\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Using the frontend for plane %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Plane FB format is YUV\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Plane FB format is %p4cc\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Plane zpos is %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Too many planes with alpha, rejecting...\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Too many planes with YUV, rejecting...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Too many planes going through the frontend, rejecting\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"State valid with %u planes, %u alpha, %u video, %u YUV\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Input size %dx%d, output size %dx%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Committing changes\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Applying RGB to YUV color correction\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disabling color correction\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sat\00", [28 x i8] zeroinitializer }, align 32
@sun4i_backend_init_sat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.24, i32 663, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get the SAT reset line\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_backend_init_sat\00", [41 x i8] zeroinitializer }, align 32
@sun4i_backend_init_sat._entry_ptr = internal global ptr @sun4i_backend_init_sat._entry, section ".printk_index", align 4
@sun4i_backend_init_sat._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.24, i32 669, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't deassert the SAT reset line\0A\00", [58 x i8] zeroinitializer }, align 32
@sun4i_backend_init_sat._entry_ptr.75 = internal global ptr @sun4i_backend_init_sat._entry.73, section ".printk_index", align 4
@sun4i_backend_init_sat._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.24, i32 675, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't get our SAT clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sun4i_backend_init_sat._entry_ptr.78 = internal global ptr @sun4i_backend_init_sat._entry.76, section ".printk_index", align 4
@sun4i_backend_init_sat._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.24, i32 682, ptr @.str.29, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't enable the SAT clock\0A\00", [33 x i8] zeroinitializer }, align 32
@sun4i_backend_init_sat._entry_ptr.81 = internal global ptr @sun4i_backend_init_sat._entry.79, section ".printk_index", align 4
@sun4i_backend_quirks = internal constant { %struct.sun4i_backend_quirks, [30 x i8] } { %struct.sun4i_backend_quirks { i8 1, i8 0 }, [30 x i8] zeroinitializer }, align 32
@sun5i_backend_quirks = internal constant { %struct.sun4i_backend_quirks, [30 x i8] } zeroinitializer, align 32
@sun6i_backend_quirks = internal constant { %struct.sun4i_backend_quirks, [30 x i8] } zeroinitializer, align 32
@sun7i_backend_quirks = internal constant { %struct.sun4i_backend_quirks, [30 x i8] } { %struct.sun4i_backend_quirks { i8 1, i8 0 }, [30 x i8] zeroinitializer }, align 32
@sun8i_a33_backend_quirks = internal constant { %struct.sun4i_backend_quirks, [30 x i8] } { %struct.sun4i_backend_quirks { i8 0, i8 1 }, [30 x i8] zeroinitializer }, align 32
@sun9i_backend_quirks = internal constant { %struct.sun4i_backend_quirks, [30 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 842088786, i64 842093121, i64 875710290, i64 875713089, i64 875713112, i64 892420434, i64 892424769, i64 909199186, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.83 = internal global [10 x i64] [i64 8, i64 32, i64 842088786, i64 842093121, i64 875710290, i64 875713089, i64 875713112, i64 892420434, i64 892424769, i64 909199186]
@__sancov_gen_cov_switch_values.84 = internal global [10 x i64] [i64 8, i64 32, i64 842088786, i64 842093121, i64 875710290, i64 875713089, i64 875713112, i64 892420434, i64 892424769, i64 909199186]
@__sancov_gen_cov_switch_values.85 = internal global [14 x i64] [i64 12, i64 32, i64 842088786, i64 842093121, i64 875710290, i64 875713089, i64 875713112, i64 892420434, i64 892424769, i64 909199186, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 85, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 173, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 176, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 184, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 191, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 278, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 295, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 354, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 361, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 368, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 375, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 391, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [30 x i8] c"sun4i_backend_platform_driver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1028, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 228, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 248, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 335, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1032, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant [23 x i8] c"sun4i_backend_of_table\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 995, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"sun4i_backend_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 957, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 792, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 794, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant [25 x i8] c"sun4i_backend_engine_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 760, i32 38 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 815, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 823, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 829, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 833, i32 39 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 835, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 841, i32 39 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 843, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 850, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 856, i32 39 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 858, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 865, i32 9 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 868, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [28 x i8] c"sun4i_backend_regmap_config\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 770, i32 35 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 873, i32 25 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 876, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 502, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 519, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 524, i32 5 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 529, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 534, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 585, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 611, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 616, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 620, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 416, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 73, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 51, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 64, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 661, i32 51 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 663, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 669, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 675, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 682, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [21 x i8] c"sun4i_backend_quirks\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 974, i32 42 }
@___asan_gen_.329 = private unnamed_addr constant [21 x i8] c"sun5i_backend_quirks\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 978, i32 42 }
@___asan_gen_.332 = private unnamed_addr constant [21 x i8] c"sun6i_backend_quirks\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 981, i32 42 }
@___asan_gen_.335 = private unnamed_addr constant [21 x i8] c"sun7i_backend_quirks\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 984, i32 42 }
@___asan_gen_.338 = private unnamed_addr constant [25 x i8] c"sun8i_a33_backend_quirks\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 988, i32 42 }
@___asan_gen_.341 = private unnamed_addr constant [21 x i8] c"sun9i_backend_quirks\00", align 1
@___asan_gen_.342 = private constant [41 x i8] c"../drivers/gpu/drm/sun4i/sun4i_backend.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 992, i32 42 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_sun4i_backend_platform_driver_exit, ptr @__initcall__kmod_sun4i_backend__318_1036_sun4i_backend_platform_driver_init6, ptr @sun4i_backend_bind._entry, ptr @sun4i_backend_bind._entry.27, ptr @sun4i_backend_bind._entry.31, ptr @sun4i_backend_bind._entry.35, ptr @sun4i_backend_bind._entry.39, ptr @sun4i_backend_bind._entry.42, ptr @sun4i_backend_bind._entry.46, ptr @sun4i_backend_bind._entry.50, ptr @sun4i_backend_bind._entry.54, ptr @sun4i_backend_bind._entry_ptr, ptr @sun4i_backend_bind._entry_ptr.30, ptr @sun4i_backend_bind._entry_ptr.33, ptr @sun4i_backend_bind._entry_ptr.37, ptr @sun4i_backend_bind._entry_ptr.41, ptr @sun4i_backend_bind._entry_ptr.44, ptr @sun4i_backend_bind._entry_ptr.48, ptr @sun4i_backend_bind._entry_ptr.52, ptr @sun4i_backend_bind._entry_ptr.56, ptr @sun4i_backend_init_sat._entry, ptr @sun4i_backend_init_sat._entry.73, ptr @sun4i_backend_init_sat._entry.76, ptr @sun4i_backend_init_sat._entry.79, ptr @sun4i_backend_init_sat._entry_ptr, ptr @sun4i_backend_init_sat._entry_ptr.75, ptr @sun4i_backend_init_sat._entry_ptr.78, ptr @sun4i_backend_init_sat._entry_ptr.81, ptr @sun4i_backend_platform_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @sun4i_backend_platform_driver, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @sun4i_backend_of_table, ptr @sun4i_backend_ops, ptr @sun4i_backend_bind.__key, ptr @.str.20, ptr @.str.21, ptr @sun4i_backend_engine_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @sun4i_backend_bind._key, ptr @sun4i_backend_regmap_config, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @sun4i_backend_quirks, ptr @sun5i_backend_quirks, ptr @sun6i_backend_quirks, ptr @sun7i_backend_quirks, ptr @sun8i_a33_backend_quirks, ptr @sun9i_backend_quirks], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_of_table to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_engine_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_bind._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_init_sat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_init_sat._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_init_sat._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_init_sat._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_backend_quirks to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_backend_quirks to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_backend_quirks to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun7i_backend_quirks to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_backend_quirks to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_backend_quirks to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun4i_backend_layer_enable(ptr nocapture noundef readonly %backend, i32 noundef %layer, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %enable, ptr @.str.1, ptr @.str.2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %layer) #6
  %add = add i32 %layer, 8
  %shl = shl nuw i32 1, %add
  %val.0 = select i1 %enable, i32 %shl, i32 0
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %backend, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 2048, i32 noundef %shl, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sun4i_backend_format_is_supported(i32 noundef %fmt, i64 noundef %modifier) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modifier)
  %cmp.not = icmp eq i64 %modifier, 0
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fmt, label %for.cond.11 [
    i32 892424769, label %for.body.preheader.cleanup_crit_edge
    i32 842093121, label %for.body.preheader.cleanup_crit_edge8
    i32 875713089, label %for.body.preheader.cleanup_crit_edge9
    i32 909199186, label %for.body.preheader.cleanup_crit_edge10
    i32 875710290, label %for.body.preheader.cleanup_crit_edge11
    i32 842088786, label %for.body.preheader.cleanup_crit_edge12
    i32 892420434, label %for.body.preheader.cleanup_crit_edge13
    i32 1498831189, label %for.body.preheader.cleanup_crit_edge14
    i32 1498765654, label %for.body.preheader.cleanup_crit_edge15
    i32 875713112, label %for.body.preheader.cleanup_crit_edge16
    i32 1448695129, label %for.body.preheader.cleanup_crit_edge17
    i32 1431918169, label %for.body.preheader.cleanup_crit_edge18
  ]

for.body.preheader.cleanup_crit_edge18:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge17:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge16:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge15:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge14:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge13:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge12:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge11:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge10:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge9:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge8:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.11:                                      ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.11, %for.body.preheader.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge8, %for.body.preheader.cleanup_crit_edge9, %for.body.preheader.cleanup_crit_edge10, %for.body.preheader.cleanup_crit_edge11, %for.body.preheader.cleanup_crit_edge12, %for.body.preheader.cleanup_crit_edge13, %for.body.preheader.cleanup_crit_edge14, %for.body.preheader.cleanup_crit_edge15, %for.body.preheader.cleanup_crit_edge16, %for.body.preheader.cleanup_crit_edge17, %for.body.preheader.cleanup_crit_edge18, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %for.body.preheader.cleanup_crit_edge ], [ false, %for.cond.11 ], [ true, %for.body.preheader.cleanup_crit_edge8 ], [ true, %for.body.preheader.cleanup_crit_edge9 ], [ true, %for.body.preheader.cleanup_crit_edge10 ], [ true, %for.body.preheader.cleanup_crit_edge11 ], [ true, %for.body.preheader.cleanup_crit_edge12 ], [ true, %for.body.preheader.cleanup_crit_edge13 ], [ true, %for.body.preheader.cleanup_crit_edge14 ], [ true, %for.body.preheader.cleanup_crit_edge15 ], [ true, %for.body.preheader.cleanup_crit_edge16 ], [ true, %for.body.preheader.cleanup_crit_edge17 ], [ true, %for.body.preheader.cleanup_crit_edge18 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_backend_update_layer_coord(ptr nocapture noundef readonly %backend, i32 noundef %layer, ptr nocapture noundef readonly %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %layer) #6
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_w, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_h, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef %5, i32 noundef %7) #6
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %backend, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_h, align 4
  %sub = shl i32 %11, 16
  %shl = add i32 %sub, -65536
  %12 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_w, align 4
  %sub4 = add i32 %13, 65535
  %and5 = and i32 %sub4, 65535
  %or = or i32 %and5, %shl
  %call = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 2056, i32 noundef %or) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crtc_w6 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %crtc_w6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_w6, align 4
  %crtc_h7 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %crtc_h7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_h7, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %15, i32 noundef %17) #6
  %regs9 = getelementptr inbounds %struct.sunxi_engine, ptr %backend, i32 0, i32 2
  %18 = ptrtoint ptr %regs9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs9, align 4
  %mul = shl i32 %layer, 2
  %add = add i32 %mul, 2064
  %20 = ptrtoint ptr %crtc_h7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_h7, align 4
  %sub11 = shl i32 %21, 16
  %and12 = add i32 %sub11, 536805376
  %shl13 = and i32 %and12, 536805376
  %22 = ptrtoint ptr %crtc_w6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crtc_w6, align 4
  %sub15 = add i32 %23, 8191
  %and16 = and i32 %sub15, 8191
  %or17 = or i32 %shl13, %and16
  %call18 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %add, i32 noundef %or17) #6
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_y, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %25, i32 noundef %27) #6
  %28 = ptrtoint ptr %regs9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs9, align 4
  %add22 = add i32 %mul, 2080
  %30 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_y, align 4
  %shl25 = shl i32 %31, 16
  %32 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crtc_x, align 4
  %and27 = and i32 %33, 65535
  %or28 = or i32 %and27, %shl25
  %call29 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add22, i32 noundef %or28) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_backend_update_layer_formats(ptr nocapture noundef readonly %backend, i32 noundef %layer, ptr nocapture noundef readonly %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb2, align 4
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %backend, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %mul = shl i32 %layer, 2
  %add = add i32 %mul, 2192
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  br label %.thread

if.end:                                           ; preds = %entry
  %state6 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 22
  %12 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state6, align 4
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 7, i32 11
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  br i1 %tobool7.not, label %if.end..thread_crit_edge, label %18

if.end..thread_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %.thread

.thread:                                          ; preds = %if.end..thread_crit_edge, %if.end.thread
  %.ph = phi ptr [ %11, %if.end.thread ], [ %17, %if.end..thread_crit_edge ]
  %call.i5865 = tail call i32 @regmap_update_bits_base(ptr noundef %.ph, i32 noundef 2048, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %19

18:                                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 2048, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %19

19:                                               ; preds = %18, %.thread
  %20 = phi ptr [ @.str.8, %18 ], [ @.str.9, %.thread ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef nonnull %20) #6
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %alpha, align 4
  %23 = lshr i16 %22, 8
  %24 = zext i16 %23 to i32
  %shl = shl nuw i32 %24, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp.not = icmp ne i16 %22, -1
  %or = zext i1 %cmp.not to i32
  %spec.select = or i32 %shl, %or
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %add, i32 noundef -16777215, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %format, align 8
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_yuv, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool24.not = icmp eq i8 %30, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %19
  %31 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state1, align 4
  %fb2.i = getelementptr inbounds %struct.drm_plane_state, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %fb2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fb2.i, align 4
  %format3.i = getelementptr inbounds %struct.drm_framebuffer, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %format3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %format3.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sunxi_bt601_yuv2rgb_coef to i32))
  %41 = load i32, ptr @sunxi_bt601_yuv2rgb_coef, align 4
  %call.i60 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 2384, i32 noundef %41) #6
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 1) to i32))
  %44 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 1), align 4
  %call.1.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 2388, i32 noundef %44) #6
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 2) to i32))
  %47 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 2), align 4
  %call.2.i = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 2392, i32 noundef %47) #6
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 3) to i32))
  %50 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 3), align 4
  %call.3.i = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 2396, i32 noundef %50) #6
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 4) to i32))
  %53 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 4), align 4
  %call.4.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 2400, i32 noundef %53) #6
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 5) to i32))
  %56 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 5), align 4
  %call.5.i = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 2404, i32 noundef %56) #6
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 6) to i32))
  %59 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 6), align 4
  %call.6.i = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 2408, i32 noundef %59) #6
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 7) to i32))
  %62 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 7), align 4
  %call.7.i = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 2412, i32 noundef %62) #6
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 8) to i32))
  %65 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 8), align 4
  %call.8.i = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 2416, i32 noundef %65) #6
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 9) to i32))
  %68 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 9), align 4
  %call.9.i = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 2420, i32 noundef %68) #6
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 10) to i32))
  %71 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 10), align 4
  %call.10.i = tail call i32 @regmap_write(ptr noundef %70, i32 noundef 2424, i32 noundef %71) #6
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 11) to i32))
  %74 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @sunxi_bt601_yuv2rgb_coef, i32 0, i32 11), align 4
  %call.11.i = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 2428, i32 noundef %74) #6
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef %add, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %is_yuv.i.i = getelementptr inbounds %struct.drm_format_info, ptr %36, i32 0, i32 9
  %77 = ptrtoint ptr %is_yuv.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %is_yuv.i.i, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i, label %if.then25.if.else.i_crit_edge, label %drm_format_info_is_yuv_packed.exit.i

if.then25.if.else.i_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

drm_format_info_is_yuv_packed.exit.i:             ; preds = %if.then25
  %num_planes.i.i = getelementptr inbounds %struct.drm_format_info, ptr %36, i32 0, i32 2
  %79 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_planes.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %80)
  %cmp.i.i = icmp eq i8 %80, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %drm_format_info_is_yuv_packed.exit.i.if.else.i_crit_edge

drm_format_info_is_yuv_packed.exit.i.if.else.i_crit_edge: ; preds = %drm_format_info_is_yuv_packed.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i.i:                                ; preds = %drm_format_info_is_yuv_packed.exit.i
  %hsub.i.i = getelementptr inbounds %struct.drm_format_info, ptr %36, i32 0, i32 6
  %81 = ptrtoint ptr %hsub.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %hsub.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp.i3.i = icmp eq i8 %82, 2
  br i1 %cmp.i3.i, label %drm_format_info_is_yuv_sampling_422.exit.i, label %land.lhs.true.i.i.if.else.i_crit_edge

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

drm_format_info_is_yuv_sampling_422.exit.i:       ; preds = %land.lhs.true.i.i
  %vsub.i.i = getelementptr inbounds %struct.drm_format_info, ptr %36, i32 0, i32 7
  %83 = ptrtoint ptr %vsub.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %vsub.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp3.i.i = icmp eq i8 %84, 1
  br i1 %cmp3.i.i, label %drm_format_info_is_yuv_sampling_422.exit.i.if.end.i_crit_edge, label %drm_format_info_is_yuv_sampling_422.exit.i.if.else.i_crit_edge

drm_format_info_is_yuv_sampling_422.exit.i.if.else.i_crit_edge: ; preds = %drm_format_info_is_yuv_sampling_422.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

drm_format_info_is_yuv_sampling_422.exit.i.if.end.i_crit_edge: ; preds = %drm_format_info_is_yuv_sampling_422.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.else.i:                                        ; preds = %drm_format_info_is_yuv_sampling_422.exit.i.if.else.i_crit_edge, %land.lhs.true.i.i.if.else.i_crit_edge, %drm_format_info_is_yuv_packed.exit.i.if.else.i_crit_edge, %if.then25.if.else.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %38) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %drm_format_info_is_yuv_sampling_422.exit.i.if.end.i_crit_edge
  %val.0.i = phi i32 [ 1, %if.else.i ], [ 12289, %drm_format_info_is_yuv_sampling_422.exit.i.if.end.i_crit_edge ]
  %85 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %38, label %sw.default.i [
    i32 1448695129, label %sw.bb.i
    i32 1431918169, label %if.end.i.sun4i_backend_update_yuv_format.exit_crit_edge
    i32 1498831189, label %sw.bb15.i
    i32 1498765654, label %sw.bb17.i
  ]

if.end.i.sun4i_backend_update_yuv_format.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_backend_update_yuv_format.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %or12.i = or i32 %val.0.i, 512
  br label %sun4i_backend_update_yuv_format.exit

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %or16.i = or i32 %val.0.i, 768
  br label %sun4i_backend_update_yuv_format.exit

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %or18.i = or i32 %val.0.i, 256
  br label %sun4i_backend_update_yuv_format.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %38) #6
  br label %sun4i_backend_update_yuv_format.exit

sun4i_backend_update_yuv_format.exit:             ; preds = %sw.default.i, %sw.bb17.i, %sw.bb15.i, %sw.bb.i, %if.end.i.sun4i_backend_update_yuv_format.exit_crit_edge
  %val.1.i = phi i32 [ %val.0.i, %sw.default.i ], [ %or18.i, %sw.bb17.i ], [ %or16.i, %sw.bb15.i ], [ %or12.i, %sw.bb.i ], [ %val.0.i, %if.end.i.sun4i_backend_update_yuv_format.exit_crit_edge ]
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  %call21.i = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 2336, i32 noundef %val.1.i) #6
  br label %cleanup

if.end27:                                         ; preds = %19
  %88 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %28, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %89, label %if.then32 [
    i32 875713089, label %if.end27.if.end33_crit_edge
    i32 842093121, label %sw.bb1.i
    i32 892424769, label %sw.bb2.i
    i32 892420434, label %sw.bb3.i
    i32 842088786, label %sw.bb4.i
    i32 875713112, label %sw.bb5.i
    i32 875710290, label %sw.bb6.i
    i32 909199186, label %sw.bb7.i
  ]

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

sw.bb1.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

sw.bb2.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

sw.bb3.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

sw.bb4.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

sw.bb5.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

sw.bb6.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

sw.bb7.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end33:                                         ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end27.if.end33_crit_edge
  %.sink.i = phi i32 [ 3072, %sw.bb1.i ], [ 1792, %sw.bb2.i ], [ 2048, %sw.bb3.i ], [ 3328, %sw.bb4.i ], [ 2304, %sw.bb5.i ], [ 2816, %sw.bb6.i ], [ 1280, %sw.bb7.i ], [ 2560, %if.end27.if.end33_crit_edge ]
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %add37 = add i32 %mul, 2208
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef %add37, i32 noundef 3840, i32 noundef %.sink.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then32, %sun4i_backend_update_yuv_format.exit
  %retval.0 = phi i32 [ 0, %sun4i_backend_update_yuv_format.exit ], [ -22, %if.then32 ], [ 0, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_backend_update_layer_frontend(ptr nocapture noundef readonly %backend, i32 noundef %layer, i32 noundef %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %fmt, label %if.then [
    i32 875713089, label %entry.if.end_crit_edge
    i32 842093121, label %sw.bb1.i
    i32 892424769, label %sw.bb2.i
    i32 892420434, label %sw.bb3.i
    i32 842088786, label %sw.bb4.i
    i32 875713112, label %sw.bb5.i
    i32 875710290, label %sw.bb6.i
    i32 909199186, label %sw.bb7.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.if.end_crit_edge
  %.sink.i = phi i32 [ 3072, %sw.bb1.i ], [ 1792, %sw.bb2.i ], [ 2048, %sw.bb3.i ], [ 3328, %sw.bb4.i ], [ 2304, %sw.bb5.i ], [ 2816, %sw.bb6.i ], [ 1280, %sw.bb7.i ], [ 2560, %entry.if.end_crit_edge ]
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %backend, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %mul = shl i32 %layer, 2
  %add = add i32 %mul, 2192
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %add, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add5 = add i32 %mul, 2208
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %add5, i32 noundef 3840, i32 noundef %.sink.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_backend_update_layer_buffer(ptr nocapture noundef readonly %backend, i32 noundef %layer, ptr nocapture noundef readonly %plane) local_unnamed_addr #0 align 64 {
entry:
  %paddr.addr.i = alloca i32, align 4
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #6
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pitches, align 8
  %mul = shl i32 %5, 3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %mul) #6
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %backend, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %mul3 = shl i32 %layer, 2
  %add = add i32 %mul3, 2112
  %8 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pitches, align 8
  %mul6 = shl i32 %9, 3
  %call = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add, i32 noundef %mul6) #6
  %call7 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef %3, ptr noundef %1, i32 noundef 0) #6
  %10 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call7, ptr %paddr, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef nonnull %paddr) #6
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %format, align 8
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_yuv, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %paddr, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.addr.i)
  %17 = ptrtoint ptr %paddr.addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %paddr.addr.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef nonnull %paddr.addr.i) #6
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %20 = ptrtoint ptr %paddr.addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %paddr.addr.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %19, i32 noundef 2352, i32 noundef %21) #6
  %22 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pitches, align 8
  %mul.i = shl i32 %23, 3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %mul.i) #6
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %26 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pitches, align 8
  %mul5.i = shl i32 %27, 3
  %call6.i = call i32 @regmap_write(ptr noundef %25, i32 noundef 2368, i32 noundef %mul5.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %16, 3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %shl) #6
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add12 = add i32 %mul3, 2128
  %call13 = call i32 @regmap_write(ptr noundef %29, i32 noundef %add12, i32 noundef %shl) #6
  %30 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %paddr, align 4
  %shr = lshr i32 %31, 29
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %shr) #6
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %mul16 = shl i32 %layer, 3
  %shl17.neg = shl nsw i32 -1, %mul16
  %sub21 = sub i32 28, %mul16
  %shr22 = lshr i32 -1, %sub21
  %and = and i32 %shr22, %shl17.neg
  %shl25 = shl i32 %shr, %mul16
  %call.i45 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 2144, i32 noundef %and, i32 noundef %shl25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_backend_update_layer_zpos(ptr nocapture noundef readonly %backend, i32 noundef %layer, ptr nocapture noundef readonly %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %normalized_zpos, align 4
  %pipe2 = getelementptr inbounds %struct.sun4i_layer_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %layer, i32 noundef %3, i32 noundef %5) #6
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %backend, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %mul = shl i32 %layer, 2
  %add = add i32 %mul, 2192
  %8 = ptrtoint ptr %pipe2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe2, align 4
  %shl = shl i32 %9, 15
  %shl4 = shl i32 %3, 10
  %or = or i32 %shl, %shl4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add, i32 noundef 35840, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun4i_backend_cleanup_layer(ptr nocapture noundef readonly %backend, i32 noundef %layer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %backend, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %mul = shl i32 %layer, 2
  %add = add i32 %mul, 2192
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_backend_platform_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_backend_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_backend_platform_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_backend_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_backend_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @sun4i_backend_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_backend_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sun4i_backend_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_backend_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %of_ep.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %frontend_lock = getelementptr inbounds %struct.sun4i_backend, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %frontend_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @sun4i_backend_bind.__key, i16 noundef signext 3) #6
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef null) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 4
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i239 = tail call i32 @of_dma_configure_id(ptr noundef %6, ptr noundef %8, i1 noundef zeroext true, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool8.not = icmp eq i32 %call.i239, 0
  br i1 %tobool8.not, label %if.then4.if.end11_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %node = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %node, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sun4i_backend_engine_ops, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %of_ep.i) #6
  %13 = ptrtoint ptr %of_ep.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %of_ep.i, align 4, !annotation !184
  %14 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !184
  %16 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !184
  %call.i240 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %10, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i240, null
  br i1 %tobool.not.i, label %if.end11.sun4i_backend_of_get_id.exit.thread_crit_edge, label %if.end.i

if.end11.sun4i_backend_of_get_id.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_backend_of_get_id.exit.thread

if.end.i:                                         ; preds = %if.end11
  %call1.i = tail call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %call.i240) #6
  tail call void @of_node_put(ptr noundef nonnull %call.i240) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.sun4i_backend_of_get_id.exit.thread_crit_edge, label %sun4i_backend_of_get_id.exit

if.end.i.sun4i_backend_of_get_id.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_backend_of_get_id.exit.thread

sun4i_backend_of_get_id.exit.thread:              ; preds = %if.end.i.sun4i_backend_of_get_id.exit.thread_crit_edge, %if.end11.sun4i_backend_of_get_id.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %of_ep.i) #6
  %id281 = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %id281 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -22, ptr %id281, align 4
  br label %cleanup

sun4i_backend_of_get_id.exit:                     ; preds = %if.end.i
  %call5.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %call1.i, ptr noundef nonnull %of_ep.i) #6
  call void @of_node_put(ptr noundef nonnull %call1.i) #6
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %of_ep.i) #6
  %id = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %sun4i_backend_of_get_id.exit.cleanup_crit_edge, label %if.end22

sun4i_backend_of_get_id.exit.cleanup_crit_edge:   ; preds = %sun4i_backend_of_get_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %sun4i_backend_of_get_id.exit
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call.i241 = call ptr @of_graph_get_port_by_id(ptr noundef %23, i32 noundef 0) #6
  %tobool.not.i242 = icmp eq ptr %call.i241, null
  br i1 %tobool.not.i242, label %if.end22.do.end30.sink.split_crit_edge, label %if.end.i243

if.end22.do.end30.sink.split_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.sink.split

if.end.i243:                                      ; preds = %if.end22
  %call2.i = call ptr @of_get_next_available_child(ptr noundef nonnull %call.i241, ptr noundef null) #6
  %cmp.not42.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not42.i, label %if.end.i243.sun4i_backend_find_frontend.exit.thread286_crit_edge, label %for.body.lr.ph.i

if.end.i243.sun4i_backend_find_frontend.exit.thread286_crit_edge: ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_backend_find_frontend.exit.thread286

for.body.lr.ph.i:                                 ; preds = %if.end.i243
  %frontend_list.i = getelementptr inbounds %struct.sun4i_drv, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ep.043.i = phi ptr [ %call2.i, %for.body.lr.ph.i ], [ %call21.i, %for.inc20.i.for.body.i_crit_edge ]
  %call3.i = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %ep.043.i) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %for.body.i.for.inc20.i_crit_edge, label %if.end6.i

for.body.i.for.inc20.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.i

if.end6.i:                                        ; preds = %for.body.i
  call void @of_node_put(ptr noundef nonnull %call3.i) #6
  br label %for.cond7.i

for.cond7.i:                                      ; preds = %for.body10.i.for.cond7.i_crit_edge, %if.end6.i
  %frontend.0.in.i = phi ptr [ %frontend_list.i, %if.end6.i ], [ %frontend.0.i, %for.body10.i.for.cond7.i_crit_edge ]
  %24 = ptrtoint ptr %frontend.0.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %frontend.0.i = load ptr, ptr %frontend.0.in.i, align 4
  %cmp9.not.i = icmp eq ptr %frontend.0.i, %frontend_list.i
  br i1 %cmp9.not.i, label %for.cond7.i.for.inc20.i_crit_edge, label %for.body10.i

for.cond7.i.for.inc20.i_crit_edge:                ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc20.i

for.body10.i:                                     ; preds = %for.cond7.i
  %node11.i = getelementptr inbounds %struct.sun4i_frontend, ptr %frontend.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %node11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node11.i, align 4
  %cmp12.i = icmp eq ptr %call3.i, %26
  br i1 %cmp12.i, label %sun4i_backend_find_frontend.exit, label %for.body10.i.for.cond7.i_crit_edge

for.body10.i.for.cond7.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond7.i

for.inc20.i:                                      ; preds = %for.cond7.i.for.inc20.i_crit_edge, %for.body.i.for.inc20.i_crit_edge
  %call21.i = call ptr @of_get_next_available_child(ptr noundef nonnull %call.i241, ptr noundef nonnull %ep.043.i) #6
  %cmp.not.i = icmp eq ptr %call21.i, null
  br i1 %cmp.not.i, label %for.inc20.i.sun4i_backend_find_frontend.exit.thread286_crit_edge, label %for.inc20.i.for.body.i_crit_edge

for.inc20.i.for.body.i_crit_edge:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc20.i.sun4i_backend_find_frontend.exit.thread286_crit_edge: ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_backend_find_frontend.exit.thread286

sun4i_backend_find_frontend.exit.thread286:       ; preds = %for.inc20.i.sun4i_backend_find_frontend.exit.thread286_crit_edge, %if.end.i243.sun4i_backend_find_frontend.exit.thread286_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i241) #6
  br label %do.end30.sink.split

sun4i_backend_find_frontend.exit:                 ; preds = %for.body10.i
  call void @of_node_put(ptr noundef nonnull %call.i241) #6
  call void @of_node_put(ptr noundef nonnull %ep.043.i) #6
  %frontend = getelementptr inbounds %struct.sun4i_backend, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %frontend.0.i, ptr %frontend, align 4
  %cmp.i = icmp ugt ptr %frontend.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sun4i_backend_find_frontend.exit.do.end30_crit_edge, label %sun4i_backend_find_frontend.exit.if.end31_crit_edge

sun4i_backend_find_frontend.exit.if.end31_crit_edge: ; preds = %sun4i_backend_find_frontend.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

sun4i_backend_find_frontend.exit.do.end30_crit_edge: ; preds = %sun4i_backend_find_frontend.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end30.sink.split:                              ; preds = %sun4i_backend_find_frontend.exit.thread286, %if.end22.do.end30.sink.split_crit_edge
  %frontend289 = getelementptr inbounds %struct.sun4i_backend, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %frontend289 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -22 to ptr), ptr %frontend289, align 4
  br label %do.end30

do.end30:                                         ; preds = %do.end30.sink.split, %sun4i_backend_find_frontend.exit.do.end30_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %sun4i_backend_find_frontend.exit.if.end31_crit_edge
  %call32 = call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #6
  %cmp.i245 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %reset = getelementptr inbounds %struct.sun4i_backend, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i246 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  %31 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reset, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end36
  %call48 = call i32 @reset_control_deassert(ptr noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end54, label %do.end53

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  %call55 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.34) #6
  %bus_clk = getelementptr inbounds %struct.sun4i_backend, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call55, ptr %bus_clk, align 4
  %cmp.i247 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %do.end61, label %if.end64

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #9
  %35 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus_clk, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %err_assert_reset

if.end64:                                         ; preds = %if.end54
  %call.i248 = call i32 @clk_prepare(ptr noundef %call55) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool.not.i249 = icmp eq i32 %call.i248, 0
  br i1 %tobool.not.i249, label %if.end.i252, label %if.end64.clk_prepare_enable.exit_crit_edge

if.end64.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i252:                                      ; preds = %if.end64
  %call1.i250 = call i32 @clk_enable(ptr noundef %call55) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i250)
  %tobool2.not.i251 = icmp eq i32 %call1.i250, 0
  br i1 %tobool2.not.i251, label %if.end.i252.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i252.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call55) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i252.clk_prepare_enable.exit_crit_edge, %if.end64.clk_prepare_enable.exit_crit_edge
  %call67 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.38) #6
  %mod_clk = getelementptr inbounds %struct.sun4i_backend, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %mod_clk to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call67, ptr %mod_clk, align 4
  %cmp.i254 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %do.end73, label %if.end76

do.end73:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  %39 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mod_clk, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %err_disable_bus_clk

if.end76:                                         ; preds = %clk_prepare_enable.exit
  %call78 = call i32 @clk_set_rate_exclusive(ptr noundef %call67, i32 noundef 300000000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end84, label %do.end83

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #9
  br label %err_disable_bus_clk

if.end84:                                         ; preds = %if.end76
  %42 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mod_clk, align 4
  %call.i255 = call i32 @clk_prepare(ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool.not.i256 = icmp eq i32 %call.i255, 0
  br i1 %tobool.not.i256, label %if.end.i259, label %if.end84.clk_prepare_enable.exit262_crit_edge

if.end84.clk_prepare_enable.exit262_crit_edge:    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit262

if.end.i259:                                      ; preds = %if.end84
  %call1.i257 = call i32 @clk_enable(ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i257)
  %tobool2.not.i258 = icmp eq i32 %call1.i257, 0
  br i1 %tobool2.not.i258, label %if.end.i259.clk_prepare_enable.exit262_crit_edge, label %if.then3.i260

if.end.i259.clk_prepare_enable.exit262_crit_edge: ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit262

if.then3.i260:                                    ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %43) #6
  br label %clk_prepare_enable.exit262

clk_prepare_enable.exit262:                       ; preds = %if.then3.i260, %if.end.i259.clk_prepare_enable.exit262_crit_edge, %if.end84.clk_prepare_enable.exit262_crit_edge
  %call87 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.45) #6
  %ram_clk = getelementptr inbounds %struct.sun4i_backend, ptr %call.i, i32 0, i32 5
  %44 = ptrtoint ptr %ram_clk to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call87, ptr %ram_clk, align 4
  %cmp.i263 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i263, label %do.end93, label %if.end96

do.end93:                                         ; preds = %clk_prepare_enable.exit262
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #9
  %45 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ram_clk, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %err_disable_mod_clk

if.end96:                                         ; preds = %clk_prepare_enable.exit262
  %call.i264 = call i32 @clk_prepare(ptr noundef %call87) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool.not.i265 = icmp eq i32 %call.i264, 0
  br i1 %tobool.not.i265, label %if.end.i268, label %if.end96.clk_prepare_enable.exit271_crit_edge

if.end96.clk_prepare_enable.exit271_crit_edge:    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit271

if.end.i268:                                      ; preds = %if.end96
  %call1.i266 = call i32 @clk_enable(ptr noundef %call87) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i266)
  %tobool2.not.i267 = icmp eq i32 %call1.i266, 0
  br i1 %tobool2.not.i267, label %if.end.i268.clk_prepare_enable.exit271_crit_edge, label %if.then3.i269

if.end.i268.clk_prepare_enable.exit271_crit_edge: ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit271

if.then3.i269:                                    ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call87) #6
  br label %clk_prepare_enable.exit271

clk_prepare_enable.exit271:                       ; preds = %if.then3.i269, %if.end.i268.clk_prepare_enable.exit271_crit_edge, %if.end96.clk_prepare_enable.exit271_crit_edge
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call100 = call i32 @of_device_is_compatible(ptr noundef %49, ptr noundef nonnull @.str.49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %clk_prepare_enable.exit271.if.end110_crit_edge, label %if.then102

clk_prepare_enable.exit271.if.end110_crit_edge:   ; preds = %clk_prepare_enable.exit271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then102:                                       ; preds = %clk_prepare_enable.exit271
  %50 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i, align 4
  %call.i.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %sat_reset.i = getelementptr inbounds %struct.sun4i_backend, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %sat_reset.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i.i, ptr %sat_reset.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i273

do.end.i:                                         ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #9
  %53 = ptrtoint ptr %sat_reset.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sat_reset.i, align 4
  br label %sun4i_backend_init_sat.exit

if.end.i273:                                      ; preds = %if.then102
  %call7.i = call i32 @reset_control_deassert(ptr noundef %call.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i272 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i272, label %if.end12.i, label %if.end.i273.do.end108.sink.split_crit_edge

if.end.i273.do.end108.sink.split_crit_edge:       ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end108.sink.split

if.end12.i:                                       ; preds = %if.end.i273
  %call13.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.70) #6
  %sat_clk.i = getelementptr inbounds %struct.sun4i_backend, ptr %51, i32 0, i32 6
  %55 = ptrtoint ptr %sat_clk.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call13.i, ptr %sat_clk.i, align 4
  %cmp.i52.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52.i, label %do.end19.i, label %if.end22.i

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77) #9
  %56 = ptrtoint ptr %sat_clk.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sat_clk.i, align 4
  %58 = ptrtoint ptr %sat_reset.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sat_reset.i, align 4
  %call32.i = call i32 @reset_control_assert(ptr noundef %59) #6
  br label %sun4i_backend_init_sat.exit

if.end22.i:                                       ; preds = %if.end12.i
  %call.i.i274 = call i32 @clk_prepare(ptr noundef %call13.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i274)
  %tobool.not.i.i = icmp eq i32 %call.i.i274, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end22.i.do.end108.sink.split_crit_edge

if.end22.i.do.end108.sink.split_crit_edge:        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end108.sink.split

if.end.i.i:                                       ; preds = %if.end22.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %call13.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end110_crit_edge, label %if.then3.i.i

if.end.i.i.if.end110_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call13.i) #6
  br label %do.end108.sink.split

sun4i_backend_init_sat.exit:                      ; preds = %do.end19.i, %do.end.i
  %retval.0.i275.in = phi ptr [ %54, %do.end.i ], [ %57, %do.end19.i ]
  %retval.0.i275 = ptrtoint ptr %retval.0.i275.in to i32
  %tobool104.not = icmp eq ptr %retval.0.i275.in, null
  br i1 %tobool104.not, label %sun4i_backend_init_sat.exit.if.end110_crit_edge, label %sun4i_backend_init_sat.exit.do.end108_crit_edge

sun4i_backend_init_sat.exit.do.end108_crit_edge:  ; preds = %sun4i_backend_init_sat.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end108

sun4i_backend_init_sat.exit.if.end110_crit_edge:  ; preds = %sun4i_backend_init_sat.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

do.end108.sink.split:                             ; preds = %if.then3.i.i, %if.end22.i.do.end108.sink.split_crit_edge, %if.end.i273.do.end108.sink.split_crit_edge
  %.str.80.sink = phi ptr [ @.str.74, %if.end.i273.do.end108.sink.split_crit_edge ], [ @.str.80, %if.then3.i.i ], [ @.str.80, %if.end22.i.do.end108.sink.split_crit_edge ]
  %retval.0.i275293.ph = phi i32 [ %call7.i, %if.end.i273.do.end108.sink.split_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i274, %if.end22.i.do.end108.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.80.sink) #9
  br label %do.end108

do.end108:                                        ; preds = %do.end108.sink.split, %sun4i_backend_init_sat.exit.do.end108_crit_edge
  %retval.0.i275293 = phi i32 [ %retval.0.i275, %sun4i_backend_init_sat.exit.do.end108_crit_edge ], [ %retval.0.i275293.ph, %do.end108.sink.split ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #9
  %60 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ram_clk, align 4
  call void @clk_disable(ptr noundef %61) #6
  call void @clk_unprepare(ptr noundef %61) #6
  br label %err_disable_mod_clk

if.end110:                                        ; preds = %sun4i_backend_init_sat.exit.if.end110_crit_edge, %if.end.i.i.if.end110_crit_edge, %clk_prepare_enable.exit271.if.end110_crit_edge
  %call112 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call32, ptr noundef nonnull @sun4i_backend_regmap_config, ptr noundef nonnull @sun4i_backend_bind._key, ptr noundef nonnull @.str.53) #6
  %regs114 = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 2
  %62 = ptrtoint ptr %regs114 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call112, ptr %regs114, align 4
  %cmp.i276 = icmp ugt ptr %call112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276, label %do.end121, label %if.end125

do.end121:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #9
  %63 = ptrtoint ptr %regs114 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs114, align 4
  %65 = ptrtoint ptr %64 to i32
  br label %cleanup

if.end125:                                        ; preds = %if.end110
  %list = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i, align 4
  %call.i.i277 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %67, ptr noundef %1) #6
  br i1 %call.i.i277, label %if.end.i.i278, label %if.end125.for.body.preheader_crit_edge

if.end125.for.body.preheader_crit_edge:           ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.end.i.i278:                                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list, ptr %prev.i, align 4
  %69 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %1, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %list, ptr %67, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.i.i278, %if.end125.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0299 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 2048, %for.body.preheader ]
  %72 = ptrtoint ptr %regs114 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs114, align 4
  %call130 = call i32 @regmap_write(ptr noundef %73, i32 noundef %i.0299, i32 noundef 0) #6
  %add = add nuw nsw i32 %i.0299, 4
  %cmp127 = icmp ult i32 %i.0299, 4092
  br i1 %cmp127, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %74 = ptrtoint ptr %regs114 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs114, align 4
  %call133 = call i32 @regmap_write(ptr noundef %75, i32 noundef 2160, i32 noundef 2) #6
  %76 = ptrtoint ptr %regs114 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs114, align 4
  %call136 = call i32 @regmap_write(ptr noundef %77, i32 noundef 2048, i32 noundef 3) #6
  %call137 = call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %78 = ptrtoint ptr %call137 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %call137, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool138.not = icmp eq i8 %79, 0
  br i1 %tobool138.not, label %for.end.if.end146_crit_edge, label %if.then139

for.end.if.end146_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.then139:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %regs114 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs114, align 4
  %82 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool144.not = icmp eq i32 %83, 0
  %cond = select i1 %tobool144.not, i32 0, i32 1048576
  %call.i279 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 2048, i32 noundef 7340032, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end146

if.end146:                                        ; preds = %if.then139, %for.end.if.end146_crit_edge
  %quirks147 = getelementptr inbounds %struct.sun4i_backend, ptr %call.i, i32 0, i32 10
  %84 = ptrtoint ptr %quirks147 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call137, ptr %quirks147, align 4
  br label %cleanup

err_disable_mod_clk:                              ; preds = %do.end108, %do.end93
  %ret.0 = phi i32 [ %47, %do.end93 ], [ %retval.0.i275293, %do.end108 ]
  %85 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mod_clk, align 4
  call void @clk_rate_exclusive_put(ptr noundef %86) #6
  %87 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mod_clk, align 4
  call void @clk_disable(ptr noundef %88) #6
  call void @clk_unprepare(ptr noundef %88) #6
  br label %err_disable_bus_clk

err_disable_bus_clk:                              ; preds = %err_disable_mod_clk, %do.end83, %do.end73
  %ret.1 = phi i32 [ %41, %do.end73 ], [ %call78, %do.end83 ], [ %ret.0, %err_disable_mod_clk ]
  %89 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bus_clk, align 4
  call void @clk_disable(ptr noundef %90) #6
  call void @clk_unprepare(ptr noundef %90) #6
  br label %err_assert_reset

err_assert_reset:                                 ; preds = %err_disable_bus_clk, %do.end61
  %ret.2 = phi i32 [ %37, %do.end61 ], [ %ret.1, %err_disable_bus_clk ]
  %91 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reset, align 4
  %call153 = call i32 @reset_control_assert(ptr noundef %92) #6
  br label %cleanup

cleanup:                                          ; preds = %err_assert_reset, %if.end146, %do.end121, %do.end53, %do.end43, %if.then34, %sun4i_backend_of_get_id.exit.cleanup_crit_edge, %sun4i_backend_of_get_id.exit.thread, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.then34 ], [ %33, %do.end43 ], [ %call48, %do.end53 ], [ %ret.2, %err_assert_reset ], [ %65, %do.end121 ], [ 0, %if.end146 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i239, %if.then4.cleanup_crit_edge ], [ %20, %sun4i_backend_of_get_id.exit.cleanup_crit_edge ], [ -22, %sun4i_backend_of_get_id.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_backend_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %list = getelementptr inbounds %struct.sunxi_engine, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.sunxi_engine, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.sunxi_engine, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %11, ptr noundef nonnull @.str.49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %sat_clk.i = getelementptr inbounds %struct.sun4i_backend, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %sat_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sat_clk.i, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %sat_reset.i = getelementptr inbounds %struct.sun4i_backend, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %sat_reset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sat_reset.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %17) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %ram_clk = getelementptr inbounds %struct.sun4i_backend, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ram_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  %mod_clk = getelementptr inbounds %struct.sun4i_backend, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %21) #6
  %22 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #6
  tail call void @clk_unprepare(ptr noundef %23) #6
  %bus_clk = getelementptr inbounds %struct.sun4i_backend, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  tail call void @clk_unprepare(ptr noundef %25) #6
  %reset = getelementptr inbounds %struct.sun4i_backend, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reset, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %27) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_backend_atomic_begin(ptr nocapture noundef readonly %engine, ptr nocapture noundef readnone %old_state) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !184
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.24, i32 noundef 483) #6
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %engine, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %call877 = call i32 @regmap_read(ptr noundef %2, i32 noundef 2160, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call877)
  %tobool.not78 = icmp eq i32 %call877, 0
  br i1 %tobool.not78, label %entry.lor.lhs.false_crit_edge, label %entry.do.end42_crit_edge

entry.do.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 2160, ptr noundef nonnull %val) #6
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then21.lor.lhs.false_crit_edge, label %if.then21.do.end42_crit_edge

if.then21.do.end42_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

if.then21.lor.lhs.false_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %call18 = call i32 @regmap_read(ptr noundef %8, i32 noundef 2160, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool23.not = icmp eq i32 %call18, 0
  br i1 %tobool23.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end42_crit_edge

for.end.do.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and24 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.rhs.if.end48_crit_edge, label %lor.rhs.do.end42_crit_edge

lor.rhs.do.end42_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

lor.rhs.if.end48_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end42:                                         ; preds = %lor.rhs.do.end42_crit_edge, %for.end.do.end42_crit_edge, %if.then21.do.end42_crit_edge, %entry.do.end42_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 483, i32 noundef 9, ptr noundef null) #6
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %lor.rhs.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_backend_atomic_check(ptr nocapture noundef readonly %engine, ptr nocapture noundef readonly %crtc_state) #0 align 64 {
entry:
  %plane_states = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %plane_states) #6
  %0 = call ptr @memset(ptr %plane_states, i32 0, i32 16)
  %state1 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 20
  %1 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state1, align 4
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.57) #6
  %planes_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %5 = ptrtoint ptr %planes_changed to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %planes_changed, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.cleanup92_crit_edge, label %if.end

entry.cleanup92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

if.end:                                           ; preds = %entry
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 18
  %6 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn150 = load ptr, ptr %plane_list, align 4
  %cmp.not152 = icmp eq ptr %.pn150, %plane_list
  br i1 %cmp.not152, label %if.end.cleanup92_crit_edge, label %for.body.lr.ph

if.end.cleanup92_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

for.body.lr.ph:                                   ; preds = %if.end
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn162 = phi ptr [ %.pn150, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %num_yuv_planes.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %num_yuv_planes.3, %for.inc.for.body_crit_edge ]
  %num_frontend_planes.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %num_frontend_planes.3, %for.inc.for.body_crit_edge ]
  %num_alpha_planes.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %num_alpha_planes.3, %for.inc.for.body_crit_edge ]
  %num_planes.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %num_planes.2, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %plane_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn162, i32 480
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %10
  %and = and i32 %shl.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %plane.0163 = getelementptr i8, ptr %.pn162, i32 -4
  %call6 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %2, ptr noundef %plane.0163) #6
  %fb8 = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 2
  %11 = ptrtoint ptr %fb8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fb8, align 4
  %uses_frontend = getelementptr inbounds %struct.sun4i_layer_state, ptr %call6, i32 0, i32 2
  %13 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call6, align 4
  %backend1.i.i = getelementptr inbounds %struct.sun4i_layer, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %backend1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %backend1.i.i, align 4
  %format2.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %format2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %format2.i.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %modifier5.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 8
  %21 = ptrtoint ptr %modifier5.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %modifier5.i.i, align 8
  %frontend.i.i = getelementptr inbounds %struct.sun4i_backend, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %frontend.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %frontend.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.else.if.end.i_crit_edge, label %if.end.i.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.else
  %call7.i.i = tail call zeroext i1 @sun4i_frontend_format_is_supported(i32 noundef %20, i64 noundef %22) #6
  br i1 %call7.i.i, label %if.end9.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp.not.i.i.i = icmp eq i64 %22, 0
  br i1 %cmp.not.i.i.i, label %for.body.preheader.i.i.i, label %if.end9.i.i.if.end11.thread_crit_edge

if.end9.i.i.if.end11.thread_crit_edge:            ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.thread

for.body.preheader.i.i.i:                         ; preds = %if.end9.i.i
  %25 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %20, label %for.body.preheader.i.i.i.if.end11.thread_crit_edge [
    i32 892424769, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge
    i32 842093121, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge176
    i32 875713089, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge177
    i32 909199186, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge178
    i32 875710290, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge179
    i32 842088786, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge180
    i32 892420434, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge181
    i32 1498831189, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge182
    i32 1498765654, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge183
    i32 875713112, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge184
    i32 1448695129, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge185
    i32 1431918169, label %for.body.preheader.i.i.i.if.end12.i.i_crit_edge186
  ]

for.body.preheader.i.i.i.if.end12.i.i_crit_edge186: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge185: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge184: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge183: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge182: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge181: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge180: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge179: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge178: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge177: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge176: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end12.i.i_crit_edge:  ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i.i

for.body.preheader.i.i.i.if.end11.thread_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.thread

if.end12.i.i:                                     ; preds = %for.body.preheader.i.i.i.if.end12.i.i_crit_edge, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge176, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge177, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge178, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge179, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge180, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge181, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge182, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge183, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge184, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge185, %for.body.preheader.i.i.i.if.end12.i.i_crit_edge186
  %src_h1.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 10
  %26 = ptrtoint ptr %src_h1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_h1.i.i.i, align 4
  %shr.i.i.i = lshr i32 %27, 16
  %src_w2.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 11
  %28 = ptrtoint ptr %src_w2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_w2.i.i.i, align 4
  %shr3.i.i.i = lshr i32 %29, 16
  %crtc_w.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 6
  %30 = ptrtoint ptr %crtc_w.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_w.i.i.i, align 4
  %crtc_h.i.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 7
  %32 = ptrtoint ptr %crtc_h.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crtc_h.i.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.66, i32 noundef %shr3.i.i.i, i32 noundef %shr.i.i.i, i32 noundef %31, i32 noundef %33) #6
  %34 = ptrtoint ptr %crtc_h.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_h.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %shr.i.i.i)
  %cmp.not.i24.i.i = icmp eq i32 %35, %shr.i.i.i
  br i1 %cmp.not.i24.i.i, label %sun4i_backend_plane_uses_frontend.exit.i, label %if.end12.i.i.if.end11.thread_crit_edge

if.end12.i.i.if.end11.thread_crit_edge:           ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.thread

sun4i_backend_plane_uses_frontend.exit.i:         ; preds = %if.end12.i.i
  %36 = ptrtoint ptr %crtc_w.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crtc_w.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %shr3.i.i.i)
  %cmp12.not.i.i.not.i = icmp eq i32 %37, %shr3.i.i.i
  br i1 %cmp12.not.i.i.not.i, label %sun4i_backend_plane_uses_frontend.exit.i.if.end.i_crit_edge, label %sun4i_backend_plane_uses_frontend.exit.i.if.end11.thread_crit_edge

sun4i_backend_plane_uses_frontend.exit.i.if.end11.thread_crit_edge: ; preds = %sun4i_backend_plane_uses_frontend.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.thread

sun4i_backend_plane_uses_frontend.exit.i.if.end.i_crit_edge: ; preds = %sun4i_backend_plane_uses_frontend.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end11.thread:                                  ; preds = %sun4i_backend_plane_uses_frontend.exit.i.if.end11.thread_crit_edge, %if.end12.i.i.if.end11.thread_crit_edge, %for.body.preheader.i.i.i.if.end11.thread_crit_edge, %if.end9.i.i.if.end11.thread_crit_edge
  %38 = ptrtoint ptr %uses_frontend to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %uses_frontend, align 1
  br label %if.then14

if.end.i:                                         ; preds = %sun4i_backend_plane_uses_frontend.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %39 = ptrtoint ptr %uses_frontend to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %uses_frontend, align 1
  %src_h1.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 10
  %40 = ptrtoint ptr %src_h1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src_h1.i.i, align 4
  %shr.i.i = lshr i32 %41, 16
  %src_w2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 11
  %42 = ptrtoint ptr %src_w2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_w2.i.i, align 4
  %shr3.i.i = lshr i32 %43, 16
  %crtc_w.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 6
  %44 = ptrtoint ptr %crtc_w.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %crtc_w.i.i, align 4
  %crtc_h.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 7
  %46 = ptrtoint ptr %crtc_h.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %crtc_h.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.66, i32 noundef %shr3.i.i, i32 noundef %shr.i.i, i32 noundef %45, i32 noundef %47) #6
  %48 = ptrtoint ptr %crtc_h.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %crtc_h.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %shr.i.i)
  %cmp.not.i.i = icmp eq i32 %49, %shr.i.i
  br i1 %cmp.not.i.i, label %sun4i_backend_plane_uses_scaler.exit.i, label %if.end.i.cleanup92_crit_edge

if.end.i.cleanup92_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

sun4i_backend_plane_uses_scaler.exit.i:           ; preds = %if.end.i
  %50 = ptrtoint ptr %crtc_w.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crtc_w.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %shr3.i.i)
  %cmp12.not.i.not.i = icmp eq i32 %51, %shr3.i.i
  br i1 %cmp12.not.i.not.i, label %if.end11, label %sun4i_backend_plane_uses_scaler.exit.i.cleanup92_crit_edge

sun4i_backend_plane_uses_scaler.exit.i.cleanup92_crit_edge: ; preds = %sun4i_backend_plane_uses_scaler.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

if.end11:                                         ; preds = %sun4i_backend_plane_uses_scaler.exit.i
  %52 = ptrtoint ptr %uses_frontend to i32
  call void @__asan_load1_noabort(i32 %52)
  %.pr = load i8, ptr %uses_frontend, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool13.not = icmp eq i8 %.pr, 0
  br i1 %tobool13.not, label %if.else15, label %if.end11.if.then14_crit_edge

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %if.end11.if.then14_crit_edge, %if.end11.thread
  %53 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.58, i32 noundef %54) #6
  %inc = add i32 %num_frontend_planes.0156, 1
  br label %if.end20

if.else15:                                        ; preds = %if.end11
  %55 = ptrtoint ptr %format2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %format2.i.i, align 8
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_yuv, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool16.not = icmp eq i8 %58, 0
  br i1 %tobool16.not, label %if.else15.if.end20_crit_edge, label %if.then17

if.else15.if.end20_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.59) #6
  %inc18 = add i32 %num_yuv_planes.0159, 1
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.else15.if.end20_crit_edge, %if.then14
  %num_frontend_planes.1 = phi i32 [ %inc, %if.then14 ], [ %num_frontend_planes.0156, %if.then17 ], [ %num_frontend_planes.0156, %if.else15.if.end20_crit_edge ]
  %num_yuv_planes.1 = phi i32 [ %num_yuv_planes.0159, %if.then14 ], [ %inc18, %if.then17 ], [ %num_yuv_planes.0159, %if.else15.if.end20_crit_edge ]
  %59 = ptrtoint ptr %format2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %format2.i.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.60, ptr noundef %60) #6
  %61 = ptrtoint ptr %format2.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %format2.i.i, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %has_alpha, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool24.not = icmp eq i8 %64, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %if.end20.if.then27_crit_edge

if.end20.if.then27_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end20
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 12
  %65 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %alpha, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %66)
  %cmp25.not = icmp eq i16 %66, -1
  br i1 %cmp25.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end20.if.then27_crit_edge
  %inc28 = add i32 %num_alpha_planes.0154, 1
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %lor.lhs.false.cleanup_crit_edge
  %num_alpha_planes.1 = phi i32 [ %inc28, %if.then27 ], [ %num_alpha_planes.0154, %lor.lhs.false.cleanup_crit_edge ]
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %call6, i32 0, i32 16
  %67 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %normalized_zpos, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %68) #6
  %69 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %normalized_zpos, align 4
  %arrayidx = getelementptr [4 x ptr], ptr %plane_states, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call6, ptr %arrayidx, align 4
  %inc31 = add i32 %num_planes.0153, 1
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %for.body.for.inc_crit_edge
  %num_planes.2 = phi i32 [ %inc31, %cleanup ], [ %num_planes.0153, %for.body.for.inc_crit_edge ]
  %num_alpha_planes.3 = phi i32 [ %num_alpha_planes.1, %cleanup ], [ %num_alpha_planes.0154, %for.body.for.inc_crit_edge ]
  %num_frontend_planes.3 = phi i32 [ %num_frontend_planes.1, %cleanup ], [ %num_frontend_planes.0156, %for.body.for.inc_crit_edge ]
  %num_yuv_planes.3 = phi i32 [ %num_yuv_planes.1, %cleanup ], [ %num_yuv_planes.0159, %for.body.for.inc_crit_edge ]
  %72 = ptrtoint ptr %.pn162 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn = load ptr, ptr %.pn162, align 4
  %cmp.not = icmp eq ptr %.pn, %plane_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_planes.2)
  %tobool40.not = icmp eq i32 %num_planes.2, 0
  br i1 %tobool40.not, label %for.end.cleanup92_crit_edge, label %if.end42

for.end.cleanup92_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

if.end42:                                         ; preds = %for.end
  %quirks = getelementptr inbounds %struct.sun4i_backend, ptr %engine, i32 0, i32 10
  %73 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %quirks, align 4
  %supports_lowest_plane_alpha = getelementptr inbounds %struct.sun4i_backend_quirks, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %supports_lowest_plane_alpha to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %supports_lowest_plane_alpha, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool43.not = icmp eq i8 %76, 0
  %spec.select = select i1 %tobool43.not, i32 1, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %num_alpha_planes.3, i32 %spec.select)
  %cmp47 = icmp ugt i32 %num_alpha_planes.3, %spec.select
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.62) #6
  br label %cleanup92

if.end50:                                         ; preds = %if.end42
  br i1 %tobool43.not, label %land.lhs.true, label %if.end50.if.end60_crit_edge

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end50
  %77 = ptrtoint ptr %plane_states to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %plane_states, align 4
  %alpha55 = getelementptr inbounds %struct.drm_plane_state, ptr %78, i32 0, i32 12
  %79 = ptrtoint ptr %alpha55 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %alpha55, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %80)
  %cmp57.not = icmp eq i16 %80, -1
  br i1 %cmp57.not, label %land.lhs.true.if.end60_crit_edge, label %land.lhs.true.cleanup92_crit_edge

land.lhs.true.cleanup92_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup92

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true.if.end60_crit_edge, %if.end50.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_planes.2)
  %cmp62167 = icmp ugt i32 %num_planes.2, 1
  br i1 %cmp62167, label %if.end60.for.body64_crit_edge, label %if.end60.for.end83_crit_edge

if.end60.for.end83_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end83

if.end60.for.body64_crit_edge:                    ; preds = %if.end60
  br label %for.body64

for.body64:                                       ; preds = %if.end80.for.body64_crit_edge, %if.end60.for.body64_crit_edge
  %i.0170 = phi i32 [ %inc82, %if.end80.for.body64_crit_edge ], [ 1, %if.end60.for.body64_crit_edge ]
  %current_pipe.0168 = phi i32 [ %current_pipe.1, %if.end80.for.body64_crit_edge ], [ 0, %if.end60.for.body64_crit_edge ]
  %arrayidx65 = getelementptr [4 x ptr], ptr %plane_states, i32 0, i32 %i.0170
  %81 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx65, align 4
  %fb67 = getelementptr inbounds %struct.drm_plane_state, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %fb67 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fb67, align 4
  %format69 = getelementptr inbounds %struct.drm_framebuffer, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %format69 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %format69, align 8
  %has_alpha70 = getelementptr inbounds %struct.drm_format_info, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %has_alpha70 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %has_alpha70, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool71.not = icmp eq i8 %88, 0
  br i1 %tobool71.not, label %lor.lhs.false73, label %for.body64.if.then78_crit_edge

for.body64.if.then78_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

lor.lhs.false73:                                  ; preds = %for.body64
  %alpha74 = getelementptr inbounds %struct.drm_plane_state, ptr %82, i32 0, i32 12
  %89 = ptrtoint ptr %alpha74 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %alpha74, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %90)
  %cmp76.not = icmp eq i16 %90, -1
  br i1 %cmp76.not, label %lor.lhs.false73.if.end80_crit_edge, label %lor.lhs.false73.if.then78_crit_edge

lor.lhs.false73.if.then78_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

lor.lhs.false73.if.end80_crit_edge:               ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then78:                                        ; preds = %lor.lhs.false73.if.then78_crit_edge, %for.body64.if.then78_crit_edge
  %inc79 = add i32 %current_pipe.0168, 1
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %lor.lhs.false73.if.end80_crit_edge
  %current_pipe.1 = phi i32 [ %inc79, %if.then78 ], [ %current_pipe.0168, %lor.lhs.false73.if.end80_crit_edge ]
  %pipe = getelementptr inbounds %struct.sun4i_layer_state, ptr %82, i32 0, i32 1
  %91 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %current_pipe.1, ptr %pipe, align 4
  %inc82 = add nuw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc82, %num_planes.2
  br i1 %exitcond.not, label %if.end80.for.end83_crit_edge, label %if.end80.for.body64_crit_edge

if.end80.for.body64_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body64

if.end80.for.end83_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end83

for.end83:                                        ; preds = %if.end80.for.end83_crit_edge, %if.end60.for.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_yuv_planes.3)
  %cmp84 = icmp ugt i32 %num_yuv_planes.3, 1
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.63) #6
  br label %cleanup92

if.end87:                                         ; preds = %for.end83
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_frontend_planes.3)
  %cmp88 = icmp ugt i32 %num_frontend_planes.3, 1
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.64) #6
  br label %cleanup92

if.end91:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef %num_planes.2, i32 noundef %num_alpha_planes.3, i32 noundef %num_frontend_planes.3, i32 noundef %num_yuv_planes.3) #6
  br label %cleanup92

cleanup92:                                        ; preds = %if.end91, %if.then90, %if.then86, %land.lhs.true.cleanup92_crit_edge, %if.then49, %for.end.cleanup92_crit_edge, %sun4i_backend_plane_uses_scaler.exit.i.cleanup92_crit_edge, %if.end.i.cleanup92_crit_edge, %if.end.cleanup92_crit_edge, %entry.cleanup92_crit_edge
  %retval.3 = phi i32 [ -22, %if.then49 ], [ -22, %if.then86 ], [ -22, %if.then90 ], [ 0, %if.end91 ], [ 0, %entry.cleanup92_crit_edge ], [ 0, %for.end.cleanup92_crit_edge ], [ -22, %land.lhs.true.cleanup92_crit_edge ], [ 0, %if.end.cleanup92_crit_edge ], [ -22, %if.end.i.cleanup92_crit_edge ], [ -22, %sun4i_backend_plane_uses_scaler.exit.i.cleanup92_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %plane_states) #6
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_backend_commit(ptr nocapture noundef readonly %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.67) #6
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %engine, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2160, i32 noundef 3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sun4i_layers_init(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_backend_apply_color_correction(ptr nocapture noundef readonly %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.68) #6
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %engine, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2496, i32 noundef 1) #6
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2512, i32 noundef 263) #6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %call2.1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2516, i32 noundef 516) #6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %call2.2 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 2520, i32 noundef 100) #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call2.3 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 2524, i32 noundef 264) #6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %call2.4 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 2528, i32 noundef 16233) #6
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %call2.5 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 2532, i32 noundef 16086) #6
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %call2.6 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 2536, i32 noundef 449) #6
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %call2.7 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 2540, i32 noundef 2056) #6
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %call2.8 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 2544, i32 noundef 449) #6
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %call2.9 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 2548, i32 noundef 16008) #6
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %call2.10 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 2552, i32 noundef 16312) #6
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %call2.11 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 2556, i32 noundef 2056) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_backend_disable_color_correction(ptr nocapture noundef readonly %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.69) #6
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %engine, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 2496, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_backend_vblank_quirk(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frontend1 = getelementptr inbounds %struct.sun4i_backend, ptr %engine, i32 0, i32 1
  %0 = ptrtoint ptr %frontend1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frontend1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %frontend_lock = getelementptr inbounds %struct.sun4i_backend, ptr %engine, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %frontend_lock) #6
  %frontend_teardown = getelementptr inbounds %struct.sun4i_backend, ptr %engine, i32 0, i32 9
  %2 = ptrtoint ptr %frontend_teardown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %frontend_teardown, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sun4i_frontend_exit(ptr noundef nonnull %1) #6
  %4 = ptrtoint ptr %frontend_teardown to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %frontend_teardown, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %frontend_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sun4i_frontend_format_is_supported(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_frontend_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !162, !164, !166, !168, !170, !172}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 85, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 173, i32 2}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 176, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 184, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 191, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 278, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 295, i32 3}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 354, i32 2}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 361, i32 2}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 368, i32 2}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 375, i32 2}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 391, i32 2}
!28 = !{ptr @__initcall__kmod_sun4i_backend__318_1036_sun4i_backend_platform_driver_init6, !29, !"__initcall__kmod_sun4i_backend__318_1036_sun4i_backend_platform_driver_init6", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 1036, i32 1}
!30 = !{ptr @__exitcall_sun4i_backend_platform_driver_exit, !29, !"__exitcall_sun4i_backend_platform_driver_exit", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_author319, !32, !"__UNIQUE_ID_author319", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 1038, i32 1}
!33 = !{ptr @__UNIQUE_ID_description320, !34, !"__UNIQUE_ID_description320", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 1039, i32 1}
!35 = !{ptr @__UNIQUE_ID_file321, !36, !"__UNIQUE_ID_file321", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 1040, i32 1}
!37 = !{ptr @__UNIQUE_ID_license322, !36, !"__UNIQUE_ID_license322", i1 false, i1 false}
!38 = distinct !{null, !39, !"sun4i_backend_formats", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 139, i32 23}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 228, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 248, i32 3}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 335, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 1032, i32 12}
!48 = !{ptr @sun4i_backend_platform_driver, !49, !"sun4i_backend_platform_driver", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 1028, i32 31}
!50 = !{ptr @sun4i_backend_ops, !51, !"sun4i_backend_ops", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 957, i32 35}
!52 = !{ptr @sun4i_backend_bind.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 792, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 794, i32 37}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 815, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sun4i_backend_bind._entry, !58, !"_entry", i1 false, i1 false}
!64 = !{ptr @sun4i_backend_bind._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 823, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sun4i_backend_bind._entry.27, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @sun4i_backend_bind._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 829, i32 3}
!72 = !{ptr @sun4i_backend_bind._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @sun4i_backend_bind._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 833, i32 39}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 835, i32 3}
!78 = !{ptr @sun4i_backend_bind._entry.35, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sun4i_backend_bind._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 841, i32 39}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 843, i32 3}
!84 = !{ptr @sun4i_backend_bind._entry.39, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @sun4i_backend_bind._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 850, i32 3}
!88 = !{ptr @sun4i_backend_bind._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sun4i_backend_bind._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 856, i32 39}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 858, i32 3}
!94 = !{ptr @sun4i_backend_bind._entry.46, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @sun4i_backend_bind._entry_ptr.48, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 865, i32 9}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 868, i32 4}
!100 = !{ptr @sun4i_backend_bind._entry.50, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @sun4i_backend_bind._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @sun4i_backend_bind._key, !103, !"_key", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 873, i32 25}
!104 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 876, i32 3}
!107 = !{ptr @sun4i_backend_bind._entry.54, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @sun4i_backend_bind._entry_ptr.56, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @sun4i_backend_engine_ops, !110, !"sun4i_backend_engine_ops", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 760, i32 38}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 502, i32 2}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 519, i32 4}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 524, i32 5}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 529, i32 3}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 534, i32 3}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 585, i32 3}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 611, i32 3}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 616, i32 3}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 620, i32 2}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 416, i32 2}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 73, i32 2}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 51, i32 2}
!135 = distinct !{null, !136, !"sunxi_rgb2yuv_coef", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 41, i32 18}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 64, i32 2}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 661, i32 51}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 663, i32 3}
!143 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @sun4i_backend_init_sat._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @sun4i_backend_init_sat._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 669, i32 3}
!148 = !{ptr @sun4i_backend_init_sat._entry.73, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @sun4i_backend_init_sat._entry_ptr.75, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 675, i32 3}
!152 = !{ptr @sun4i_backend_init_sat._entry.76, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @sun4i_backend_init_sat._entry_ptr.78, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 682, i32 3}
!156 = !{ptr @sun4i_backend_init_sat._entry.79, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @sun4i_backend_init_sat._entry_ptr.81, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @sun4i_backend_regmap_config, !159, !"sun4i_backend_regmap_config", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 770, i32 35}
!160 = !{ptr @sun4i_backend_of_table, !161, !"sun4i_backend_of_table", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 995, i32 34}
!162 = !{ptr @sun4i_backend_quirks, !163, !"sun4i_backend_quirks", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 974, i32 42}
!164 = !{ptr @sun5i_backend_quirks, !165, !"sun5i_backend_quirks", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 978, i32 42}
!166 = !{ptr @sun6i_backend_quirks, !167, !"sun6i_backend_quirks", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 981, i32 42}
!168 = !{ptr @sun7i_backend_quirks, !169, !"sun7i_backend_quirks", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 984, i32 42}
!170 = !{ptr @sun8i_a33_backend_quirks, !171, !"sun8i_a33_backend_quirks", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 988, i32 42}
!172 = !{ptr @sun9i_backend_quirks, !173, !"sun9i_backend_quirks", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/sun4i/sun4i_backend.c", i32 992, i32 42}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{i8 0, i8 2}
!184 = !{!"auto-init"}
