; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sprd/sprd_dpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/sprd/sprd_dpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sprd_dpu = type { %struct.drm_crtc, ptr, %struct.dpu_context }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
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
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dpu_context = type { ptr, i32, i8, %struct.videomode, i8, %struct.wait_queue_head, i8, i8 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
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
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sprd-dpu-drv\00", [19 x i8] zeroinitializer }, align 32
@dpu_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sharkl3-dpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_dpu_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_dpu_probe, ptr @sprd_dpu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dpu_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author319 = internal constant [45 x i8] c"sprd_drm.author=Leon He <leon.he@unisoc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [51 x i8] c"sprd_drm.author=Kevin Tang <kevin.tang@unisoc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description321 = internal constant [54 x i8] c"sprd_drm.description=Unisoc Display Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [44 x i8] c"sprd_drm.file=drivers/gpu/drm/sprd/sprd-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [24 x i8] c"sprd_drm.license=GPL v2\00", section ".modinfo", align 1
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/sprd/sprd_dpu.c\00", [32 x i8] zeroinitializer }, align 32
@dpu_wait_stop_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[drm] *ERROR* dpu wait for stop done time out!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dpu_wait_stop_done\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dpu_wait_stop_done._entry_ptr = internal global ptr @dpu_wait_stop_done._entry, section ".printk_index", align 4
@dpu_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sprd_dpu_bind, ptr null }, [24 x i8] zeroinitializer }, align 32
@sprd_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@layer_fmts = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 875713112, i32 875709016, i32 875713089, i32 875708993, i32 875708754, i32 875708738, i32 875714642, i32 909199186, i32 909199170, i32 842094158, i32 825382478, i32 909203022, i32 825644622, i32 842093913, i32 842094169], [36 x i8] zeroinitializer }, align 32
@sprd_planes_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[drm] *ERROR* failed to init drm plane: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sprd_planes_init\00", [47 x i8] zeroinitializer }, align 32
@sprd_planes_init._entry_ptr = internal global ptr @sprd_planes_init._entry, section ".printk_index", align 4
@sprd_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sprd_plane_atomic_check, ptr @sprd_plane_atomic_update, ptr @sprd_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sprd_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_crtc_enable_vblank, ptr @sprd_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@sprd_crtc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.1, i32 729, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[drm] *ERROR* failed to init crtc\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_crtc_init\00", [17 x i8] zeroinitializer }, align 32
@sprd_crtc_init._entry_ptr = internal global ptr @sprd_crtc_init._entry, section ".printk_index", align 4
@sprd_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_crtc_atomic_flush, ptr @sprd_crtc_atomic_enable, ptr @sprd_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@sprd_crtc_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.1, i32 740, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[drm] *ERROR* failed to found crtc output port for %s\0A\00", [41 x i8] zeroinitializer }, align 32
@sprd_crtc_init._entry_ptr.12 = internal global ptr @sprd_crtc_init._entry.10, section ".printk_index", align 4
@dpu_wait_update_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.1, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[drm] *ERROR* dpu wait for reg update done time out!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpu_wait_update_done\00", [43 x i8] zeroinitializer }, align 32
@dpu_wait_update_done._entry_ptr = internal global ptr @dpu_wait_update_done._entry, section ".printk_index", align 4
@sprd_dpu_context_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.1, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to map dpu registers\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sprd_dpu_context_init\00", [42 x i8] zeroinitializer }, align 32
@sprd_dpu_context_init._entry_ptr = internal global ptr @sprd_dpu_context_init._entry, section ".printk_index", align 4
@sprd_dpu_context_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.1, i32 801, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get dpu irq\0A\00", [41 x i8] zeroinitializer }, align 32
@sprd_dpu_context_init._entry_ptr.19 = internal global ptr @sprd_dpu_context_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DPU\00", [28 x i8] zeroinitializer }, align 32
@sprd_dpu_context_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.1, i32 812, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register dpu irq handler\0A\00", [60 x i8] zeroinitializer }, align 32
@sprd_dpu_context_init._entry_ptr.23 = internal global ptr @sprd_dpu_context_init._entry.21, section ".printk_index", align 4
@sprd_dpu_context_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ctx->wait_queue\00", [47 x i8] zeroinitializer }, align 32
@sprd_dpu_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.1, i32 760, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[drm] Warning: dpu underflow!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sprd_dpu_isr\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sprd_dpu_isr._entry_ptr = internal global ptr @sprd_dpu_isr._entry, section ".printk_index", align 4
@switch.table.sprd_plane_atomic_update = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 1048576, i32 2097152, i32 0, i32 3145728, i32 0, i32 0, i32 0, i32 4194304, i32 7340032, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6291456, i32 5242880], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 825382478, i64 842093913, i64 842094158, i64 842094169, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 875714642, i64 909199170, i64 909199186, i64 909203022]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [16 x i64] [i64 14, i64 32, i64 825382478, i64 842093913, i64 842094158, i64 842094169, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 875714642, i64 909199170, i64 909199186, i64 909203022]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 872, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"dpu_match_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 850, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"sprd_dpu_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 868, i32 24 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 138, i32 7 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 145, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"dpu_component_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 846, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"sprd_plane_funcs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 579, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"layer_fmts\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 108, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 603, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [24 x i8] c"sprd_plane_helper_funcs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 573, i32 44 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"sprd_crtc_funcs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 708, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 729, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"sprd_crtc_helper_funcs\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 701, i32 43 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 739, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 163, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 795, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 801, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 810, i32 30 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 812, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 816, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [35 x i8] c"../drivers/gpu/drm/sprd/sprd_dpu.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 760, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [38 x i8] c"switch.table.sprd_plane_atomic_update\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @dpu_wait_stop_done._entry, ptr @dpu_wait_stop_done._entry_ptr, ptr @dpu_wait_update_done._entry, ptr @dpu_wait_update_done._entry_ptr, ptr @sprd_crtc_init._entry, ptr @sprd_crtc_init._entry.10, ptr @sprd_crtc_init._entry_ptr, ptr @sprd_crtc_init._entry_ptr.12, ptr @sprd_dpu_context_init._entry, ptr @sprd_dpu_context_init._entry.17, ptr @sprd_dpu_context_init._entry.21, ptr @sprd_dpu_context_init._entry_ptr, ptr @sprd_dpu_context_init._entry_ptr.19, ptr @sprd_dpu_context_init._entry_ptr.23, ptr @sprd_dpu_isr._entry, ptr @sprd_dpu_isr._entry_ptr, ptr @sprd_planes_init._entry, ptr @sprd_planes_init._entry_ptr, ptr @.str, ptr @dpu_match_table, ptr @sprd_dpu_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dpu_component_ops, ptr @sprd_plane_funcs, ptr @layer_fmts, ptr @.str.6, ptr @.str.7, ptr @sprd_plane_helper_funcs, ptr @sprd_crtc_funcs, ptr @.str.8, ptr @.str.9, ptr @sprd_crtc_helper_funcs, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @sprd_dpu_context_init.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @switch.table.sprd_plane_atomic_update], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dpu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_wait_stop_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @layer_fmts to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_planes_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_crtc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_crtc_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_wait_update_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dpu_context_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dpu_context_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dpu_context_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dpu_context_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dpu_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sprd_plane_atomic_update to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sprd_dpu_run(ptr nocapture noundef %dpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.sprd_dpu, ptr %dpu, i32 0, i32 2
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #5, !srcloc !90
  %stopped = getelementptr inbounds %struct.sprd_dpu, ptr %dpu, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %stopped, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sprd_dpu_stop(ptr noundef %dpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %if_type = getelementptr inbounds %struct.sprd_dpu, ptr %dpu, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %if_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %if_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ctx1 = getelementptr inbounds %struct.sprd_dpu, ptr %dpu, i32 0, i32 2
  %2 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %5 = or i32 %4, 33554432
  %6 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx1, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %5) #5, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @dpu_wait_stop_done(ptr noundef %dpu)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpu_wait_stop_done(ptr noundef %dpu) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped = getelementptr inbounds %struct.sprd_dpu, ptr %dpu, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopped, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup52_crit_edge

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 139) #5
  %evt_stop = getelementptr inbounds %struct.sprd_dpu, ptr %dpu, i32 0, i32 2, i32 7
  %2 = ptrtoint ptr %evt_stop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %evt_stop, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then13, label %if.end42.thread

