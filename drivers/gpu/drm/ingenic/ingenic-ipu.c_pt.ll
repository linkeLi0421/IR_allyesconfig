; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ingenic/ingenic-ipu.c_pt.bc'
source_filename = "../drivers/gpu/drm/ingenic/ingenic-ipu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_private_state_funcs = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.soc_info = type { ptr, i32, i8, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ingenic_ipu = type { %struct.drm_plane, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, ptr, i32, %struct.drm_private_obj }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.ingenic_ipu_private_state = type { %struct.drm_private_state, i32, i32, i32, i32 }
%struct.drm_private_state = type { ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.87, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.87 = type { [4 x i8] }

@ingenic_ipu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ingenic_ipu_probe, ptr @ingenic_ipu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ingenic_ipu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ingenic_ipu_driver_ptr = dso_local global { ptr, [28 x i8] } { ptr @ingenic_ipu_driver, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ingenic-ipu\00", [20 x i8] zeroinitializer }, align 32
@ingenic_ipu_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-ipu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4725b_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-ipu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4760_soc_info }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ingenic_ipu_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @ingenic_ipu_bind, ptr @ingenic_ipu_unbind }, [24 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 809, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ingenic_ipu_bind\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/ingenic/ingenic-ipu.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry_ptr = internal global ptr @ingenic_ipu_bind._entry, section ".printk_index", align 4
@ingenic_ipu_bind._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 820, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get memory resource\0A\00", [33 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry_ptr.8 = internal global ptr @ingenic_ipu_bind._entry.6, section ".printk_index", align 4
@ingenic_ipu_bind._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ingenic_ipu_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 96, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ingenic_ipu:824:(&ingenic_ipu_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 826, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to create regmap\0A\00", [39 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry_ptr.12 = internal global ptr @ingenic_ipu_bind._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipu\00", [28 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 836, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get pixel clock\0A\00", [37 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry_ptr.16 = internal global ptr @ingenic_ipu_bind._entry.14, section ".printk_index", align 4
@ingenic_ipu_bind._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 843, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry_ptr.19 = internal global ptr @ingenic_ipu_bind._entry.17, section ".printk_index", align 4
@ingenic_ipu_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @ingenic_ipu_plane_atomic_check, ptr @ingenic_ipu_plane_atomic_update, ptr @ingenic_ipu_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ingenic_ipu_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr @ingenic_ipu_plane_atomic_set_property, ptr @ingenic_ipu_plane_atomic_get_property, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 856, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to init plane: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry_ptr.22 = internal global ptr @ingenic_ipu_bind._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sharpness\00", [22 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 873, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to create sharpness property\0A\00", [59 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry_ptr.26 = internal global ptr @ingenic_ipu_bind._entry.24, section ".printk_index", align 4
@ingenic_ipu_bind._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 884, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to prepare clock\0A\00", [39 x i8] zeroinitializer }, align 32
@ingenic_ipu_bind._entry_ptr.29 = internal global ptr @ingenic_ipu_bind._entry.27, section ".printk_index", align 4
@ingenic_ipu_private_state_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @ingenic_ipu_duplicate_state, ptr @ingenic_ipu_destroy_state }, [24 x i8] zeroinitializer }, align 32
@ingenic_ipu_plane_atomic_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ingenic_ipu_plane_atomic_update\00", [32 x i8] zeroinitializer }, align 32
@ingenic_ipu_plane_atomic_update._entry_ptr = internal global ptr @ingenic_ipu_plane_atomic_update._entry, section ".printk_index", align 4
@ingenic_ipu_plane_atomic_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unsupported format\00", [45 x i8] zeroinitializer }, align 32
@ingenic_ipu_plane_atomic_update.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.31, ptr @.str.3, ptr @.str.34, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ingenic_drm\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Scaling %ux%u to %ux%u (%u:%u horiz, %u:%u vert)\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jz4725b_soc_info = internal constant { %struct.soc_info, [16 x i8] } { %struct.soc_info { ptr @jz4725b_ipu_formats, i32 4, i8 0, i8 1, ptr @jz4725b_set_coefs }, [16 x i8] zeroinitializer }, align 32
@jz4760_soc_info = internal constant { %struct.soc_info, [16 x i8] } { %struct.soc_info { ptr @jz4760_ipu_formats, i32 15, i8 1, i8 0, ptr @jz4760_set_coefs }, [16 x i8] zeroinitializer }, align 32
@jz4725b_ipu_formats = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 825316697, i32 842093913, i32 909202777, i32 875713881], [16 x i8] zeroinitializer }, align 32
@jz4760_ipu_formats = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 892424792, i32 892420696, i32 909199186, i32 909199170, i32 875713112, i32 875709016, i32 1448695129, i32 1431918169, i32 1498831189, i32 1498765654, i32 825316697, i32 842093913, i32 909202777, i32 875713881, i32 1448434008], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 825316697, i64 842093913, i64 875709016, i64 875713112, i64 875713881, i64 892420696, i64 892424792, i64 909199170, i64 909199186, i64 909202777, i64 1431918169, i64 1448434008, i64 1448695129, i64 1498765654, i64 1498831189]
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"ingenic_ipu_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 987, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"ingenic_ipu_driver_ptr\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 996, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 989, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"ingenic_ipu_of_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 980, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"ingenic_ipu_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 913, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 809, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 820, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"ingenic_ipu_regmap_config\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 783, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 824, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 826, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 834, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 836, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 843, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [31 x i8] c"ingenic_ipu_plane_helper_funcs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 671, i32 44 }
@___asan_gen_.107 = private unnamed_addr constant [24 x i8] c"ingenic_ipu_plane_funcs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 716, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 856, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 870, i32 58 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 873, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 884, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [32 x i8] c"ingenic_ipu_private_state_funcs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 751, i32 45 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 347, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 462, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 560, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"jz4725b_soc_info\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 946, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"jz4760_soc_info\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 972, i32 30 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"jz4725b_ipu_formats\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 929, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"jz4760_ipu_formats\00", align 1
@___asan_gen_.162 = private constant [41 x i8] c"../drivers/gpu/drm/ingenic/ingenic-ipu.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 954, i32 18 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @ingenic_ipu_bind._entry, ptr @ingenic_ipu_bind._entry.10, ptr @ingenic_ipu_bind._entry.14, ptr @ingenic_ipu_bind._entry.17, ptr @ingenic_ipu_bind._entry.20, ptr @ingenic_ipu_bind._entry.24, ptr @ingenic_ipu_bind._entry.27, ptr @ingenic_ipu_bind._entry.6, ptr @ingenic_ipu_bind._entry_ptr, ptr @ingenic_ipu_bind._entry_ptr.12, ptr @ingenic_ipu_bind._entry_ptr.16, ptr @ingenic_ipu_bind._entry_ptr.19, ptr @ingenic_ipu_bind._entry_ptr.22, ptr @ingenic_ipu_bind._entry_ptr.26, ptr @ingenic_ipu_bind._entry_ptr.29, ptr @ingenic_ipu_bind._entry_ptr.8, ptr @ingenic_ipu_plane_atomic_update._entry, ptr @ingenic_ipu_plane_atomic_update._entry_ptr, ptr @ingenic_ipu_driver, ptr @ingenic_ipu_driver_ptr, ptr @.str, ptr @ingenic_ipu_of_match, ptr @ingenic_ipu_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ingenic_ipu_bind._key, ptr @ingenic_ipu_regmap_config, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @ingenic_ipu_plane_helper_funcs, ptr @ingenic_ipu_plane_funcs, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @ingenic_ipu_private_state_funcs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @jz4725b_soc_info, ptr @jz4760_soc_info, ptr @jz4725b_ipu_formats, ptr @jz4760_ipu_formats], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_driver_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_bind._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_bind._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_bind._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_bind._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_bind._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_bind._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_bind._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_bind._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_private_state_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_ipu_plane_atomic_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_soc_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_soc_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_ipu_formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4760_ipu_formats to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ipu_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @ingenic_ipu_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ipu_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @ingenic_ipu_ops) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ipu_bind(ptr noundef %dev, ptr noundef %master, ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 704, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.ingenic_ipu, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev5, align 4
  %drm6 = getelementptr inbounds %struct.ingenic_ipu, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %drm6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %d, ptr %drm6, align 8
  %master7 = getelementptr inbounds %struct.ingenic_ipu, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %master7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %master, ptr %master7, align 8
  %soc_info8 = getelementptr inbounds %struct.ingenic_ipu, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %soc_info8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %soc_info8, align 4
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  %4 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %call18 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call9, ptr noundef nonnull @ingenic_ipu_regmap_config, ptr noundef nonnull @ingenic_ipu_bind._key, ptr noundef nonnull @.str.9) #9
  %map = getelementptr inbounds %struct.ingenic_ipu, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %map, align 4
  %cmp.i162 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %call28 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %if.end27.cleanup_crit_edge, label %if.end30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  %clk = getelementptr inbounds %struct.ingenic_ipu, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call31, ptr %clk, align 8
  %cmp.i163 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.dev_name.exit_crit_edge

