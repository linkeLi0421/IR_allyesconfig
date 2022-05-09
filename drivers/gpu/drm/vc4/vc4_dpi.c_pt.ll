; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_dpi.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_dpi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.vc4_dpi_encoder = type { %struct.vc4_encoder, ptr }
%struct.vc4_dpi = type { ptr, ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.89, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.90, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.89 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.90 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vc4_dpi\00", [24 x i8] zeroinitializer }, align 32
@vc4_dpi_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vc4_dpi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vc4_dpi_dev_probe, ptr @vc4_dpi_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_dpi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vc4_dpi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @vc4_dpi_bind, ptr @vc4_dpi_unbind }, [24 x i8] zeroinitializer }, align 32
@dpi_regs = internal constant { [2 x %struct.debugfs_reg32], [16 x i8] } { [2 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.12, i32 0 }, %struct.debugfs_reg32 { ptr @.str.13, i32 4 }], [16 x i8] zeroinitializer }, align 32
@vc4_dpi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Port returned 0x%08x for ID instead of 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vc4_dpi_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/vc4/vc4_dpi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vc4_dpi_bind._entry_ptr = internal global ptr @vc4_dpi_bind._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get core clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pixel\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get pixel clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to turn on core clock: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@vc4_dpi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr @vc4_dpi_encoder_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_dpi_encoder_disable, ptr @vc4_dpi_encoder_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpi_regs\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DPI_C\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DPI_ID\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown media bus format %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set clock rate: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 4105, i64 4106, i64 4115, i64 4117, i64 4119]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 359, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"vc4_dpi_dt_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 221, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"vc4_dpi_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 355, i32 24 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"vc4_dpi_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 339, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"dpi_regs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 113, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 278, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 283, i32 38 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 287, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 290, i32 39 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 294, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 300, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [29 x i8] c"vc4_dpi_encoder_helper_funcs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 215, i32 46 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 313, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 114, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 115, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 177, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [33 x i8] c"../drivers/gpu/drm/vc4/vc4_dpi.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 199, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @vc4_dpi_bind._entry, ptr @vc4_dpi_bind._entry_ptr, ptr @.str, ptr @vc4_dpi_dt_match, ptr @vc4_dpi_driver, ptr @vc4_dpi_ops, ptr @dpi_regs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @vc4_dpi_encoder_helper_funcs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dpi_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dpi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dpi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dpi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_dpi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dpi_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @vc4_dpi_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dpi_dev_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @vc4_dpi_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_dpi_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i126 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i126, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.vc4_encoder, ptr %call.i126, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %type, align 4
  %dpi7 = getelementptr inbounds %struct.vc4_dpi_encoder, ptr %call.i126, i32 0, i32 1
  %3 = ptrtoint ptr %dpi7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %dpi7, align 4
  %encoder = getelementptr inbounds %struct.vc4_dpi, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i126, ptr %encoder, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %call.i, align 4
  %call11 = tail call ptr @vc4_ioremap_regs(ptr noundef %add.ptr, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.vc4_dpi, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %regset = getelementptr inbounds %struct.vc4_dpi, ptr %call.i, i32 0, i32 5
  %base19 = getelementptr inbounds %struct.vc4_dpi, ptr %call.i, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %base19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %base19, align 4
  %9 = ptrtoint ptr %regset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dpi_regs, ptr %regset, align 4
  %nregs = getelementptr inbounds %struct.vc4_dpi, ptr %call.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %nregs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %nregs, align 4
  %add.ptr24 = getelementptr i8, ptr %call11, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1768973312, i32 %11)
  %cmp.not = icmp eq i32 %11, 1768973312
  br i1 %cmp.not, label %if.end36, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr32 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #6, !srcloc !49
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %15, i32 noundef 6582377) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end17
  %call37 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %core_clock = getelementptr inbounds %struct.vc4_dpi, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %core_clock to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call37, ptr %core_clock, align 4
  %cmp.i127 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then40, label %if.end46

if.then40:                                        ; preds = %if.end36
  %cmp43.not = icmp eq ptr %call37, inttoptr (i32 -517 to ptr)
  br i1 %cmp43.not, label %if.then40.cleanup_crit_edge, label %if.then44

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call37 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %17) #6
  br label %cleanup

if.end46:                                         ; preds = %if.end36
  %call47 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #6
  %pixel_clock = getelementptr inbounds %struct.vc4_dpi, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call47, ptr %pixel_clock, align 4
  %cmp.i128 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then50, label %if.end56