if.end42.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %evt_stop to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %evt_stop, align 1
  %5 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %stopped, align 4
  br label %cleanup52

if.then13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %wait_queue = getelementptr inbounds %struct.sprd_dpu, ptr %dpu, i32 0, i32 2, i32 5
  %call1615 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %7 = ptrtoint ptr %evt_stop to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %evt_stop, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool19.not16.not = icmp eq i8 %8, 0
  br i1 %tobool19.not16.not, label %if.then13.if.end35_crit_edge, label %if.end42.thread22

if.then13.if.end35_crit_edge:                     ; preds = %if.then13
  br label %if.end35

if.end42.thread22:                                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  %9 = ptrtoint ptr %evt_stop to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %evt_stop, align 1
  %10 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %stopped, align 4
  br label %cleanup52

if.end35:                                         ; preds = %cleanup.if.end35_crit_edge, %if.then13.if.end35_crit_edge
  %__ret14.119 = phi i32 [ %__ret14.1, %cleanup.if.end35_crit_edge ], [ 50, %if.then13.if.end35_crit_edge ]
  %call1618 = phi i32 [ %call16, %cleanup.if.end35_crit_edge ], [ %call1615, %if.then13.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1618)
  %tobool36.not = icmp eq i32 %call1618, 0
  br i1 %tobool36.not, label %cleanup, label %if.end42.thread10

if.end42.thread10:                                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  %11 = ptrtoint ptr %evt_stop to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %evt_stop, align 1
  %12 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %stopped, align 4
  br label %cleanup52

cleanup:                                          ; preds = %if.end35
  %call39 = call i32 @schedule_timeout(i32 noundef %__ret14.119) #5
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %13 = ptrtoint ptr %evt_stop to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %evt_stop, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool23.not = icmp eq i32 %call39, 0
  %spec.store.select54 = select i1 %tobool23.not, i32 1, i32 %call39
  %__ret14.1 = select i1 %tobool19.not, i32 %call39, i32 %spec.store.select54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool29.not = icmp eq i32 %__ret14.1, 0
  %not.tobool19.not = xor i1 %tobool19.not, true
  %15 = select i1 %not.tobool19.not, i1 true, i1 %tobool29.not
  br i1 %15, label %if.end42, label %cleanup.if.end35_crit_edge

cleanup.if.end35_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.end42:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %phi.cmp = icmp eq i32 %__ret14.1, 0
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  %16 = ptrtoint ptr %evt_stop to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %evt_stop, align 1
  %17 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %stopped, align 4
  br i1 %phi.cmp, label %do.end50, label %if.end42.cleanup52_crit_edge

if.end42.cleanup52_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %drm = getelementptr inbounds %struct.sprd_dpu, ptr %dpu, i32 0, i32 1
  %18 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drm, align 8
  %dev = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.2) #8
  br label %cleanup52

cleanup52:                                        ; preds = %do.end50, %if.end42.cleanup52_crit_edge, %if.end42.thread10, %if.end42.thread22, %if.end42.thread, %entry.cleanup52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dpu_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @dpu_component_ops) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dpu_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @dpu_component_ops) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dpu_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.022.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %primary.021.i = phi ptr [ inttoptr (i32 -1 to ptr), %entry ], [ %spec.select.i, %if.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022.i)
  %cmp1.i = icmp eq i32 %i.022.i, 0
  %cond.i = zext i1 %cmp1.i to i32
  %call.i = tail call ptr (ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @__drmm_universal_plane_alloc(ptr noundef %data, i32 noundef 528, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @sprd_plane_funcs, ptr noundef nonnull @layer_fmts, i32 noundef 15, ptr noundef null, i32 noundef %cond.i, ptr noundef null) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %i.022.i) #8
  br label %sprd_planes_init.exit