if.end40.dev_name.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end40.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end.i ], [ %14, %if.end40.dev_name.exit_crit_edge ]
  %call.i164 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call28, ptr noundef nonnull @ingenic_ipu_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool43.not = icmp eq i32 %call.i164, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end48:                                         ; preds = %dev_name.exit
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %18 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ingenic_ipu_plane_helper_funcs, ptr %helper_private.i, align 8
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call1, align 4
  %num_formats = getelementptr inbounds %struct.soc_info, ptr %call1, i32 0, i32 1
  %21 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_formats, align 4
  %call50 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %d, ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef nonnull @ingenic_ipu_plane_funcs, ptr noundef %20, i32 noundef %22, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end56, label %do.end55

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call50) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end48
  %call57 = tail call zeroext i1 @ingenic_drm_map_noncoherent(ptr noundef %master) #9
  br i1 %call57, label %if.then58, label %if.end56.if.end59_crit_edge

if.end56.if.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull %call.i) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end56.if.end59_crit_edge
  %has_bicubic = getelementptr inbounds %struct.soc_info, ptr %call1, i32 0, i32 2
  %23 = ptrtoint ptr %has_bicubic to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_bicubic, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool60.not = icmp eq i8 %24, 0
  %conv = select i1 %tobool60.not, i64 1, i64 32
  %call61 = tail call ptr @drm_property_create_range(ptr noundef %d, i32 noundef 0, ptr noundef nonnull @.str.23, i64 noundef 0, i64 noundef %conv) #9
  %sharpness_prop = getelementptr inbounds %struct.ingenic_ipu, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %sharpness_prop to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call61, ptr %sharpness_prop, align 8
  %tobool63.not = icmp eq ptr %call61, null
  br i1 %tobool63.not, label %do.end67, label %if.end68

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end68:                                         ; preds = %if.end59
  %26 = ptrtoint ptr %has_bicubic to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_bicubic, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool70.not = icmp eq i8 %27, 0
  %cond72 = select i1 %tobool70.not, i32 1, i32 8
  %sharpness = getelementptr inbounds %struct.ingenic_ipu, ptr %call.i, i32 0, i32 12
  %28 = ptrtoint ptr %sharpness to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond72, ptr %sharpness, align 4
  %base73 = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 4
  %conv76 = zext i32 %cond72 to i64
  tail call void @drm_object_attach_property(ptr noundef %base73, ptr noundef nonnull %call61, i64 noundef %conv76) #9
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 8
  %call78 = tail call i32 @clk_prepare(ptr noundef %30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end84, label %do.end83

do.end83:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end84:                                         ; preds = %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 20) #13
  %tobool86.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool86.not, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 8
  tail call void @clk_unprepare(ptr noundef %33) #9
  br label %cleanup

if.end88:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %private_obj = getelementptr inbounds %struct.ingenic_ipu, ptr %call.i, i32 0, i32 13
  tail call void @drm_atomic_private_obj_init(ptr noundef %d, ptr noundef %private_obj, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ingenic_ipu_private_state_funcs) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.then87, %do.end83, %do.end67, %do.end55, %do.end47, %do.end37, %if.end27.cleanup_crit_edge, %do.end24, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end14 ], [ %8, %do.end24 ], [ %12, %do.end37 ], [ %call.i164, %do.end47 ], [ %call50, %do.end55 ], [ %call78, %do.end83 ], [ 0, %if.end88 ], [ -12, %if.then87 ], [ -12, %do.end67 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_ipu_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_obj = getelementptr inbounds %struct.ingenic_ipu, ptr %1, i32 0, i32 13
  tail call void @drm_atomic_private_obj_fini(ptr noundef %private_obj) #9
  %clk = getelementptr inbounds %struct.ingenic_ipu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ipu_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr inbounds %struct.ingenic_ipu, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 8
  %call = tail call ptr @drm_crtc_from_index(ptr noundef %1, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #9
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dummy, align 4, !annotation !91
  %soc_info = getelementptr inbounds %struct.ingenic_ipu, ptr %arg, i32 0, i32 6
  %3 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc_info, align 4
  %manual_restart = getelementptr inbounds %struct.soc_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %manual_restart to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %manual_restart, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %map = getelementptr inbounds %struct.ingenic_ipu, ptr %arg, i32 0, i32 4
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_read(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %dummy) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %map2 = getelementptr inbounds %struct.ingenic_ipu, ptr %arg, i32 0, i32 4
  %9 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map2, align 4
  %call3 = call i32 @regmap_write(ptr noundef %10, i32 noundef 4, i32 noundef 0) #9
  %11 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map2, align 4
  %addr_y = getelementptr inbounds %struct.ingenic_ipu, ptr %arg, i32 0, i32 8
  %13 = ptrtoint ptr %addr_y to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr_y, align 4
  %call5 = call i32 @regmap_write(ptr noundef %12, i32 noundef 12, i32 noundef %14) #9
  %15 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map2, align 4
  %addr_u = getelementptr inbounds %struct.ingenic_ipu, ptr %arg, i32 0, i32 9
  %17 = ptrtoint ptr %addr_u to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr_u, align 8
  %call7 = call i32 @regmap_write(ptr noundef %16, i32 noundef 16, i32 noundef %18) #9
  %19 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map2, align 4
  %addr_v = getelementptr inbounds %struct.ingenic_ipu, ptr %arg, i32 0, i32 10
  %21 = ptrtoint ptr %addr_v to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr_v, align 4
  %call9 = call i32 @regmap_write(ptr noundef %20, i32 noundef 20, i32 noundef %22) #9
  %23 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc_info, align 4
  %manual_restart11 = getelementptr inbounds %struct.soc_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %manual_restart11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %manual_restart11, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  br i1 %tobool12.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map2, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %call17 = call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %call) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ingenic_drm_map_noncoherent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_crtc_from_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ipu_plane_atomic_check(ptr noundef %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %crtc3 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc3, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %cond.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end:                                         ; preds = %entry
  %crtc4 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %crtc4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc4, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %cond233 = phi ptr [ %11, %cond.end.if.end_crit_edge ], [ %9, %entry.if.end_crit_edge ]
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %12 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtcs.i, align 4
  %index.i.i210 = getelementptr inbounds %struct.drm_crtc, ptr %cond233, i32 0, i32 8
  %14 = ptrtoint ptr %index.i.i210 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i210, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15, i32 1
  %16 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state1.i, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %do.end, label %if.end32, !prof !92

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 584, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %private_obj.i = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 13
  %call.i = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %state, ptr noundef %private_obj.i) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %crtc38 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %crtc38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtc38, align 4
  %tobool39.not = icmp eq ptr %20, null
  %21 = ptrtoint ptr %crtc3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtc3, align 4
  %tobool43.not = icmp eq ptr %22, null
  %xor206 = xor i1 %tobool39.not, %tobool43.not
  br i1 %xor206, label %if.then47, label %if.end37.if.end48_crit_edge

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 3
  %23 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  %24 = ptrtoint ptr %crtc3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load ptr, ptr %crtc3, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end37.if.end48_crit_edge
  %25 = phi ptr [ %.pr, %if.then47 ], [ %22, %if.end37.if.end48_crit_edge ]
  %tobool50.not = icmp eq ptr %25, null
  br i1 %tobool50.not, label %if.end48.out_check_damage_crit_edge, label %lor.lhs.false

if.end48.out_check_damage_crit_edge:              ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_check_damage

lor.lhs.false:                                    ; preds = %if.end48
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool51.not = icmp eq i16 %27, 0
  br i1 %tobool51.not, label %lor.lhs.false.out_check_damage_crit_edge, label %lor.lhs.false52

lor.lhs.false.out_check_damage_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_check_damage

lor.lhs.false52:                                  ; preds = %lor.lhs.false
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 8, i32 6
  %28 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool54.not = icmp eq i16 %29, 0
  br i1 %tobool54.not, label %lor.lhs.false52.out_check_damage_crit_edge, label %if.end56

lor.lhs.false52.out_check_damage_crit_edge:       ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_check_damage

if.end56:                                         ; preds = %lor.lhs.false52
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 4
  %30 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp = icmp slt i32 %31, 0
  br i1 %cmp, label %if.end56.cleanup_crit_edge, label %lor.lhs.false57

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false57:                                  ; preds = %if.end56
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 5
  %32 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crtc_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp58 = icmp slt i32 %33, 0
  br i1 %cmp58, label %lor.lhs.false57.cleanup_crit_edge, label %lor.lhs.false59

lor.lhs.false57.cleanup_crit_edge:                ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false59:                                  ; preds = %lor.lhs.false57
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 6
  %34 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crtc_w, align 4
  %add = add i32 %35, %31
  %conv = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp63 = icmp ugt i32 %add, %conv
  br i1 %cmp63, label %lor.lhs.false59.cleanup_crit_edge, label %lor.lhs.false65

lor.lhs.false59.cleanup_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false65:                                  ; preds = %lor.lhs.false59
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 7
  %36 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crtc_h, align 4
  %add67 = add i32 %37, %33
  %conv70 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add67, i32 %conv70)
  %cmp71 = icmp ugt i32 %add67, %conv70
  br i1 %cmp71, label %lor.lhs.false65.cleanup_crit_edge, label %if.end74