if.then50:                                        ; preds = %if.end46
  %cmp53.not = icmp eq ptr %call47, inttoptr (i32 -517 to ptr)
  br i1 %cmp53.not, label %if.then50.cleanup_crit_edge, label %if.then54

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call47 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %19) #6
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  %20 = ptrtoint ptr %core_clock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_clock, align 4
  %call.i129 = tail call i32 @clk_prepare(ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end56.if.then60_crit_edge

if.end56.if.then60_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

if.end.i:                                         ; preds = %if.end56
  %call1.i = tail call i32 @clk_enable(ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end61_crit_edge, label %if.then3.i

if.end.i.if.end61_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %21) #6
  br label %if.then60

if.then60:                                        ; preds = %if.then3.i, %if.end56.if.then60_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i129, %if.end56.if.then60_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %retval.0.i.ph) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end.i.if.end61_crit_edge
  %22 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %encoder, align 4
  %call63 = tail call i32 @drm_simple_encoder_init(ptr noundef %1, ptr noundef %23, i32 noundef 8) #6
  %24 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %encoder, align 4
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vc4_dpi_encoder_helper_funcs, ptr %helper_private.i, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 27
  %29 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node.i, align 8
  %call.i130 = tail call ptr @devm_drm_of_get_bridge(ptr noundef %dev1.i, ptr noundef %30, i32 noundef 0, i32 noundef 0) #6
  %cmp.i.i = icmp ugt ptr %call.i130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i132

if.then.i:                                        ; preds = %if.end61
  %31 = ptrtoint ptr %call.i130 to i32
  %cmp.i131 = icmp eq ptr %call.i130, inttoptr (i32 -19 to ptr)
  br i1 %cmp.i131, label %if.then.i.if.end68_crit_edge, label %if.then.i.vc4_dpi_init_bridge.exit_crit_edge

if.then.i.vc4_dpi_init_bridge.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vc4_dpi_init_bridge.exit

if.then.i.if.end68_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.end.i132:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %encoder, align 4
  %call6.i = tail call i32 @drm_bridge_attach(ptr noundef %33, ptr noundef %call.i130, ptr noundef null, i32 noundef 0) #6
  br label %vc4_dpi_init_bridge.exit

vc4_dpi_init_bridge.exit:                         ; preds = %if.end.i132, %if.then.i.vc4_dpi_init_bridge.exit_crit_edge
  %retval.0.i133 = phi i32 [ %call6.i, %if.end.i132 ], [ %31, %if.then.i.vc4_dpi_init_bridge.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i133)
  %tobool66.not = icmp eq i32 %retval.0.i133, 0
  br i1 %tobool66.not, label %vc4_dpi_init_bridge.exit.if.end68_crit_edge, label %err_destroy_encoder

vc4_dpi_init_bridge.exit.if.end68_crit_edge:      ; preds = %vc4_dpi_init_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.end68:                                         ; preds = %vc4_dpi_init_bridge.exit.if.end68_crit_edge, %if.then.i.if.end68_crit_edge
  %driver_data.i134 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i134 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i134, align 4
  %dpi69 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %dpi69 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %dpi69, align 8
  tail call void @vc4_debugfs_add_regset32(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %regset) #6
  br label %cleanup