if.end.i:                                         ; preds = %for.body.i
  %helper_private.i.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %2 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sprd_plane_helper_funcs, ptr %helper_private.i.i, align 8
  %call.i.i = tail call i32 @drm_plane_create_rotation_property(ptr noundef %call.i, i32 noundef 1, i32 noundef 63) #5
  %call2.i.i = tail call i32 @drm_plane_create_alpha_property(ptr noundef %call.i) #5
  %call4.i.i = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef %call.i, i32 noundef 7) #5
  %call6.i.i = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %call.i, i32 noundef %i.022.i) #5
  %spec.select.i = select i1 %cmp1.i, ptr %call.i, ptr %primary.021.i
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %if.end.i.sprd_planes_init.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i.sprd_planes_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_planes_init.exit

sprd_planes_init.exit:                            ; preds = %if.end.i.sprd_planes_init.exit_crit_edge, %do.end.i
  %retval.0.i = phi ptr [ %call.i, %do.end.i ], [ %spec.select.i, %if.end.i.sprd_planes_init.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %sprd_planes_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %sprd_planes_init.exit
  %call.i26 = tail call ptr (ptr, i32, i32, ptr, ptr, ptr, ptr, ...) @__drmm_crtc_alloc_with_planes(ptr noundef %data, i32 noundef 1112, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef null, ptr noundef nonnull @sprd_crtc_funcs, ptr noundef null) #5
  %cmp.i.i27 = icmp ugt ptr %call.i26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i27, label %sprd_crtc_init.exit.thread48, label %if.end.i30

sprd_crtc_init.exit.thread48:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #8
  br label %if.then5

if.end.i30:                                       ; preds = %if.end
  %helper_private.i.i29 = getelementptr inbounds %struct.drm_crtc, ptr %call.i26, i32 0, i32 19
  %6 = ptrtoint ptr %helper_private.i.i29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sprd_crtc_helper_funcs, ptr %helper_private.i.i29, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call3.i = tail call ptr @of_graph_get_port_by_id(ptr noundef %8, i32 noundef 0) #5
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %sprd_crtc_init.exit.thread, label %if.end7

sprd_crtc_init.exit.thread:                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  %dev8.i = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev8.i, align 4
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %full_name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.11, ptr noundef %14) #8
  br label %if.then5

if.then5:                                         ; preds = %sprd_crtc_init.exit.thread, %sprd_crtc_init.exit.thread48
  %retval.0.i3143 = phi ptr [ inttoptr (i32 -22 to ptr), %sprd_crtc_init.exit.thread ], [ %call.i26, %sprd_crtc_init.exit.thread48 ]
  %15 = ptrtoint ptr %retval.0.i3143 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end.i30
  %port13.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i26, i32 0, i32 1
  %16 = ptrtoint ptr %port13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3.i, ptr %port13.i, align 4
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #5
  %drm8 = getelementptr inbounds %struct.sprd_dpu, ptr %call.i26, i32 0, i32 1
  %17 = ptrtoint ptr %drm8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data, ptr %drm8, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i26, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -16
  %ctx1.i = getelementptr inbounds %struct.sprd_dpu, ptr %call.i26, i32 0, i32 2
  %call.i33 = tail call ptr @platform_get_resource(ptr noundef %add.ptr.i, i32 noundef 512, i32 noundef 0) #5
  %19 = ptrtoint ptr %call.i33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i33, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i33, i32 0, i32 1
  %21 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %20
  %add.i.i = add i32 %sub.i.i, %22
  %call3.i34 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %20, i32 noundef %add.i.i) #5
  %23 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call3.i34, ptr %ctx1.i, align 4
  %tobool.not.i35 = icmp eq ptr %call3.i34, null
  br i1 %tobool.not.i35, label %do.end.i36, label %if.end.i38

do.end.i36:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end.i38:                                       ; preds = %if.end7
  %call5.i = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i, i32 noundef 0) #5
  %irq.i = getelementptr inbounds %struct.sprd_dpu, ptr %call.i26, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call5.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i37 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i37, label %do.end10.i, label %do.body13.i

do.end10.i:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 4
  br label %cleanup

do.body13.i:                                      ; preds = %if.end.i38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx1.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %28, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 0) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx1.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %30, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 -16777216) #5, !srcloc !90
  %31 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq.i, align 4
  %call.i.i39 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %32, ptr noundef nonnull @sprd_dpu_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %call.i26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool25.not.i = icmp eq i32 %call.i.i39, 0
  br i1 %tobool25.not.i, label %do.body31.i, label %do.end29.i

do.end29.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  br label %cleanup