lor.lhs.false65.cleanup_crit_edge:                ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end74:                                         ; preds = %lor.lhs.false65
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 11
  %38 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_w, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %39)
  %cmp75 = icmp ult i32 %39, 262144
  br i1 %cmp75, label %if.end74.cleanup_crit_edge, label %lor.lhs.false77

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false77:                                  ; preds = %if.end74
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 10
  %40 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src_h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %41)
  %cmp79 = icmp ult i32 %41, 262144
  br i1 %cmp79, label %lor.lhs.false77.cleanup_crit_edge, label %if.end82

lor.lhs.false77.cleanup_crit_edge:                ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end82:                                         ; preds = %lor.lhs.false77
  %42 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool85.not = icmp eq i32 %42, 0
  %and88 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %or.cond = select i1 %tobool85.not, i1 %tobool89.not, i1 false
  br i1 %or.cond, label %if.end91, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end91:                                         ; preds = %if.end82
  %call92 = tail call fastcc zeroext i1 @osd_changed(ptr noundef %7, ptr noundef %5)
  br i1 %call92, label %if.end94, label %if.end91.out_check_damage_crit_edge

if.end91.out_check_damage_crit_edge:              ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_check_damage

if.end94:                                         ; preds = %if.end91
  %mode_changed95 = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 3
  %43 = ptrtoint ptr %mode_changed95 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load96 = load i8, ptr %mode_changed95, align 2
  %bf.set98 = or i8 %bf.load96, 64
  store i8 %bf.set98, ptr %mode_changed95, align 2
  %44 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src_w, align 4
  %shr100 = lshr i32 %45, 16
  %46 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src_h, align 4
  %shr102 = lshr i32 %47, 16
  %mul = mul nuw nsw i32 %conv, 102
  %div = udiv i32 %mul, 100
  %mul109 = mul nuw nsw i32 %conv70, 102
  %div110 = udiv i32 %mul109, 100
  %48 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %crtc_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %div)
  %cmp112.not244 = icmp ugt i32 %49, %div
  br i1 %cmp112.not244, label %if.end94.for.end_crit_edge, label %if.end94.for.body_crit_edge

if.end94.for.body_crit_edge:                      ; preds = %if.end94
  br label %for.body

if.end94.for.end_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end94.for.body_crit_edge
  %storemerge245 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %49, %if.end94.for.body_crit_edge ]
  %call.i211 = tail call i32 @gcd(i32 noundef %storemerge245, i32 noundef %shr100) #14
  %mul.i = mul i32 %call.i211, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge245, i32 %mul.i)
  %cmp.i212 = icmp ugt i32 %storemerge245, %mul.i
  br i1 %cmp.i212, label %for.inc, label %reduce_fraction.exit.thread

reduce_fraction.exit.thread:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = udiv i32 %storemerge245, %call.i211
  %div1.i = udiv i32 %shr100, %call.i211
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %storemerge245, 1
  %exitcond = icmp eq i32 %storemerge245, %div
  br i1 %exitcond, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %reduce_fraction.exit.thread, %if.end94.for.end_crit_edge
  %num_w.1 = phi i32 [ %div.i, %reduce_fraction.exit.thread ], [ %49, %if.end94.for.end_crit_edge ]
  %denom_w.2 = phi i32 [ %div1.i, %reduce_fraction.exit.thread ], [ %shr100, %if.end94.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num_w.1, i32 %div)
  %cmp118 = icmp ugt i32 %num_w.1, %div
  br i1 %cmp118, label %for.end.cleanup_crit_edge, label %if.end121

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end121:                                        ; preds = %for.end
  %50 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %div110)
  %cmp124.not246 = icmp ugt i32 %51, %div110
  br i1 %cmp124.not246, label %if.end121.for.end133_crit_edge, label %if.end121.for.body126_crit_edge

if.end121.for.body126_crit_edge:                  ; preds = %if.end121
  br label %for.body126

if.end121.for.end133_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end133

for.body126:                                      ; preds = %for.inc131.for.body126_crit_edge, %if.end121.for.body126_crit_edge
  %storemerge207247 = phi i32 [ %inc132, %for.inc131.for.body126_crit_edge ], [ %51, %if.end121.for.body126_crit_edge ]
  %call.i213 = tail call i32 @gcd(i32 noundef %storemerge207247, i32 noundef %shr102) #14
  %mul.i214 = mul i32 %call.i213, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge207247, i32 %mul.i214)
  %cmp.i215 = icmp ugt i32 %storemerge207247, %mul.i214
  br i1 %cmp.i215, label %for.inc131, label %reduce_fraction.exit220.thread

reduce_fraction.exit220.thread:                   ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #11
  %div.i216 = udiv i32 %storemerge207247, %call.i213
  %div1.i217 = udiv i32 %shr102, %call.i213
  br label %for.end133

for.inc131:                                       ; preds = %for.body126
  %inc132 = add nuw nsw i32 %storemerge207247, 1
  %exitcond253 = icmp eq i32 %storemerge207247, %div110
  br i1 %exitcond253, label %for.inc131.cleanup_crit_edge, label %for.inc131.for.body126_crit_edge

for.inc131.for.body126_crit_edge:                 ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body126

for.inc131.cleanup_crit_edge:                     ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end133:                                       ; preds = %reduce_fraction.exit220.thread, %if.end121.for.end133_crit_edge
  %num_h.1 = phi i32 [ %div.i216, %reduce_fraction.exit220.thread ], [ %51, %if.end121.for.end133_crit_edge ]
  %denom_h.2 = phi i32 [ %div1.i217, %reduce_fraction.exit220.thread ], [ %shr102, %if.end121.for.end133_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num_h.1, i32 %div110)
  %cmp134 = icmp ugt i32 %num_h.1, %div110
  br i1 %cmp134, label %for.end133.cleanup_crit_edge, label %if.end137

for.end133.cleanup_crit_edge:                     ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end137:                                        ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #11
  %num_w138 = getelementptr inbounds %struct.ingenic_ipu_private_state, ptr %call.i, i32 0, i32 1
  %52 = ptrtoint ptr %num_w138 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %num_w.1, ptr %num_w138, align 4
  %num_h139 = getelementptr inbounds %struct.ingenic_ipu_private_state, ptr %call.i, i32 0, i32 2
  %53 = ptrtoint ptr %num_h139 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %num_h.1, ptr %num_h139, align 4
  %denom_w140 = getelementptr inbounds %struct.ingenic_ipu_private_state, ptr %call.i, i32 0, i32 3
  %54 = ptrtoint ptr %denom_w140 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %denom_w.2, ptr %denom_w140, align 4
  %denom_h141 = getelementptr inbounds %struct.ingenic_ipu_private_state, ptr %call.i, i32 0, i32 4
  %55 = ptrtoint ptr %denom_h141 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %denom_h.2, ptr %denom_h141, align 4
  br label %out_check_damage

out_check_damage:                                 ; preds = %if.end137, %if.end91.out_check_damage_crit_edge, %lor.lhs.false52.out_check_damage_crit_edge, %lor.lhs.false.out_check_damage_crit_edge, %if.end48.out_check_damage_crit_edge
  %master = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 3
  %56 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %master, align 8
  %call142 = tail call zeroext i1 @ingenic_drm_map_noncoherent(ptr noundef %57) #9
  br i1 %call142, label %if.then143, label %out_check_damage.cleanup_crit_edge