err_destroy_encoder:                              ; preds = %vc4_dpi_init_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %encoder, align 4
  tail call void @drm_encoder_cleanup(ptr noundef %37) #6
  %38 = ptrtoint ptr %core_clock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %core_clock, align 4
  tail call void @clk_disable(ptr noundef %39) #6
  tail call void @clk_unprepare(ptr noundef %39) #6
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_encoder, %if.end68, %if.then54, %if.then50.cleanup_crit_edge, %if.then44, %if.then40.cleanup_crit_edge, %do.end, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then14 ], [ -19, %do.end ], [ %retval.0.i133, %err_destroy_encoder ], [ 0, %if.end68 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %17, %if.then44 ], [ -517, %if.then40.cleanup_crit_edge ], [ %19, %if.then54 ], [ -517, %if.then50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_dpi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i7, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_graph_get_remote_node(ptr noundef %5, i32 noundef 0, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.drm_of_panel_bridge_remove.exit_crit_edge, label %if.end.i

entry.drm_of_panel_bridge_remove.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_of_panel_bridge_remove.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call.i) #6
  tail call void @drm_panel_bridge_remove(ptr noundef %call1.i) #6
  br label %drm_of_panel_bridge_remove.exit

drm_of_panel_bridge_remove.exit:                  ; preds = %if.end.i, %entry.drm_of_panel_bridge_remove.exit_crit_edge
  %encoder = getelementptr inbounds %struct.vc4_dpi, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder, align 4
  tail call void @drm_encoder_cleanup(ptr noundef %7) #6
  %core_clock = getelementptr inbounds %struct.vc4_dpi, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %core_clock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_clock, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %dpi4 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %dpi4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dpi4, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vc4_dpi_encoder_mode_valid(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 7
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_dpi_encoder_disable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dpi1 = getelementptr inbounds %struct.vc4_dpi_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %dpi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpi1, align 4
  %pixel_clock = getelementptr inbounds %struct.vc4_dpi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pixel_clock, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_dpi_encoder_enable(ptr noundef readonly %encoder) #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %mode2 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 12
  %dpi3 = getelementptr inbounds %struct.vc4_dpi_encoder, ptr %encoder, i32 0, i32 1
  %4 = ptrtoint ptr %dpi3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dpi3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #6
  %6 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !52
  %7 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !52
  call void @drm_connector_list_iter_begin(ptr noundef %1, ptr noundef nonnull %conn_iter) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call4 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %while.end.thread, label %while.body

while.end.thread:                                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #6
  br label %if.end472

while.body:                                       ; preds = %while.cond
  %encoder5 = getelementptr inbounds %struct.drm_connector, ptr %call4, i32 0, i32 41
  %9 = ptrtoint ptr %encoder5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoder5, align 4
  %cmp = icmp eq ptr %10, %encoder
  br i1 %cmp, label %land.lhs.true, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

land.lhs.true:                                    ; preds = %while.body
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #6
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %call4, i32 0, i32 20, i32 7
  %11 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end472_crit_edge, label %if.then8

land.lhs.true.if.end472_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end472

if.then8:                                         ; preds = %land.lhs.true
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %call4, i32 0, i32 20, i32 6
  %13 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_formats, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %sw.default [
    i32 4106, label %if.then8.if.end472_crit_edge
    i32 4115, label %if.end175
    i32 4117, label %if.end243
    i32 4105, label %if.end311
    i32 4119, label %if.end379
  ]

if.then8.if.end472_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end472

if.end175:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end472

if.end243:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end472

if.end311:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end472

if.end379:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end472

sw.default:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %16) #6
  br label %if.end472

if.end472:                                        ; preds = %sw.default, %if.end379, %if.end311, %if.end243, %if.end175, %if.then8.if.end472_crit_edge, %land.lhs.true.if.end472_crit_edge, %while.end.thread
  %dpi_c.1 = phi i32 [ 65537, %sw.default ], [ 71681, %if.end379 ], [ 73729, %if.end311 ], [ 75777, %if.end243 ], [ 94209, %if.end175 ], [ 77825, %if.then8.if.end472_crit_edge ], [ 77825, %land.lhs.true.if.end472_crit_edge ], [ 77825, %while.end.thread ]
  %flags = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 12, i32 11
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool473.not = icmp eq i32 %and, 0
  %or475 = or i32 %dpi_c.1, 512
  %and478 = shl i32 %19, 3
  %20 = and i32 %and478, 8
  %21 = or i32 %20, %dpi_c.1
  %22 = xor i32 %21, 8
  %dpi_c.2 = select i1 %tobool473.not, i32 %22, i32 %or475
  %and485 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and485)
  %tobool486.not = icmp eq i32 %and485, 0
  %or488 = or i32 %dpi_c.2, 256
  %and491 = and i32 %19, 4
  %23 = or i32 %and491, %dpi_c.2
  %24 = xor i32 %23, 4
  %dpi_c.3 = select i1 %tobool486.not, i32 %24, i32 %or488
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  call void @arm_heavy_mb() #6
  %25 = call i32 @llvm.bswap.i32(i32 %dpi_c.3)
  %regs = getelementptr inbounds %struct.vc4_dpi, ptr %5, i32 0, i32 2
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !54
  %pixel_clock = getelementptr inbounds %struct.vc4_dpi, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pixel_clock, align 4
  %30 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode2, align 4
  %mul = mul i32 %31, 1000
  %call500 = call i32 @clk_set_rate(ptr noundef %29, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call500)
  %tobool501.not = icmp eq i32 %call500, 0
  br i1 %tobool501.not, label %if.end472.if.end503_crit_edge, label %if.then502

if.end472.if.end503_crit_edge:                    ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end503

if.then502:                                       ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %call500) #6
  br label %if.end503

if.end503:                                        ; preds = %if.then502, %if.end472.if.end503_crit_edge
  %32 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pixel_clock, align 4
  %call.i = call i32 @clk_prepare(ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end503.if.then507_crit_edge

if.end503.if.then507_crit_edge:                   ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then507

if.end.i:                                         ; preds = %if.end503
  %call1.i = call i32 @clk_enable(ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end508_crit_edge, label %if.then3.i

if.end.i.if.end508_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end508

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %33) #6
  br label %if.then507

if.then507:                                       ; preds = %if.then3.i, %if.end503.if.then507_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end503.if.then507_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #6
  br label %if.end508

if.end508:                                        ; preds = %if.then507, %if.end.i.if.end508_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_of_get_bridge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 359, i32 11}
!2 = !{ptr @vc4_dpi_driver, !3, !"vc4_dpi_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 355, i32 24}
!4 = !{ptr @vc4_dpi_ops, !5, !"vc4_dpi_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 339, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 278, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vc4_dpi_bind._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @vc4_dpi_bind._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 283, i32 38}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 287, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 290, i32 39}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 294, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 300, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 313, i32 32}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 114, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 115, i32 2}
!30 = !{ptr @dpi_regs, !31, !"dpi_regs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 113, i32 35}
!32 = !{ptr @vc4_dpi_encoder_helper_funcs, !33, !"vc4_dpi_encoder_helper_funcs", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 215, i32 46}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 177, i32 4}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 199, i32 3}
!38 = !{ptr @vc4_dpi_dt_match, !39, !"vc4_dpi_dt_match", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/vc4/vc4_dpi.c", i32 221, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 6886405}
!50 = !{i64 2157690300}
!51 = !{i64 2157692699}
!52 = !{!"auto-init"}
!53 = !{i64 2157683359}
!54 = !{i64 6885987}