do.body31.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %wait_queue.i = getelementptr inbounds %struct.sprd_dpu, ptr %call.i26, i32 0, i32 2, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @sprd_dpu_context_init.__key) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body31.i, %do.end29.i, %do.end10.i, %do.end.i36, %if.then5, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %15, %if.then5 ], [ %26, %do.end10.i ], [ %call.i.i39, %do.end29.i ], [ 0, %do.body31.i ], [ -14, %do.end.i36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_universal_plane_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %format1.i = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %format1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format1.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end.cleanup_crit_edge [
    i32 875708738, label %if.end.if.end6_crit_edge
    i32 875714642, label %if.end.if.end6_crit_edge26
    i32 875708754, label %if.end.if.end6_crit_edge27
    i32 875708993, label %if.end.if.end6_crit_edge28
    i32 875713089, label %if.end.if.end6_crit_edge29
    i32 875709016, label %if.end.if.end6_crit_edge30
    i32 875713112, label %if.end.if.end6_crit_edge31
    i32 909199170, label %if.end.if.end6_crit_edge32
    i32 909199186, label %if.end.if.end6_crit_edge33
    i32 842094158, label %if.end.if.end6_crit_edge34
    i32 825382478, label %if.end.if.end6_crit_edge35
    i32 909203022, label %if.end.if.end6_crit_edge36
    i32 842094169, label %if.end.if.end6_crit_edge37
    i32 842093913, label %if.end.if.end6_crit_edge38
  ]

if.end.if.end6_crit_edge38:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge37:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge36:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge35:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge34:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge33:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge32:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge31:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge30:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge29:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge28:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge27:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge26:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.if.end6_crit_edge26, %if.end.if.end6_crit_edge27, %if.end.if.end6_crit_edge28, %if.end.if.end6_crit_edge29, %if.end.if.end6_crit_edge30, %if.end.if.end6_crit_edge31, %if.end.if.end6_crit_edge32, %if.end.if.end6_crit_edge33, %if.end.if.end6_crit_edge34, %if.end.if.end6_crit_edge35, %if.end.if.end6_crit_edge36, %if.end.if.end6_crit_edge37, %if.end.if.end6_crit_edge38
  %state7 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 25
  %15 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state7, align 4
  %call9 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %16, ptr noundef nonnull %9) #5
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %call9, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then11 ], [ %call14, %if.end13 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_plane_atomic_update(ptr nocapture noundef readonly %drm_plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %ctx1.i = getelementptr inbounds %struct.sprd_dpu, ptr %7, i32 0, i32 2
  %fb2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb2.i, align 4
  %src_x3.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %src_x3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_x3.i, align 4
  %src_y4.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %src_y4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_y4.i, align 4
  %src_w6.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %src_w6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_w6.i, align 4
  %src_h8.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %16 = ptrtoint ptr %src_h8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_h8.i, align 4
  %crtc_x.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %crtc_x.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_x.i, align 4
  %crtc_y.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %crtc_y.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_y.i, align 4
  %alpha10.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 12
  %22 = ptrtoint ptr %alpha10.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %alpha10.i, align 4
  %zpos.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 15
  %24 = ptrtoint ptr %zpos.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %zpos.i, align 4
  %format14.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %26 = ptrtoint ptr %format14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %format14.i, align 8
  %num_planes129.i = getelementptr inbounds %struct.drm_format_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %num_planes129.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_planes129.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp131.not.i = icmp eq i8 %29, 0
  %.pre5 = mul i32 %25, 48
  br i1 %cmp131.not.i, label %entry.if.else42.i_crit_edge, label %for.body.lr.ph.i

entry.if.else42.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else42.i

for.body.lr.ph.i:                                 ; preds = %entry
  %add.i102.i = add i32 %.pre5, 52
  %add.i.i = add i32 %.pre5, 48
  %add.i105.i = add i32 %.pre5, 56
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0132.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %9, i32 noundef %i.0132.i) #5
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %paddr.i, align 8
  %arrayidx.i = getelementptr %struct.drm_framebuffer, ptr %9, i32 0, i32 7, i32 %i.0132.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %33, %31
  %34 = zext i32 %i.0132.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %i.0132.i, label %if.else22.i [
    i32 0, label %if.then.i
    i32 1, label %if.then21.i
  ]

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %add.i) #5
  %36 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %35) #5, !srcloc !90
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %38 = tail call i32 @llvm.bswap.i32(i32 %add.i) #5
  %39 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %40, i32 %add.i102.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 %38) #5, !srcloc !90
  br label %for.inc.i

if.else22.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i) #5
  %42 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %43, i32 %add.i105.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %41) #5, !srcloc !90
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else22.i, %if.then21.i, %if.then.i
  %inc.i = add nuw nsw i32 %i.0132.i, 1
  %44 = ptrtoint ptr %format14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %format14.i, align 8
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_planes.i, align 1
  %conv15.i = zext i8 %47 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv15.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %47)
  %phi.cmp.i = icmp eq i8 %47, 3
  br i1 %phi.cmp.i, label %if.then29.i, label %for.end.i.if.else42.i_crit_edge

for.end.i.if.else42.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else42.i

if.then29.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 6
  %48 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pitches.i, align 8
  %50 = getelementptr inbounds %struct.drm_format_info, ptr %45, i32 0, i32 3
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 2
  %conv33.i = zext i8 %52 to i32
  %div.i = udiv i32 %49, %conv33.i
  %shl40.i = shl i32 %div.i, 15
  %or41.i = or i32 %shl40.i, %div.i
  br label %if.end49.i