out_check_damage.cleanup_crit_edge:               ; preds = %out_check_damage
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then143:                                       ; preds = %out_check_damage
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_atomic_helper_check_plane_damage(ptr noundef %state, ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %out_check_damage.cleanup_crit_edge, %for.end133.cleanup_crit_edge, %for.inc131.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %lor.lhs.false77.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %lor.lhs.false65.cleanup_crit_edge, %lor.lhs.false59.cleanup_crit_edge, %lor.lhs.false57.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then35, %do.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %18, %if.then35 ], [ 0, %cond.end.cleanup_crit_edge ], [ -22, %lor.lhs.false65.cleanup_crit_edge ], [ -22, %lor.lhs.false59.cleanup_crit_edge ], [ -22, %lor.lhs.false57.cleanup_crit_edge ], [ -22, %if.end56.cleanup_crit_edge ], [ -22, %lor.lhs.false77.cleanup_crit_edge ], [ -22, %if.end74.cleanup_crit_edge ], [ -22, %if.end82.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.end133.cleanup_crit_edge ], [ 0, %if.then143 ], [ 0, %out_check_damage.cleanup_crit_edge ], [ -22, %for.inc131.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_ipu_plane_atomic_update(ptr noundef %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %6 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_state.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %private_obj.i = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 13
  %call.i = tail call ptr @drm_atomic_get_new_private_obj_state(ptr noundef %state, ptr noundef %private_obj.i) #9
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end, label %if.end30, !prof !92

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 339, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %10 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb, align 4
  %format32 = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %format32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format32, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call34 = tail call ptr @drm_format_info(i32 noundef %15) #9
  %clk_enabled = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 7
  %16 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %clk_enabled, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool35.not = icmp eq i8 %17, 0
  br i1 %tobool35.not, label %if.then36, label %if.end30.if.end45_crit_edge

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then36:                                        ; preds = %if.end30
  %clk = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 5
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 8
  %call37 = tail call i32 @clk_enable(ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.30, i32 noundef %call37) #12
  br label %cleanup

if.end43:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %clk_enabled, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end30.if.end45_crit_edge
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crtc, align 4
  %state46 = getelementptr inbounds %struct.drm_crtc, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state46, align 4
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %28 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %.not = icmp eq i8 %28, 0
  br i1 %.not, label %if.end45.if.end53_crit_edge, label %if.then49

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %map = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 4
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %call.i483 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 0, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %call.i484 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 0, i32 noundef 2049, i32 noundef 2049, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end45.if.end53_crit_edge
  %master = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 3
  %33 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master, align 8
  %call54 = tail call zeroext i1 @ingenic_drm_map_noncoherent(ptr noundef %34) #9
  br i1 %call54, label %if.then55, label %if.end53.if.end56_crit_edge

if.end53.if.end56_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %drm = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 1
  %35 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drm, align 8
  tail call void @drm_fb_cma_sync_non_coherent(ptr noundef %36, ptr noundef %7, ptr noundef nonnull %5) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end53.if.end56_crit_edge
  %37 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fb, align 4
  %call58 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef %38, ptr noundef nonnull %5, i32 noundef 0) #9
  %addr_y = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 8
  %39 = ptrtoint ptr %addr_y to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call58, ptr %addr_y, align 4
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call34, i32 0, i32 2
  %40 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp = icmp ugt i8 %41, 1
  br i1 %cmp, label %if.end63, label %if.end56.if.end71_crit_edge

if.end56.if.end71_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.end63:                                         ; preds = %if.end56
  %42 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fb, align 4
  %call62 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef %43, ptr noundef nonnull %5, i32 noundef 1) #9
  %addr_u = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 9
  %44 = ptrtoint ptr %addr_u to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call62, ptr %addr_u, align 8
  %45 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %45)
  %.pr = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp66 = icmp ugt i8 %.pr, 2
  br i1 %cmp66, label %if.then68, label %if.end63.if.end71_crit_edge

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fb, align 4
  %call70 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef %47, ptr noundef nonnull %5, i32 noundef 2) #9
  %addr_v = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 10
  %48 = ptrtoint ptr %addr_v to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call70, ptr %addr_v, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end63.if.end71_crit_edge, %if.end56.if.end71_crit_edge
  br i1 %.not, label %if.end71.cleanup_crit_edge, label %if.end74

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end74:                                         ; preds = %if.end71
  %map75 = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 4
  %49 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map75, align 4
  %51 = ptrtoint ptr %addr_y to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr_y, align 4
  %call77 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 12, i32 noundef %52) #9
  %53 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map75, align 4
  %addr_u79 = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 9
  %55 = ptrtoint ptr %addr_u79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr_u79, align 8
  %call80 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 16, i32 noundef %56) #9
  %57 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map75, align 4
  %addr_v82 = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 10
  %59 = ptrtoint ptr %addr_v82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr_v82, align 4
  %call83 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 20, i32 noundef %60) #9
  %61 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp86 = icmp eq i8 %62, 1
  br i1 %cmp86, label %if.then88, label %if.end74.if.end91_crit_edge

if.end74.if.end91_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then88:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map75, align 4
  %call.i485 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 0, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end74.if.end91_crit_edge
  %65 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %master, align 8
  tail call void @ingenic_drm_plane_config(ptr noundef %66, ptr noundef %plane, i32 noundef 875713112) #9
  %67 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %cmp95 = icmp ugt i8 %68, 2
  br i1 %cmp95, label %if.end100.thread, label %if.end100

if.end100.thread:                                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %69 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %src_w, align 4
  %shr = lshr i32 %70, 16
  %arrayidx = getelementptr %struct.drm_format_info, ptr %call34, i32 0, i32 3, i32 0, i32 2
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx, align 2
  %conv98 = zext i8 %72 to i32
  %mul = mul nuw nsw i32 %shr, %conv98
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %call34, i32 0, i32 6
  %73 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %hsub, align 2
  %conv99 = zext i8 %74 to i32
  %div = udiv i32 %mul, %conv99
  br label %if.then105

if.end100:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %cmp103 = icmp eq i8 %68, 2
  br i1 %cmp103, label %if.end100.if.then105_crit_edge, label %if.end100.if.end115_crit_edge

if.end100.if.end115_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.end100.if.then105_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then105

if.then105:                                       ; preds = %if.end100.if.then105_crit_edge, %if.end100.thread
  %stride.0492 = phi i32 [ %div, %if.end100.thread ], [ 0, %if.end100.if.then105_crit_edge ]
  %src_w106 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %75 = ptrtoint ptr %src_w106 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %src_w106, align 4
  %shr107 = lshr i32 %76, 16
  %arrayidx108 = getelementptr %struct.drm_format_info, ptr %call34, i32 0, i32 3, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %78 to i32
  %mul110 = mul nuw nsw i32 %shr107, %conv109
  %hsub111 = getelementptr inbounds %struct.drm_format_info, ptr %call34, i32 0, i32 6
  %79 = ptrtoint ptr %hsub111 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %hsub111, align 2
  %conv112 = zext i8 %80 to i32
  %div113 = udiv i32 %mul110, %conv112
  %shl114 = shl i32 %div113, 16
  %or = or i32 %shl114, %stride.0492
  br label %if.end115

if.end115:                                        ; preds = %if.then105, %if.end100.if.end115_crit_edge
  %stride.1 = phi i32 [ %or, %if.then105 ], [ 0, %if.end100.if.end115_crit_edge ]
  %81 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map75, align 4
  %call117 = tail call i32 @regmap_write(ptr noundef %82, i32 noundef 32, i32 noundef %stride.1) #9
  %src_w118 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %83 = ptrtoint ptr %src_w118 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %src_w118, align 4
  %shr119 = lshr i32 %84, 16
  %85 = getelementptr inbounds %struct.drm_format_info, ptr %call34, i32 0, i32 3
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 2
  %conv121 = zext i8 %87 to i32
  %mul122 = mul nuw nsw i32 %shr119, %conv121
  %88 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %map75, align 4
  %call125 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 28, i32 noundef %mul122) #9
  %90 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %map75, align 4
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %92 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %src_h, align 4
  %or130 = tail call i32 @llvm.fshl.i32(i32 %mul122, i32 %93, i32 16)
  %call131 = tail call i32 @regmap_write(ptr noundef %91, i32 noundef 24, i32 noundef %or130) #9
  %94 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %call34, align 4
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values)
  switch i32 %95, label %land.end [
    i32 892424792, label %if.end115.sw.epilog_crit_edge
    i32 892420696, label %sw.bb133
    i32 909199186, label %sw.bb134
    i32 909199170, label %sw.bb135
    i32 875713112, label %if.end115.sw.bb136_crit_edge
    i32 1448434008, label %if.end115.sw.bb136_crit_edge495
    i32 875709016, label %sw.bb137
    i32 1448695129, label %sw.bb138
    i32 1431918169, label %sw.bb139
    i32 1498831189, label %sw.bb140
    i32 1498765654, label %sw.bb141
    i32 825316697, label %sw.bb142
    i32 842093913, label %if.end115.sw.epilog_crit_edge496
    i32 909202777, label %sw.bb144
    i32 875713881, label %sw.bb145
  ]

if.end115.sw.epilog_crit_edge496:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end115.sw.bb136_crit_edge495:                  ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb136

if.end115.sw.bb136_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb136

if.end115.sw.epilog_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end115.sw.bb136_crit_edge, %if.end115.sw.bb136_crit_edge495
  br label %sw.epilog

sw.bb137:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb139:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb140:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb141:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb142:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb145:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.end:                                         ; preds = %if.end115
  %.b478 = load i1, ptr @ingenic_ipu_plane_atomic_update.__already_done, align 1
  br i1 %.b478, label %land.end.sw.epilog_crit_edge, label %if.then157, !prof !93

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then157:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ingenic_ipu_plane_atomic_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 462, i32 noundef 9, ptr noundef nonnull @.str.32) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then157, %land.end.sw.epilog_crit_edge, %sw.bb145, %sw.bb144, %sw.bb142, %sw.bb141, %sw.bb140, %sw.bb139, %sw.bb138, %sw.bb137, %sw.bb136, %sw.bb135, %sw.bb134, %sw.bb133, %if.end115.sw.epilog_crit_edge, %if.end115.sw.epilog_crit_edge496
  %format.0 = phi i32 [ 1048578, %sw.bb145 ], [ 1048577, %sw.bb144 ], [ 1048579, %sw.bb142 ], [ 1048577, %sw.bb141 ], [ 1048581, %sw.bb140 ], [ 1048585, %sw.bb139 ], [ 1048589, %sw.bb138 ], [ 22020098, %sw.bb137 ], [ 1048578, %sw.bb136 ], [ 22020099, %sw.bb135 ], [ 1048579, %sw.bb134 ], [ 22020096, %sw.bb133 ], [ 1048576, %if.end115.sw.epilog_crit_edge ], [ 1048576, %if.end115.sw.epilog_crit_edge496 ], [ 1048576, %if.then157 ], [ 1048576, %land.end.sw.epilog_crit_edge ]
  %97 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %map75, align 4
  %call194 = tail call i32 @regmap_write(ptr noundef %98, i32 noundef 8, i32 noundef %format.0) #9
  %99 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %map75, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %101 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %crtc_w, align 4
  %mul196 = shl i32 %102, 18
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %103 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %crtc_h, align 4
  %or199 = or i32 %mul196, %104
  %call200 = tail call i32 @regmap_write(ptr noundef %100, i32 noundef 40, i32 noundef %or199) #9
  %105 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %map75, align 4
  %107 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %crtc_w, align 4
  %mul203 = shl i32 %108, 2
  %call204 = tail call i32 @regmap_write(ptr noundef %106, i32 noundef 44, i32 noundef %mul203) #9
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %call34, i32 0, i32 9
  %109 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %is_yuv, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool205.not = icmp eq i8 %110, 0
  br i1 %tobool205.not, label %sw.epilog.if.end221_crit_edge, label %if.then206