if.else42.i:                                      ; preds = %for.end.i.if.else42.i_crit_edge, %entry.if.else42.i_crit_edge
  %.lcssa128138.i = phi ptr [ %45, %for.end.i.if.else42.i_crit_edge ], [ %27, %entry.if.else42.i_crit_edge ]
  %pitches43.i = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 6
  %53 = ptrtoint ptr %pitches43.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pitches43.i, align 8
  %55 = getelementptr inbounds %struct.drm_format_info, ptr %.lcssa128138.i, i32 0, i32 3
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 2
  %conv47.i = zext i8 %57 to i32
  %div48.i = udiv i32 %54, %conv47.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else42.i, %if.then29.i
  %pitch.0.i = phi i32 [ %div48.i, %if.else42.i ], [ %or41.i, %if.then29.i ]
  %shr7.i = lshr i32 %15, 16
  %shr9.i = and i32 %17, -65536
  %or13.i = or i32 %shr9.i, %shr7.i
  %and.i = and i32 %19, 65535
  %shl.i = shl i32 %21, 16
  %or.i = or i32 %shl.i, %and.i
  %conv.i = zext i16 %23 to i32
  %shr5.i = and i32 %13, -65536
  %shr.i = lshr i32 %11, 16
  %add.i108.i = add i32 %.pre5, 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %59 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %60, i32 %add.i108.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %58) #5, !srcloc !90
  %add.i111.i = add i32 %.pre5, 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %61 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #5
  %62 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %63, i32 %add.i111.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112.i, i32 %61) #5, !srcloc !90
  %or51.i = or i32 %shr5.i, %shr.i
  %add.i114.i = add i32 %.pre5, 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %64 = tail call i32 @llvm.bswap.i32(i32 %or51.i) #5
  %65 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %66, i32 %add.i114.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %64) #5, !srcloc !90
  %add.i117.i = add i32 %.pre5, 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %67 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #5
  %68 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i118.i = getelementptr i8, ptr %69, i32 %add.i117.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 %67) #5, !srcloc !90
  %add.i120.i = add i32 %.pre5, 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %70 = tail call i32 @llvm.bswap.i32(i32 %pitch.0.i) #5
  %71 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %72, i32 %add.i120.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 %70) #5, !srcloc !90
  %73 = ptrtoint ptr %format14.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %format14.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %76, label %if.end49.i.drm_format_to_dpu.exit.i_crit_edge [
    i32 875708738, label %sw.bb.i.i
    i32 875714642, label %if.end49.i.sw.bb4.i.i_crit_edge
    i32 875708754, label %if.end49.i.sw.bb4.i.i_crit_edge10
    i32 875708993, label %if.end49.i.sw.bb6.i.i_crit_edge
    i32 875713089, label %if.end49.i.sw.bb8.i.i_crit_edge
    i32 875709016, label %sw.bb10.i.i
    i32 875713112, label %if.end49.i.sw.bb12.i.i_crit_edge
    i32 909199170, label %sw.bb14.i.i
    i32 909199186, label %if.end49.i.sw.bb16.i.i_crit_edge
    i32 842094158, label %sw.bb18.i.i
    i32 825382478, label %sw.bb22.i.i
    i32 909203022, label %sw.bb26.i.i
    i32 842094169, label %sw.bb38.i.i
    i32 842093913, label %sw.bb34.i.i
  ]

if.end49.i.sw.bb16.i.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16.i.i

if.end49.i.sw.bb12.i.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i.i

if.end49.i.sw.bb8.i.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i.i

if.end49.i.sw.bb6.i.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i.i

if.end49.i.sw.bb4.i.i_crit_edge10:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i.i

if.end49.i.sw.bb4.i.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i.i

if.end49.i.drm_format_to_dpu.exit.i_crit_edge:    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_format_to_dpu.exit.i

sw.bb.i.i:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_format_to_dpu.exit.i

sw.bb4.i.i:                                       ; preds = %if.end49.i.sw.bb4.i.i_crit_edge, %if.end49.i.sw.bb4.i.i_crit_edge10
  br label %sw.bb6.i.i

sw.bb6.i.i:                                       ; preds = %sw.bb4.i.i, %if.end49.i.sw.bb6.i.i_crit_edge
  %format.0.i.i = phi i32 [ 1072, %if.end49.i.sw.bb6.i.i_crit_edge ], [ 1328, %sw.bb4.i.i ]
  br label %sw.bb8.i.i

sw.bb8.i.i:                                       ; preds = %sw.bb6.i.i, %if.end49.i.sw.bb8.i.i_crit_edge
  %format.1.i.i = phi i32 [ 48, %if.end49.i.sw.bb8.i.i_crit_edge ], [ %format.0.i.i, %sw.bb6.i.i ]
  br label %drm_format_to_dpu.exit.i

sw.bb10.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i.i

sw.bb12.i.i:                                      ; preds = %sw.bb10.i.i, %if.end49.i.sw.bb12.i.i_crit_edge
  %format.2.i.i = phi i32 [ 48, %if.end49.i.sw.bb12.i.i_crit_edge ], [ 1072, %sw.bb10.i.i ]
  br label %drm_format_to_dpu.exit.i

sw.bb14.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16.i.i

sw.bb16.i.i:                                      ; preds = %sw.bb14.i.i, %if.end49.i.sw.bb16.i.i_crit_edge
  %format.3.i.i = phi i32 [ 64, %if.end49.i.sw.bb16.i.i_crit_edge ], [ 1088, %sw.bb14.i.i ]
  br label %drm_format_to_dpu.exit.i

sw.bb18.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_format_to_dpu.exit.i

sw.bb22.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_format_to_dpu.exit.i

sw.bb26.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_format_to_dpu.exit.i

sw.bb34.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_format_to_dpu.exit.i

sw.bb38.i.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_format_to_dpu.exit.i

drm_format_to_dpu.exit.i:                         ; preds = %sw.bb38.i.i, %sw.bb34.i.i, %sw.bb26.i.i, %sw.bb22.i.i, %sw.bb18.i.i, %sw.bb16.i.i, %sw.bb12.i.i, %sw.bb8.i.i, %sw.bb.i.i, %if.end49.i.drm_format_to_dpu.exit.i_crit_edge
  %format.4.i.i = phi i32 [ 1056, %sw.bb38.i.i ], [ 32, %sw.bb34.i.i ], [ 1280, %sw.bb26.i.i ], [ 1040, %sw.bb22.i.i ], [ 16, %sw.bb18.i.i ], [ %format.3.i.i, %sw.bb16.i.i ], [ %format.2.i.i, %sw.bb12.i.i ], [ %format.1.i.i, %sw.bb8.i.i ], [ 304, %sw.bb.i.i ], [ 0, %if.end49.i.drm_format_to_dpu.exit.i_crit_edge ]
  %pixel_blend_mode.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 13
  %78 = ptrtoint ptr %pixel_blend_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %pixel_blend_mode.i.i, align 2
  %rotation1.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %80 = ptrtoint ptr %rotation1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rotation1.i.i, align 4
  %82 = add i32 %81, -2
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %83)
  %84 = icmp ult i32 %83, 17
  br i1 %84, label %switch.lookup, label %drm_format_to_dpu.exit.i.sprd_dpu_layer.exit_crit_edge

drm_format_to_dpu.exit.i.sprd_dpu_layer.exit_crit_edge: ; preds = %drm_format_to_dpu.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_dpu_layer.exit

switch.lookup:                                    ; preds = %drm_format_to_dpu.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.sprd_plane_atomic_update, i32 0, i32 %83
  %85 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %85)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sprd_dpu_layer.exit

sprd_dpu_layer.exit:                              ; preds = %switch.lookup, %drm_format_to_dpu.exit.i.sprd_dpu_layer.exit_crit_edge
  %rotation.0.i.i = phi i32 [ 0, %drm_format_to_dpu.exit.i.sprd_dpu_layer.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %79)
  %switch.selectcmp12.i.i = icmp eq i16 %79, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %switch.selectcmp.i.i = icmp eq i16 %79, 0
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 65544, i32 4
  %switch.select13.i.i = select i1 %switch.selectcmp12.i.i, i32 8, i32 %switch.select.i.i
  %or55.i = or i32 %format.4.i.i, %switch.select13.i.i
  %or56.i = or i32 %or55.i, %rotation.0.i.i
  %or57.i = or i32 %or56.i, 1
  %add.i126.i = add i32 %.pre5, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %86 = tail call i32 @llvm.bswap.i32(i32 %or57.i) #5
  %87 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %88, i32 %add.i126.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %86) #5, !srcloc !90
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_plane_atomic_disable(ptr nocapture noundef readonly %drm_plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %ctx = getelementptr inbounds %struct.sprd_dpu, ptr %7, i32 0, i32 2
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %zpos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zpos, align 4
  %mul.i = mul i32 %9, 48
  %add.i = add i32 %mul.i, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_crtc_alloc_with_planes(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_crtc_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 480
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %3 = or i32 %2, 536870912
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #5, !srcloc !90
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 480
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %3 = and i32 %2, -536870913
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #5, !srcloc !90
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_crtc_mode_set_nofb(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %vm = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 3
  tail call void @drm_display_mode_to_videomode(ptr noundef %adjusted_mode, ptr noundef %vm) #5
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %4 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn33 = load ptr, ptr %encoder_list, align 4
  %cmp.not34 = icmp eq ptr %.pn33, %encoder_list
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %encoder_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 6
  %if_type = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn35 = phi ptr [ %.pn33, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %encoder_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoder_mask, align 4
  %index.i.i = getelementptr i8, ptr %.pn35, i32 36
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %10
  %and = and i32 %shl.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %slave = getelementptr i8, ptr %.pn35, i32 -8
  %11 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode_flags, align 8
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = ptrtoint ptr %if_type to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %if_type, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn35, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ctx1.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2
  %vactive.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 3, i32 5
  %20 = ptrtoint ptr %vactive.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vactive.i, align 4
  %shl.i32 = shl i32 %21, 16
  %hactive.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 3, i32 1
  %22 = ptrtoint ptr %hactive.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hactive.i, align 4
  %or.i = or i32 %shl.i32, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %25 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx1.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %24) #5, !srcloc !90
  %if_type.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.i = icmp eq i8 %30, 0
  br i1 %cmp.i, label %if.then.i, label %for.end.sprd_dpi_init.exit_crit_edge

for.end.sprd_dpi_init.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_dpi_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %hsync_len.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 3, i32 4
  %31 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hsync_len.i, align 4
  %hback_porch.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 3, i32 3
  %33 = ptrtoint ptr %hback_porch.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hback_porch.i, align 4
  %shl12.i = shl i32 %34, 8
  %or13.i = or i32 %shl12.i, %32
  %hfront_porch.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 3, i32 2
  %35 = ptrtoint ptr %hfront_porch.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hfront_porch.i, align 4
  %shl15.i = shl i32 %36, 20
  %or16.i = or i32 %or13.i, %shl15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #5
  %38 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx1.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %39, i32 500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %37) #5, !srcloc !90
  %vsync_len.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 3, i32 8
  %40 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vsync_len.i, align 4
  %vback_porch.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 3, i32 7
  %42 = ptrtoint ptr %vback_porch.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vback_porch.i, align 4
  %shl25.i = shl i32 %43, 8
  %or26.i = or i32 %shl25.i, %41
  %vfront_porch.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 3, i32 6
  %44 = ptrtoint ptr %vfront_porch.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vfront_porch.i, align 4
  %shl28.i = shl i32 %45, 20
  %or29.i = or i32 %or26.i, %shl28.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %46 = tail call i32 @llvm.bswap.i32(i32 %or29.i) #5
  %47 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx1.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %48, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %46) #5, !srcloc !90
  br label %sprd_dpi_init.exit

sprd_dpi_init.exit:                               ; preds = %if.then.i, %for.end.sprd_dpi_init.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %ctx1.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2
  %if_type.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dpu_wait_stop_done(ptr noundef %crtc) #5
  %4 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %.pr.i = load i8, ptr %if_type.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %5 = phi i8 [ %.pr.i, %if.then.i ], [ %3, %entry.if.end.i_crit_edge ]
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %5, label %if.end.i.sprd_dpu_flip.exit_crit_edge [
    i8 0, label %if.then7.i
    i8 1, label %if.then15.i
  ]

if.end.i.sprd_dpu_flip.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_dpu_flip.exit

if.then7.i:                                       ; preds = %if.end.i
  %stopped.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stopped.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then8.i, label %if.then7.i.if.end10.i_crit_edge

if.then7.i.if.end10.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then7.i
  %9 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %12 = or i32 %11, 67108864
  %13 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx1.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %12) #5, !srcloc !90
  %evt_update.i.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %evt_update.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %evt_update.i.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 160) #5
  %16 = ptrtoint ptr %evt_update.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %evt_update.i.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.then8.i.if.end10.i_crit_edge

if.then8.i.if.end10.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then11.i.i:                                    ; preds = %if.then8.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #5
  %18 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #5
  %wait_queue.i.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 5
  %call1415.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait_queue.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #5
  %19 = ptrtoint ptr %evt_update.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %evt_update.i.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not16.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool17.not16.not.i.i, label %if.then11.i.i.if.end33.i.i_crit_edge, label %if.end40.thread.i.i