sw.epilog.if.end221_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end221

if.then206:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %map75, align 4
  %call.i486 = tail call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 0, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %113 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %map75, align 4
  %call210 = tail call i32 @regmap_write(ptr noundef %114, i32 noundef 80, i32 noundef 8388608) #9
  %115 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %map75, align 4
  %call212 = tail call i32 @regmap_write(ptr noundef %116, i32 noundef 52, i32 noundef 1192) #9
  %117 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %map75, align 4
  %call214 = tail call i32 @regmap_write(ptr noundef %118, i32 noundef 56, i32 noundef 1634) #9
  %119 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %map75, align 4
  %call216 = tail call i32 @regmap_write(ptr noundef %120, i32 noundef 60, i32 noundef 401) #9
  %121 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %map75, align 4
  %call218 = tail call i32 @regmap_write(ptr noundef %122, i32 noundef 64, i32 noundef 833) #9
  %123 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %map75, align 4
  %call220 = tail call i32 @regmap_write(ptr noundef %124, i32 noundef 68, i32 noundef 2065) #9
  br label %if.end221

if.end221:                                        ; preds = %if.then206, %sw.epilog.if.end221_crit_edge
  %soc_info = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 6
  %125 = ptrtoint ptr %soc_info to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %soc_info, align 4
  %has_bicubic = getelementptr inbounds %struct.soc_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %has_bicubic to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %has_bicubic, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool222.not = icmp eq i8 %128, 0
  %spec.select = select i1 %tobool222.not, i32 0, i32 262144
  %num_w = getelementptr inbounds %struct.ingenic_ipu_private_state, ptr %call.i, i32 0, i32 1
  %129 = ptrtoint ptr %num_w to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_w, align 4
  %denom_w = getelementptr inbounds %struct.ingenic_ipu_private_state, ptr %call.i, i32 0, i32 3
  %131 = ptrtoint ptr %denom_w to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %denom_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp226 = icmp ugt i32 %130, %132
  %or231 = or i32 %spec.select, 256
  %ctrl.1 = select i1 %cmp226, i32 %or231, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp234.not = icmp eq i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp238.not = icmp eq i32 %132, 1
  %or.cond = select i1 %cmp234.not, i1 %cmp238.not, i1 false
  br i1 %or.cond, label %if.end221.if.end255_crit_edge, label %if.then240

if.end221.if.end255_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end255

if.then240:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  %tobool243.not.not = xor i1 %tobool222.not, true
  %brmerge = select i1 %tobool243.not.not, i1 true, i1 %cmp226
  %coef_index.0.in.in.in = select i1 %brmerge, ptr %num_w, ptr %denom_w
  %133 = ptrtoint ptr %coef_index.0.in.in.in to i32
  call void @__asan_load4_noabort(i32 %133)
  %coef_index.0.in.in = load i32, ptr %coef_index.0.in.in.in, align 4
  %coef_index.0.in = shl i32 %coef_index.0.in.in, 16
  %coef_index.0 = add i32 %coef_index.0.in, -65536
  %or254 = or i32 %ctrl.1, 4
  br label %if.end255

if.end255:                                        ; preds = %if.then240, %if.end221.if.end255_crit_edge
  %coef_index.1 = phi i32 [ %coef_index.0, %if.then240 ], [ 0, %if.end221.if.end255_crit_edge ]
  %ctrl.2 = phi i32 [ %or254, %if.then240 ], [ %ctrl.1, %if.end221.if.end255_crit_edge ]
  %num_h = getelementptr inbounds %struct.ingenic_ipu_private_state, ptr %call.i, i32 0, i32 2
  %134 = ptrtoint ptr %num_h to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_h, align 4
  %denom_h = getelementptr inbounds %struct.ingenic_ipu_private_state, ptr %call.i, i32 0, i32 4
  %136 = ptrtoint ptr %denom_h to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %denom_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %137)
  %cmp256 = icmp ugt i32 %135, %137
  %or261 = or i32 %ctrl.2, 512
  %spec.select479 = select i1 %cmp256, i32 %or261, i32 %ctrl.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp264.not = icmp eq i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp268.not = icmp eq i32 %137, 1
  %or.cond494 = select i1 %cmp264.not, i1 %cmp268.not, i1 false
  br i1 %or.cond494, label %if.end255.if.end286_crit_edge, label %if.then270

if.end255.if.end286_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end286

if.then270:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  %tobool273.not.not = xor i1 %tobool222.not, true
  %brmerge480 = select i1 %tobool273.not.not, i1 true, i1 %cmp256
  %sub282.pn.in.in = select i1 %brmerge480, ptr %num_h, ptr %denom_h
  %138 = ptrtoint ptr %sub282.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %138)
  %sub282.pn.in = load i32, ptr %sub282.pn.in.in, align 4
  %sub282.pn = add i32 %sub282.pn.in, -1
  %coef_index.2 = or i32 %sub282.pn, %coef_index.1
  %or285 = or i32 %spec.select479, 8
  br label %if.end286

if.end286:                                        ; preds = %if.then270, %if.end255.if.end286_crit_edge
  %coef_index.3 = phi i32 [ %coef_index.2, %if.then270 ], [ %coef_index.1, %if.end255.if.end286_crit_edge ]
  %ctrl.4 = phi i32 [ %or285, %if.then270 ], [ %spec.select479, %if.end255.if.end286_crit_edge ]
  %139 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %map75, align 4
  %call.i487 = tail call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef 0, i32 noundef 262924, i32 noundef %ctrl.4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %141 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %map75, align 4
  %call290 = tail call i32 @regmap_write(ptr noundef %142, i32 noundef 48, i32 noundef %coef_index.3) #9
  %143 = ptrtoint ptr %num_w to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_w, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cmp292.not = icmp eq i32 %144, 1
  br i1 %cmp292.not, label %lor.lhs.false294, label %if.end286.if.then298_crit_edge

if.end286.if.then298_crit_edge:                   ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then298

lor.lhs.false294:                                 ; preds = %if.end286
  %145 = ptrtoint ptr %denom_w to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %denom_w, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp296.not = icmp eq i32 %146, 1
  br i1 %cmp296.not, label %lor.lhs.false294.if.end301_crit_edge, label %lor.lhs.false294.if.then298_crit_edge

lor.lhs.false294.if.then298_crit_edge:            ; preds = %lor.lhs.false294
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then298

lor.lhs.false294.if.end301_crit_edge:             ; preds = %lor.lhs.false294
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301

if.then298:                                       ; preds = %lor.lhs.false294.if.then298_crit_edge, %if.end286.if.then298_crit_edge
  %147 = ptrtoint ptr %denom_w to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %denom_w, align 4
  tail call fastcc void @ingenic_ipu_set_coefs(ptr noundef %plane, i32 noundef 72, i32 noundef %144, i32 noundef %148)
  br label %if.end301

if.end301:                                        ; preds = %if.then298, %lor.lhs.false294.if.end301_crit_edge
  %149 = ptrtoint ptr %num_h to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %num_h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %cmp303.not = icmp eq i32 %150, 1
  br i1 %cmp303.not, label %lor.lhs.false305, label %if.end301.if.then309_crit_edge

if.end301.if.then309_crit_edge:                   ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then309

lor.lhs.false305:                                 ; preds = %if.end301
  %151 = ptrtoint ptr %denom_h to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %denom_h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp307.not = icmp eq i32 %152, 1
  br i1 %cmp307.not, label %lor.lhs.false305.if.end312_crit_edge, label %lor.lhs.false305.if.then309_crit_edge

lor.lhs.false305.if.then309_crit_edge:            ; preds = %lor.lhs.false305
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then309

lor.lhs.false305.if.end312_crit_edge:             ; preds = %lor.lhs.false305
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end312

if.then309:                                       ; preds = %lor.lhs.false305.if.then309_crit_edge, %if.end301.if.then309_crit_edge
  %153 = ptrtoint ptr %denom_h to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %denom_h, align 4
  tail call fastcc void @ingenic_ipu_set_coefs(ptr noundef %plane, i32 noundef 76, i32 noundef %150, i32 noundef %154)
  br label %if.end312

if.end312:                                        ; preds = %if.then309, %lor.lhs.false305.if.end312_crit_edge
  %155 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %map75, align 4
  %call314 = tail call i32 @regmap_write(ptr noundef %156, i32 noundef 4, i32 noundef 0) #9
  %157 = ptrtoint ptr %map75 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %map75, align 4
  %call.i488 = tail call i32 @regmap_update_bits_base(ptr noundef %158, i32 noundef 0, i32 noundef 34, i32 noundef 34, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ingenic_ipu_plane_atomic_update.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ingenic_ipu_plane_atomic_update, %if.then328)) #9
          to label %cleanup [label %if.then328], !srcloc !94