if.then11.i.i.if.end33.i.i_crit_edge:             ; preds = %if.then11.i.i
  br label %if.end33.i.i

if.end40.thread.i.i:                              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %wait_queue.i.i, ptr noundef nonnull %__wq_entry.i.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #5
  br label %if.end10.i

if.end33.i.i:                                     ; preds = %cleanup.i.i.if.end33.i.i_crit_edge, %if.then11.i.i.if.end33.i.i_crit_edge
  %__ret12.119.i.i = phi i32 [ %__ret12.1.i.i, %cleanup.i.i.if.end33.i.i_crit_edge ], [ 50, %if.then11.i.i.if.end33.i.i_crit_edge ]
  %call1418.i.i = phi i32 [ %call14.i.i, %cleanup.i.i.if.end33.i.i_crit_edge ], [ %call1415.i.i, %if.then11.i.i.if.end33.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1418.i.i)
  %tobool34.not.i.i = icmp eq i32 %call1418.i.i, 0
  br i1 %tobool34.not.i.i, label %cleanup.i.i, label %if.end40.thread10.i.i

if.end40.thread10.i.i:                            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #5
  br label %if.end10.i

cleanup.i.i:                                      ; preds = %if.end33.i.i
  %call37.i.i = call i32 @schedule_timeout(i32 noundef %__ret12.119.i.i) #5
  %call14.i.i = call i32 @prepare_to_wait_event(ptr noundef %wait_queue.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #5
  %21 = ptrtoint ptr %evt_update.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %evt_update.i.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not.i.i = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %tobool21.not.i.i = icmp eq i32 %call37.i.i, 0
  %spec.store.select50.i.i = select i1 %tobool21.not.i.i, i32 1, i32 %call37.i.i
  %__ret12.1.i.i = select i1 %tobool17.not.i.i, i32 %call37.i.i, i32 %spec.store.select50.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1.i.i)
  %tobool27.not.i.i = icmp eq i32 %__ret12.1.i.i, 0
  %not.tobool17.not.i.i = xor i1 %tobool17.not.i.i, true
  %23 = select i1 %not.tobool17.not.i.i, i1 true, i1 %tobool27.not.i.i
  br i1 %23, label %if.end40.i.i, label %cleanup.i.i.if.end33.i.i_crit_edge

cleanup.i.i.if.end33.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i.i

if.end40.i.i:                                     ; preds = %cleanup.i.i
  call void @finish_wait(ptr noundef %wait_queue.i.i, ptr noundef nonnull %__wq_entry.i.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #5
  br i1 %tobool27.not.i.i, label %do.end46.i.i, label %if.end40.i.i.if.end10.i_crit_edge

if.end40.i.i.if.end10.i_crit_edge:                ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

do.end46.i.i:                                     ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %drm.i.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 1
  %24 = ptrtoint ptr %drm.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drm.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.13) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end46.i.i, %if.end40.i.i.if.end10.i_crit_edge, %if.end40.thread10.i.i, %if.end40.thread.i.i, %if.then8.i.if.end10.i_crit_edge, %if.then7.i.if.end10.i_crit_edge
  %28 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %29, i32 480
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #5, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  call void @arm_heavy_mb() #5
  %31 = or i32 %30, 67108864
  %32 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx1.i, align 4
  %add.ptr2.i30.i = getelementptr i8, ptr %33, i32 480
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i30.i, i32 %31) #5, !srcloc !90
  br label %sprd_dpu_flip.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %37 = or i32 %36, 16777216
  %38 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx1.i, align 4
  %add.ptr2.i33.i = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i33.i, i32 %37) #5, !srcloc !90
  %stopped16.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 4
  %40 = ptrtoint ptr %stopped16.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %stopped16.i, align 4
  br label %sprd_dpu_flip.exit

sprd_dpu_flip.exit:                               ; preds = %if.then15.i, %if.end10.i, %if.end.i.sprd_dpu_flip.exit_crit_edge
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %41 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state1, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %42, i32 0, i32 18
  %43 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %44, null
  br i1 %tobool.not, label %sprd_dpu_flip.exit.if.end_crit_edge, label %if.then

sprd_dpu_flip.exit.if.end_crit_edge:              ; preds = %sprd_dpu_flip.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sprd_dpu_flip.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %44) #5
  %45 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state1, align 4
  %event5 = getelementptr inbounds %struct.drm_crtc_state, ptr %46, i32 0, i32 18
  %47 = ptrtoint ptr %event5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %event5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sprd_dpu_flip.exit.if.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx1.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %3, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %5, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 0) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx1.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %7, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 -65536) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx1.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %9, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 0) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx1.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %11, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 -65536) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx1.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %13, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 -65280) #5, !srcloc !90
  %if_type.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %if_type.i, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %15, label %entry.sprd_dpu_init.exit_crit_edge [
    i8 0, label %if.then.i
    i8 1, label %if.then41.i
  ]

entry.sprd_dpu_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_dpu_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %20 = and i32 %19, -16777217
  %21 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx1.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %20) #5, !srcloc !90
  %23 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %24, i32 496
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %26 = and i32 %25, -257
  %27 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx1.i, align 4
  %add.ptr2.i74.i = getelementptr i8, ptr %28, i32 496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i74.i, i32 %26) #5, !srcloc !90
  %29 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %30, i32 496
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %32 = or i32 %31, 262144
  %33 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx1.i, align 4
  %add.ptr2.i76.i = getelementptr i8, ptr %34, i32 496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i76.i, i32 %32) #5, !srcloc !90
  br label %sprd_dpu_init.exit

if.then41.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %38 = or i32 %37, 16777216
  %39 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx1.i, align 4
  %add.ptr2.i79.i = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i79.i, i32 %38) #5, !srcloc !90
  %41 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %42, i32 496
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %44 = or i32 %43, 262144
  %45 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx1.i, align 4
  %add.ptr2.i82.i = getelementptr i8, ptr %46, i32 496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i82.i, i32 %44) #5, !srcloc !90
  %47 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %48, i32 496
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83.i) #5, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %50 = or i32 %49, 65536
  %51 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctx1.i, align 4
  %add.ptr2.i85.i = getelementptr i8, ptr %52, i32 496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i85.i, i32 %50) #5, !srcloc !90
  br label %sprd_dpu_init.exit

sprd_dpu_init.exit:                               ; preds = %if.then41.i, %if.then.i, %entry.sprd_dpu_init.exit_crit_edge
  %int_mask.0.i = phi i32 [ 922746880, %if.then.i ], [ 50331648, %if.then41.i ], [ 0, %entry.sprd_dpu_init.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctx1.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %54, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %int_mask.0.i) #5, !srcloc !90
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #5
  %ctx1.i = getelementptr inbounds %struct.sprd_dpu, ptr %crtc, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx1.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %5, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -16777216) #5, !srcloc !90
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %6 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state2, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %9) #5
  %10 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state2, align 4
  %event6 = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %event6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %event6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dpu_isr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.sprd_dpu, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 488
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !88
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %drm = getelementptr inbounds %struct.sprd_dpu, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm, align 8
  %dev = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.25) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %int_mask.0 = phi i32 [ -5, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %and3 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %evt_update = getelementptr inbounds %struct.sprd_dpu, ptr %data, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %evt_update to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %evt_update, align 4
  %wait_queue = getelementptr inbounds %struct.sprd_dpu, ptr %data, i32 0, i32 2, i32 5
  tail call void @__wake_up(ptr noundef %wait_queue, i32 noundef 1, i32 noundef 0, ptr noundef null) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %and7 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %evt_stop = getelementptr inbounds %struct.sprd_dpu, ptr %data, i32 0, i32 2, i32 7
  %9 = ptrtoint ptr %evt_stop to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %evt_stop, align 1
  %wait_queue10 = getelementptr inbounds %struct.sprd_dpu, ptr %data, i32 0, i32 2, i32 5
  tail call void @__wake_up(ptr noundef %wait_queue10, i32 noundef 1, i32 noundef 0, ptr noundef null) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %and12 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.do.body18_crit_edge, label %if.then14

if.end11.do.body18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %data) #5
  br label %do.body18

do.body18:                                        ; preds = %if.then14, %if.end11.do.body18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx1, align 4
  %add.ptr22 = getelementptr i8, ptr %11, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %2) #5, !srcloc !90
  %12 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx1, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 480
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !88
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %and.i = and i32 %15, %int_mask.0
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %17 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx1, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %16) #5, !srcloc !90
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !73, !74, !75, !76, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 872, i32 11}
!2 = !{ptr @sprd_dpu_driver, !3, !"sprd_dpu_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 868, i32 24}
!4 = !{ptr @__UNIQUE_ID_author319, !5, !"__UNIQUE_ID_author319", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 877, i32 1}
!6 = !{ptr @__UNIQUE_ID_author320, !7, !"__UNIQUE_ID_author320", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 878, i32 1}
!8 = !{ptr @__UNIQUE_ID_description321, !9, !"__UNIQUE_ID_description321", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 879, i32 1}
!10 = !{ptr @__UNIQUE_ID_file322, !11, !"__UNIQUE_ID_file322", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 880, i32 1}
!12 = !{ptr @__UNIQUE_ID_license323, !11, !"__UNIQUE_ID_license323", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 138, i32 7}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 145, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dpu_wait_stop_done._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @dpu_wait_stop_done._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @dpu_component_ops, !23, !"dpu_component_ops", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 846, i32 35}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 603, i32 4}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sprd_planes_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @sprd_planes_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @sprd_plane_funcs, !30, !"sprd_plane_funcs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 579, i32 37}
!31 = !{ptr @layer_fmts, !32, !"layer_fmts", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 108, i32 18}
!33 = !{ptr @sprd_plane_helper_funcs, !34, !"sprd_plane_helper_funcs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 573, i32 44}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 729, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sprd_crtc_init._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @sprd_crtc_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 739, i32 3}
!42 = !{ptr @sprd_crtc_init._entry.10, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sprd_crtc_init._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @sprd_crtc_funcs, !45, !"sprd_crtc_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 708, i32 36}
!46 = !{ptr @sprd_crtc_helper_funcs, !47, !"sprd_crtc_helper_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 701, i32 43}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 163, i32 3}
!50 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dpu_wait_update_done._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @dpu_wait_update_done._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 795, i32 3}
!55 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sprd_dpu_context_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @sprd_dpu_context_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 801, i32 3}
!60 = !{ptr @sprd_dpu_context_init._entry.17, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sprd_dpu_context_init._entry_ptr.19, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 810, i32 30}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 812, i32 3}
!66 = !{ptr @sprd_dpu_context_init._entry.21, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @sprd_dpu_context_init._entry_ptr.23, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @sprd_dpu_context_init.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 816, i32 2}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 760, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sprd_dpu_isr._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @sprd_dpu_isr._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @dpu_match_table, !78, !"dpu_match_table", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/sprd/sprd_dpu.c", i32 850, i32 34}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 3031065}
!89 = !{i64 2156909822}
!90 = !{i64 3030647}
!91 = !{i8 0, i8 2}
!92 = !{i64 2157099560}
!93 = !{i64 2157099959}
!94 = !{i64 2156912058}
!95 = !{i64 2156910755}
!96 = !{i64 2157075910}
!97 = !{i64 2157076306}
!98 = !{i64 2157076707}
!99 = !{i64 2157077118}
!100 = !{i64 2157070773}
!101 = !{i64 2157071171}
!102 = !{i64 2157071570}
!103 = !{i64 2157071971}
!104 = !{i64 2157072376}
!105 = !{i64 2157072777}
!106 = !{i64 2157073185}
!107 = !{i64 2157074703}
!108 = !{i64 2157075114}
!109 = !{i64 2157075513}
!110 = !{i64 2157091947}
!111 = !{i64 2157094652}