if.then328:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #11
  %dev329 = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 2
  %159 = ptrtoint ptr %dev329 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev329, align 4
  %161 = ptrtoint ptr %src_w118 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %src_w118, align 4
  %shr331 = lshr i32 %162, 16
  %163 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %src_h, align 4
  %shr333 = lshr i32 %164, 16
  %165 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %crtc_w, align 4
  %167 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %crtc_h, align 4
  %169 = ptrtoint ptr %num_w to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %num_w, align 4
  %171 = ptrtoint ptr %denom_w to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %denom_w, align 4
  %173 = ptrtoint ptr %num_h to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %num_h, align 4
  %175 = ptrtoint ptr %denom_h to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %denom_h, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ingenic_ipu_plane_atomic_update.__UNIQUE_ID_ddebug342, ptr noundef %160, ptr noundef nonnull @.str.34, i32 noundef %shr331, i32 noundef %shr333, i32 noundef %166, i32 noundef %168, i32 noundef %170, i32 noundef %172, i32 noundef %174, i32 noundef %176) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then328, %if.end312, %if.end71.cleanup_crit_edge, %do.end42, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_ipu_plane_atomic_disable(ptr noundef %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 4
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %master = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 3
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 8
  tail call void @ingenic_drm_plane_disable(ptr noundef %5, ptr noundef %plane) #9
  %clk_enabled = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 7
  %6 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clk_enabled, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %clk = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 5
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %9) #9
  %10 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %clk_enabled, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @osd_changed(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %oldstate) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 8
  %0 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_x, align 4
  %src_x1 = getelementptr inbounds %struct.drm_plane_state, ptr %oldstate, i32 0, i32 8
  %2 = ptrtoint ptr %src_x1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_x1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 9
  %4 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_y, align 4
  %src_y2 = getelementptr inbounds %struct.drm_plane_state, ptr %oldstate, i32 0, i32 9
  %6 = ptrtoint ptr %src_y2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_y2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp eq i32 %5, %7
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 11
  %8 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_w, align 4
  %src_w5 = getelementptr inbounds %struct.drm_plane_state, ptr %oldstate, i32 0, i32 11
  %10 = ptrtoint ptr %src_w5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_w5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp6.not = icmp eq i32 %9, %11
  br i1 %cmp6.not, label %lor.lhs.false7, label %lor.lhs.false4.lor.end_crit_edge

lor.lhs.false4.lor.end_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 10
  %12 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_h, align 4
  %src_h8 = getelementptr inbounds %struct.drm_plane_state, ptr %oldstate, i32 0, i32 10
  %14 = ptrtoint ptr %src_h8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_h8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9.not = icmp eq i32 %13, %15
  br i1 %cmp9.not, label %lor.lhs.false10, label %lor.lhs.false7.lor.end_crit_edge

lor.lhs.false7.lor.end_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 4
  %16 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_x, align 4
  %crtc_x11 = getelementptr inbounds %struct.drm_plane_state, ptr %oldstate, i32 0, i32 4
  %18 = ptrtoint ptr %crtc_x11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_x11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp12.not = icmp eq i32 %17, %19
  br i1 %cmp12.not, label %lor.lhs.false13, label %lor.lhs.false10.lor.end_crit_edge

lor.lhs.false10.lor.end_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 5
  %20 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_y, align 4
  %crtc_y14 = getelementptr inbounds %struct.drm_plane_state, ptr %oldstate, i32 0, i32 5
  %22 = ptrtoint ptr %crtc_y14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crtc_y14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp15.not = icmp eq i32 %21, %23
  br i1 %cmp15.not, label %lor.lhs.false16, label %lor.lhs.false13.lor.end_crit_edge

lor.lhs.false13.lor.end_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 6
  %24 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_w, align 4
  %crtc_w17 = getelementptr inbounds %struct.drm_plane_state, ptr %oldstate, i32 0, i32 6
  %26 = ptrtoint ptr %crtc_w17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_w17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp18.not = icmp eq i32 %25, %27
  br i1 %cmp18.not, label %lor.rhs, label %lor.lhs.false16.lor.end_crit_edge

lor.lhs.false16.lor.end_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 7
  %28 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_h, align 4
  %crtc_h19 = getelementptr inbounds %struct.drm_plane_state, ptr %oldstate, i32 0, i32 7
  %30 = ptrtoint ptr %crtc_h19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_h19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp20 = icmp ne i32 %29, %31
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false16.lor.end_crit_edge, %lor.lhs.false13.lor.end_crit_edge, %lor.lhs.false10.lor.end_crit_edge, %lor.lhs.false7.lor.end_crit_edge, %lor.lhs.false4.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %32 = phi i1 [ true, %lor.lhs.false16.lor.end_crit_edge ], [ true, %lor.lhs.false13.lor.end_crit_edge ], [ true, %lor.lhs.false10.lor.end_crit_edge ], [ true, %lor.lhs.false7.lor.end_crit_edge ], [ true, %lor.lhs.false4.lor.end_crit_edge ], [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %cmp20, %lor.rhs ]
  ret i1 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_check_plane_damage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_cma_sync_non_coherent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ingenic_drm_plane_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ingenic_ipu_set_coefs(ptr noundef %ipu, i32 noundef %reg, i32 noundef %num, i32 noundef %denom) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.ingenic_ipu, ptr %ipu, i32 0, i32 4
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %reg, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %denom, i32 %num)
  %cmp = icmp ugt i32 %denom, %num
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp24.not.i = icmp eq i32 %num, 0
  br i1 %cmp24.not.i, label %if.then.if.end4_crit_edge, label %for.body.lr.ph.i

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %if.then
  %mul.i = shl i32 %num, 1
  %mul5.i = shl i32 %denom, 1
  %add.i = add i32 %mul5.i, %num
  %soc_info.i = getelementptr inbounds %struct.ingenic_ipu, ptr %ipu, i32 0, i32 6
  %sharpness.i = getelementptr inbounds %struct.ingenic_ipu, ptr %ipu, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %weight_num.026.i = phi i32 [ %denom, %for.body.lr.ph.i ], [ %add6.i, %for.body.i.for.body.i_crit_edge ]
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %sub.i = sub i32 %weight_num.026.i, %num
  %rem.i = urem i32 %sub.i, %mul.i
  %mul2.i = shl i32 %rem.i, 9
  %div.i = udiv i32 %mul2.i, %mul.i
  %sub4.i = sub i32 512, %div.i
  %add6.i = add i32 %add.i, %rem.i
  %sub7.i = sub i32 %add6.i, %num
  %div9.i = udiv i32 %sub7.i, %mul.i
  %2 = ptrtoint ptr %soc_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_info.i, align 4
  %set_coefs.i = getelementptr inbounds %struct.soc_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %set_coefs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_coefs.i, align 4
  %6 = ptrtoint ptr %sharpness.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sharpness.i, align 4
  tail call void %5(ptr noundef %ipu, i32 noundef %reg, i32 noundef %7, i1 noundef zeroext true, i32 noundef %sub4.i, i32 noundef %div9.i) #9
  %inc.i = add nuw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num
  br i1 %exitcond.not.i, label %for.body.i.if.end4_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end4_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %denom)
  %cmp1 = icmp eq i32 %denom, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp6.not.i = icmp eq i32 %num, 0
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  br i1 %cmp6.not.i, label %if.then2.if.end4_crit_edge, label %for.body.lr.ph.i19

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.body.lr.ph.i19:                               ; preds = %if.then2
  %soc_info.i17 = getelementptr inbounds %struct.ingenic_ipu, ptr %ipu, i32 0, i32 6
  %sub.i18 = add i32 %num, -1
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %for.body.lr.ph.i19
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i19 ], [ %inc.i21, %for.body.i23.for.body.i23_crit_edge ]
  %8 = ptrtoint ptr %soc_info.i17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc_info.i17, align 4
  %set_coefs.i20 = getelementptr inbounds %struct.soc_info, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %set_coefs.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_coefs.i20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.07.i, i32 %sub.i18)
  %cmp1.i = icmp eq i32 %i.07.i, %sub.i18
  %conv.i = zext i1 %cmp1.i to i32
  tail call void %11(ptr noundef %ipu, i32 noundef %reg, i32 noundef 0, i1 noundef zeroext false, i32 noundef 512, i32 noundef %conv.i) #9
  %inc.i21 = add nuw i32 %i.07.i, 1
  %exitcond.not.i22 = icmp eq i32 %inc.i21, %num
  br i1 %exitcond.not.i22, label %for.body.i23.if.end4_crit_edge, label %for.body.i23.for.body.i23_crit_edge

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i23

for.body.i23.if.end4_crit_edge:                   ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.else3:                                         ; preds = %if.else
  br i1 %cmp6.not.i, label %if.else3.if.end4_crit_edge, label %for.body.lr.ph.i26

if.else3.if.end4_crit_edge:                       ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.body.lr.ph.i26:                               ; preds = %if.else3
  %soc_info.i24 = getelementptr inbounds %struct.ingenic_ipu, ptr %ipu, i32 0, i32 6
  %sharpness.i25 = getelementptr inbounds %struct.ingenic_ipu, ptr %ipu, i32 0, i32 12
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %for.body.lr.ph.i26
  %weight_num.015.i = phi i32 [ 0, %for.body.lr.ph.i26 ], [ %spec.select.i, %for.body.i36.for.body.i36_crit_edge ]
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i26 ], [ %inc.i34, %for.body.i36.for.body.i36_crit_edge ]
  %mul.i27 = shl i32 %weight_num.015.i, 9
  %div.i28 = udiv i32 %mul.i27, %num
  %sub.i29 = sub i32 512, %div.i28
  %add.i30 = add i32 %weight_num.015.i, %denom
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i30, i32 %num)
  %cmp1.i31 = icmp uge i32 %add.i30, %num
  %conv.i32 = zext i1 %cmp1.i31 to i32
  %sub2.i = select i1 %cmp1.i31, i32 %num, i32 0
  %spec.select.i = sub i32 %add.i30, %sub2.i
  %12 = ptrtoint ptr %soc_info.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc_info.i24, align 4
  %set_coefs.i33 = getelementptr inbounds %struct.soc_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %set_coefs.i33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_coefs.i33, align 4
  %16 = ptrtoint ptr %sharpness.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sharpness.i25, align 4
  tail call void %15(ptr noundef %ipu, i32 noundef %reg, i32 noundef %17, i1 noundef zeroext false, i32 noundef %sub.i29, i32 noundef %conv.i32) #9
  %inc.i34 = add nuw i32 %i.014.i, 1
  %exitcond.not.i35 = icmp eq i32 %inc.i34, %num
  br i1 %exitcond.not.i35, label %for.body.i36.if.end4_crit_edge, label %for.body.i36.for.body.i36_crit_edge

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i36

for.body.i36.if.end4_crit_edge:                   ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %for.body.i36.if.end4_crit_edge, %if.else3.if.end4_crit_edge, %for.body.i23.if.end4_crit_edge, %if.then2.if.end4_crit_edge, %for.body.i.if.end4_crit_edge, %if.then.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ingenic_drm_plane_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_ipu_plane_atomic_set_property(ptr nocapture noundef %plane, ptr nocapture noundef readonly %state, ptr noundef readnone %property, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sharpness_prop = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 11
  %0 = ptrtoint ptr %sharpness_prop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sharpness_prop, align 8
  %cmp.not = icmp eq ptr %1, %property
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %val to i32
  %sharpness = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 12
  %2 = ptrtoint ptr %sharpness to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %sharpness, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %state2 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 25
  %5 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state2, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %8, i32 %10, i32 1
  %11 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state1.i, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %do.end, label %if.end30, !prof !92

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 707, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end30:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end30 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ingenic_ipu_plane_atomic_get_property(ptr nocapture noundef readonly %plane, ptr nocapture noundef readnone %state, ptr noundef readnone %property, ptr nocapture noundef writeonly %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sharpness_prop = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 11
  %0 = ptrtoint ptr %sharpness_prop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sharpness_prop, align 8
  %cmp.not = icmp eq ptr %1, %property
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sharpness = getelementptr inbounds %struct.ingenic_ipu, ptr %plane, i32 0, i32 12
  %2 = ptrtoint ptr %sharpness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sharpness, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ingenic_ipu_duplicate_state(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %call2 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 20, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_ipu_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4725b_set_coefs(ptr nocapture noundef readonly %ipu, i32 noundef %reg, i32 noundef %sharpness, i1 noundef zeroext %downscale, i32 noundef %weight, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %weight, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sharpness)
  %cmp7 = icmp eq i32 %sharpness, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %0)
  %cmp8 = icmp ugt i32 %0, 255
  %cond9 = select i1 %cmp8, i32 512, i32 0
  %weight.addr.0 = select i1 %cmp7, i32 %cond9, i32 %0
  %and = shl nuw nsw i32 %weight.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool10.not = icmp ne i32 %offset, 0
  %1 = or i1 %tobool10.not, %downscale
  %val.0.v = select i1 %1, i32 3, i32 1
  %val.0 = or i32 %and, %val.0.v
  %map = getelementptr inbounds %struct.ingenic_ipu, ptr %ipu, i32 0, i32 4
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %reg, i32 noundef %val.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %offset)
  %cmp1633 = icmp ugt i32 %offset, 1
  %or.cond = and i1 %cmp1633, %downscale
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %reg, i32 noundef 2) #9
  %inc = add nuw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %offset
  br i1 %exitcond.not, label %for.body.if.end19_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end19:                                         ; preds = %for.body.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4760_set_coefs(ptr nocapture noundef readonly %ipu, i32 noundef %reg, i32 noundef %sharpness, i1 noundef zeroext %downscale, i32 noundef %weight, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %weight, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sharpness)
  %cmp7 = icmp ult i32 %sharpness, 2
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sharpness)
  %cmp8 = icmp eq i32 %sharpness, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %0)
  %cmp10 = icmp ugt i32 %0, 255
  %cond11 = select i1 %cmp10, i32 512, i32 0
  %weight.addr.0 = select i1 %cmp8, i32 %cond11, i32 %0
  %sub = sub nuw nsw i32 512, %weight.addr.0
  br label %if.end86

if.else:                                          ; preds = %entry
  %mul = mul i32 %sharpness, -8192
  %.neg = mul nsw i32 %0, -65536
  %mul13 = add nsw i32 %.neg, 67108864
  %div240252 = lshr exact i32 %mul13, 9
  %1 = zext i32 %div240252 to i64
  %mul.i = mul nuw nsw i64 %1, %1
  %div.i241253 = lshr i64 %mul.i, 16
  %mul5.i = mul nuw nsw i64 %div.i241253, %1
  %div6.i242254 = lshr i64 %mul5.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554944, i32 %mul13)
  %cmp.i = icmp ult i32 %mul13, 33554944
  br i1 %cmp.i, label %if.then.i, label %if.then23.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %mul, 131072
  %conv9.i = sext i32 %add.i to i64
  %mul11.i = mul nsw i64 %div6.i242254, %conv9.i
  %div12.i = sdiv i64 %mul11.i, 65536
  %conv13.i = trunc i64 %div12.i to i32
  %add14.i = add i32 %mul, 196608
  %conv15.i = sext i32 %add14.i to i64
  %mul17.i = mul nsw i64 %div.i241253, %conv15.i
  %div18.neg.i = sdiv i64 %mul17.i, -65536
  %conv19.neg.i = trunc i64 %div18.neg.i to i32
  %sub.i = add i32 %conv19.neg.i, 65536
  %add20.i = add i32 %sub.i, %conv13.i
  br label %cubic_conv.exit

if.then23.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv7.i = trunc i64 %div6.i242254 to i32
  %conv2.i = trunc i64 %div.i241253 to i32
  %conv24.i = sext i32 %mul to i64
  %mul25.neg.i = mul nsw i32 %conv2.i, -5
  %mul27.i = lshr exact i32 %mul13, 6
  %sub26.i = add nsw i32 %mul27.i, -262144
  %add28.i = add nsw i32 %sub26.i, %mul25.neg.i
  %sub29.i = add nsw i32 %add28.i, %conv7.i
  %conv30.i = sext i32 %sub29.i to i64
  %mul31.i = mul nsw i64 %conv30.i, %conv24.i
  %div32.i = sdiv i64 %mul31.i, 65536
  %conv33.i = trunc i64 %div32.i to i32
  %.pre = add i32 %mul, 131072
  %.pre266 = sext i32 %.pre to i64
  %.pre267 = add i32 %mul, 196608
  %.pre268 = sext i32 %.pre267 to i64
  br label %cubic_conv.exit

cubic_conv.exit:                                  ; preds = %if.then23.i, %if.then.i
  %conv15.i152.pre-phi = phi i64 [ %conv15.i, %if.then.i ], [ %.pre268, %if.then23.i ]
  %conv9.i147.pre-phi = phi i64 [ %conv9.i, %if.then.i ], [ %.pre266, %if.then23.i ]
  %retval.0.i = phi i32 [ %add20.i, %if.then.i ], [ %conv33.i, %if.then23.i ]
  %mul14 = shl i32 %retval.0.i, 9
  %add15 = add i32 %mul14, 32768
  %mul18 = add nsw i32 %.neg, 33554432
  %div19243255 = lshr exact i32 %mul18, 9
  %2 = zext i32 %div19243255 to i64
  %mul.i141 = mul nuw nsw i64 %2, %2
  %div.i142244256 = lshr i64 %mul.i141, 16
  %mul5.i143 = mul nuw nsw i64 %div.i142244256, %2
  %div6.i144245257 = lshr i64 %mul5.i143, 16
  %mul11.i148 = mul nsw i64 %div6.i144245257, %conv9.i147.pre-phi
  %div12.i149 = sdiv i64 %mul11.i148, 65536
  %conv13.i150 = trunc i64 %div12.i149 to i32
  %mul17.i153 = mul nsw i64 %div.i142244256, %conv15.i152.pre-phi
  %div18.neg.i154 = sdiv i64 %mul17.i153, -65536
  %conv19.neg.i155 = trunc i64 %div18.neg.i154 to i32
  %sub.i156 = add i32 %conv19.neg.i155, 65536
  %add20.i157 = add i32 %sub.i156, %conv13.i150
  %mul21 = shl i32 %add20.i157, 9
  %add22 = add i32 %mul21, 32768
  %div23 = sdiv i32 %add22, 65536
  %mul25 = shl nuw nsw i32 %0, 16
  %div26246 = shl nuw nsw i32 %0, 7
  %3 = zext i32 %div26246 to i64
  %mul.i174 = mul nuw nsw i64 %3, %3
  %div.i175247258 = lshr i64 %mul.i174, 16
  %mul5.i176 = mul nuw nsw i64 %div.i175247258, %3
  %div6.i177248259 = lshr i64 %mul5.i176, 16
  %mul11.i181 = mul nsw i64 %div6.i177248259, %conv9.i147.pre-phi
  %div12.i182 = sdiv i64 %mul11.i181, 65536
  %conv13.i183 = trunc i64 %div12.i182 to i32
  %mul17.i186 = mul nsw i64 %div.i175247258, %conv15.i152.pre-phi
  %div18.neg.i187 = sdiv i64 %mul17.i186, -65536
  %conv19.neg.i188 = trunc i64 %div18.neg.i187 to i32
  %sub.i189 = add i32 %conv19.neg.i188, 65536
  %add20.i190 = add i32 %sub.i189, %conv13.i183
  %mul28 = shl i32 %add20.i190, 9
  %add29 = add i32 %mul28, 32768
  %div30 = sdiv i32 %add29, 65536
  %mul32 = add nuw nsw i32 %mul25, 33554432
  %div33249260 = lshr exact i32 %mul32, 9
  %4 = zext i32 %div33249260 to i64
  %mul.i207 = mul nuw nsw i64 %4, %4
  %div.i208250261 = lshr i64 %mul.i207, 16
  %mul5.i209 = mul nuw nsw i64 %div.i208250261, %4
  %div6.i210251262 = lshr i64 %mul5.i209, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i211 = icmp eq i32 %0, 0
  br i1 %cmp.i211, label %if.then.i224, label %if.then23.i237

if.then.i224:                                     ; preds = %cubic_conv.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mul11.i214 = mul nsw i64 %div6.i210251262, %conv9.i147.pre-phi
  %div12.i215 = sdiv i64 %mul11.i214, 65536
  %conv13.i216 = trunc i64 %div12.i215 to i32
  %mul17.i219 = mul nsw i64 %div.i208250261, %conv15.i152.pre-phi
  %div18.neg.i220 = sdiv i64 %mul17.i219, -65536
  %conv19.neg.i221 = trunc i64 %div18.neg.i220 to i32
  %sub.i222 = add i32 %conv19.neg.i221, 65536
  %add20.i223 = add i32 %sub.i222, %conv13.i216
  br label %cubic_conv.exit239

if.then23.i237:                                   ; preds = %cubic_conv.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv7.i225 = trunc i64 %div6.i210251262 to i32
  %conv2.i226 = trunc i64 %div.i208250261 to i32
  %conv24.i227 = sext i32 %mul to i64
  %mul25.neg.i228 = mul nsw i32 %conv2.i226, -5
  %mul27.i229 = lshr exact i32 %mul32, 6
  %sub26.i230 = add nsw i32 %mul27.i229, -262144
  %add28.i231 = add nsw i32 %sub26.i230, %mul25.neg.i228
  %sub29.i232 = add nsw i32 %add28.i231, %conv7.i225
  %conv30.i233 = sext i32 %sub29.i232 to i64
  %mul31.i234 = mul nsw i64 %conv30.i233, %conv24.i227
  %div32.i235 = sdiv i64 %mul31.i234, 65536
  %conv33.i236 = trunc i64 %div32.i235 to i32
  br label %cubic_conv.exit239

cubic_conv.exit239:                               ; preds = %if.then23.i237, %if.then.i224
  %retval.0.i238 = phi i32 [ %add20.i223, %if.then.i224 ], [ %conv33.i236, %if.then23.i237 ]
  %mul35 = shl i32 %retval.0.i238, 9
  %add36 = add i32 %mul35, 32768
  %div37 = sdiv i32 %add36, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108864, i32 %add15)
  %cmp39 = icmp sgt i32 %add15, -67108864
  %div16 = sdiv i32 %add15, 65536
  %5 = tail call i32 @llvm.smin.i32(i32 %div16, i32 1023)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108864, i32 %add22)
  %cmp51 = icmp sgt i32 %add22, -67108864
  %6 = tail call i32 @llvm.smin.i32(i32 %div23, i32 1023)
  %7 = select i1 %cmp51, i32 %6, i32 -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108864, i32 %add29)
  %cmp63 = icmp sgt i32 %add29, -67108864
  %8 = tail call i32 @llvm.smin.i32(i32 %div30, i32 1023)
  %9 = select i1 %cmp63, i32 %8, i32 -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108864, i32 %add36)
  %cmp75 = icmp sgt i32 %add36, -67108864
  %10 = tail call i32 @llvm.smin.i32(i32 %div37, i32 1023)
  %.op = shl nsw i32 %5, 6
  %.op.op = and i32 %.op, 131008
  %phi.bo263 = select i1 %cmp39, i32 %.op.op, i32 65536
  %.op264 = shl i32 %10, 17
  %.op264.op = and i32 %.op264, 268304384
  %phi.bo265 = select i1 %cmp75, i32 %.op264.op, i32 134217728
  br label %if.end86

if.end86:                                         ; preds = %cubic_conv.exit239, %if.then
  %w3.0 = phi i32 [ 0, %if.then ], [ %phi.bo265, %cubic_conv.exit239 ]
  %w2.0 = phi i32 [ %sub, %if.then ], [ %9, %cubic_conv.exit239 ]
  %w1.0 = phi i32 [ %weight.addr.0, %if.then ], [ %7, %cubic_conv.exit239 ]
  %w0.0 = phi i32 [ 0, %if.then ], [ %phi.bo263, %cubic_conv.exit239 ]
  %and = shl i32 %w1.0, 17
  %shl = and i32 %and, 268304384
  %or = or i32 %shl, %w0.0
  %map = getelementptr inbounds %struct.ingenic_ipu, ptr %ipu, i32 0, i32 4
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call89 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %reg, i32 noundef %or) #9
  %and92 = shl nsw i32 %w2.0, 6
  %shl93 = and i32 %and92, 131008
  %and95 = shl i32 %offset, 1
  %shl96 = and i32 %and95, 62
  %or94 = or i32 %w3.0, %shl96
  %or97 = or i32 %or94, %shl93
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %call99 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %reg, i32 noundef %or97) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @ingenic_ipu_driver_ptr, !1, !"ingenic_ipu_driver_ptr", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 996, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 989, i32 11}
!4 = !{ptr @ingenic_ipu_driver, !5, !"ingenic_ipu_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 987, i32 31}
!6 = !{ptr @ingenic_ipu_ops, !7, !"ingenic_ipu_ops", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 913, i32 35}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 809, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ingenic_ipu_bind._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @ingenic_ipu_bind._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 820, i32 3}
!18 = !{ptr @ingenic_ipu_bind._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ingenic_ipu_bind._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @ingenic_ipu_bind._key, !21, !"_key", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 824, i32 13}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 826, i32 3}
!25 = !{ptr @ingenic_ipu_bind._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ingenic_ipu_bind._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 834, i32 31}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 836, i32 3}
!31 = !{ptr @ingenic_ipu_bind._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ingenic_ipu_bind._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 843, i32 3}
!35 = !{ptr @ingenic_ipu_bind._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ingenic_ipu_bind._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 856, i32 3}
!39 = !{ptr @ingenic_ipu_bind._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ingenic_ipu_bind._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 870, i32 58}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 873, i32 3}
!45 = !{ptr @ingenic_ipu_bind._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ingenic_ipu_bind._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 884, i32 3}
!49 = !{ptr @ingenic_ipu_bind._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ingenic_ipu_bind._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ingenic_ipu_regmap_config, !52, !"ingenic_ipu_regmap_config", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 783, i32 35}
!53 = !{ptr @ingenic_ipu_plane_helper_funcs, !54, !"ingenic_ipu_plane_helper_funcs", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 671, i32 44}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 347, i32 4}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ingenic_ipu_plane_atomic_update._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ingenic_ipu_plane_atomic_update._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 462, i32 3}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 560, i32 2}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ingenic_ipu_plane_atomic_update.__UNIQUE_ID_ddebug342, !64, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!67 = !{ptr @ingenic_ipu_plane_funcs, !68, !"ingenic_ipu_plane_funcs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 716, i32 37}
!69 = !{ptr @ingenic_ipu_private_state_funcs, !70, !"ingenic_ipu_private_state_funcs", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 751, i32 45}
!71 = !{ptr @ingenic_ipu_of_match, !72, !"ingenic_ipu_of_match", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 980, i32 34}
!73 = !{ptr @jz4725b_soc_info, !74, !"jz4725b_soc_info", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 946, i32 30}
!75 = !{ptr @jz4725b_ipu_formats, !76, !"jz4725b_ipu_formats", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 929, i32 18}
!77 = !{ptr @jz4760_soc_info, !78, !"jz4760_soc_info", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 972, i32 30}
!79 = !{ptr @jz4760_ipu_formats, !80, !"jz4760_ipu_formats", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/ingenic/ingenic-ipu.c", i32 954, i32 18}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
!91 = !{!"auto-init"}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2148758565, i64 2148758570, i64 2148758583, i64 2148758627, i64 2148758661, i64 2148758682}
