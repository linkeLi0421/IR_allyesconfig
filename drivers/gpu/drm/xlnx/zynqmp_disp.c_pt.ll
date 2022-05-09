; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/xlnx/zynqmp_disp.c_pt.bc'
source_filename = "../drivers/gpu/drm/xlnx/zynqmp_disp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.zynqmp_disp_layer_info = type { ptr, i32, i32 }
%struct.zynqmp_disp_format = type { i32, i32, i32, i8, ptr }
%struct.zynqmp_disp = type { ptr, ptr, ptr, %struct.drm_crtc, %struct.anon.87, %struct.anon.88, %struct.anon.89, [2 x %struct.zynqmp_disp_layer], ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.anon.87 = type { ptr }
%struct.anon.88 = type { ptr }
%struct.anon.89 = type { ptr, ptr, i8 }
%struct.zynqmp_disp_layer = type { %struct.drm_plane, i32, ptr, ptr, [3 x %struct.zynqmp_disp_layer_dma], ptr, ptr, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.zynqmp_disp_layer_dma = type { ptr, %struct.dma_interleaved_template, %struct.data_chunk }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.zynqmp_dpsub = type { %struct.drm_device, ptr, ptr, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.xilinx_dpdma_peripheral_config = type { i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_pending_vblank_event = type { %struct.drm_pending_event, i32, i64, %union.anon.84 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%union.anon.84 = type { %struct.drm_event_vblank }
%struct.drm_event_vblank = type { %struct.drm_event, i64, i32, i32, i32, i32 }
%struct.drm_event = type { i32, i32 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blend\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"av_buf\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aud\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dp_live_video_in_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dp_vtc_pixel_clk_in\00", [44 x i8] zeroinitializer }, align 32
@zynqmp_disp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1674, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to init any video clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zynqmp_disp_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/xlnx/zynqmp_disp.c\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zynqmp_disp_probe._entry_ptr = internal global ptr @zynqmp_disp_probe._entry, section ".printk_index", align 4
@zynqmp_disp_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@zynqmp_disp_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @zynqmp_disp_plane_atomic_check, ptr @zynqmp_disp_plane_atomic_update, ptr @zynqmp_disp_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@csc_zero_matrix = internal constant { [9 x i16], [46 x i8] } zeroinitializer, align 32
@csc_zero_offsets = internal constant { [3 x i32], [20 x i8] } zeroinitializer, align 32
@zynqmp_disp_layer_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.7, i32 1120, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to prepare DMA descriptor\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zynqmp_disp_layer_update\00", [39 x i8] zeroinitializer }, align 32
@zynqmp_disp_layer_update._entry_ptr = internal global ptr @zynqmp_disp_layer_update._entry, section ".printk_index", align 4
@csc_sdtv_to_rgb_matrix = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 4096, i16 5743, i16 0, i16 4096, i16 29827, i16 31359, i16 4096, i16 0, i16 7258], [46 x i8] zeroinitializer }, align 32
@csc_sdtv_to_rgb_offsets = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 6144, i32 6144], [20 x i8] zeroinitializer }, align 32
@csc_identity_matrix = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 4096, i16 0, i16 0, i16 0, i16 4096, i16 0, i16 0, i16 0, i16 4096], [46 x i8] zeroinitializer }, align 32
@zynqmp_disp_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynqmp_disp_crtc_enable_vblank, ptr @zynqmp_disp_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@zynqmp_disp_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynqmp_disp_crtc_atomic_check, ptr @zynqmp_disp_crtc_atomic_begin, ptr @zynqmp_disp_crtc_atomic_flush, ptr @zynqmp_disp_crtc_atomic_enable, ptr @zynqmp_disp_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@zynqmp_disp_crtc_atomic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 1465, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable a pixel clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"zynqmp_disp_crtc_atomic_enable\00", [33 x i8] zeroinitializer }, align 32
@zynqmp_disp_crtc_atomic_enable._entry_ptr = internal global ptr @zynqmp_disp_crtc_atomic_enable._entry, section ".printk_index", align 4
@zynqmp_disp_crtc_setup_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 1433, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set a pixel clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"zynqmp_disp_crtc_setup_clock\00", [35 x i8] zeroinitializer }, align 32
@zynqmp_disp_crtc_setup_clock._entry_ptr = internal global ptr @zynqmp_disp_crtc_setup_clock._entry, section ".printk_index", align 4
@zynqmp_disp_crtc_setup_clock._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.7, i32 1442, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"requested pixel rate: %lu actual rate: %lu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@zynqmp_disp_crtc_setup_clock._entry_ptr.20 = internal global ptr @zynqmp_disp_crtc_setup_clock._entry.17, section ".printk_index", align 4
@zynqmp_disp_crtc_setup_clock.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.16, ptr @.str.7, ptr @.str.18, i8 1, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zynqmp_dpsub\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dp_live_audio_aclk\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dp_aud_clk\00", [21 x i8] zeroinitializer }, align 32
@zynqmp_disp_audio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 921, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"audio disabled due to missing clock\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zynqmp_disp_audio_init\00", [41 x i8] zeroinitializer }, align 32
@zynqmp_disp_audio_init._entry_ptr = internal global ptr @zynqmp_disp_audio_init._entry, section ".printk_index", align 4
@zynqmp_disp_create_layers.layer_info = internal constant { [2 x %struct.zynqmp_disp_layer_info], [40 x i8] } { [2 x %struct.zynqmp_disp_layer_info] [%struct.zynqmp_disp_layer_info { ptr @avbuf_vid_fmts, i32 20, i32 3 }, %struct.zynqmp_disp_layer_info { ptr @avbuf_gfx_fmts, i32 12, i32 1 }], [40 x i8] zeroinitializer }, align 32
@avbuf_vid_fmts = internal constant { [20 x %struct.zynqmp_disp_format], [112 x i8] } { [20 x %struct.zynqmp_disp_format] [%struct.zynqmp_disp_format { i32 1498765654, i32 1, i32 0, i8 1, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 1498831189, i32 1, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 1448695129, i32 3, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 1431918169, i32 3, i32 0, i8 1, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 909202777, i32 4, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 909203033, i32 4, i32 0, i8 1, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875713881, i32 5, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875714137, i32 5, i32 0, i8 1, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 909203022, i32 6, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 825644622, i32 6, i32 0, i8 1, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875710274, i32 10, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875710290, i32 10, i32 0, i8 1, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875709016, i32 11, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875713112, i32 11, i32 0, i8 1, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 808665688, i32 12, i32 0, i8 0, ptr @scaling_factors_101010 }, %struct.zynqmp_disp_format { i32 808669784, i32 12, i32 0, i8 1, ptr @scaling_factors_101010 }, %struct.zynqmp_disp_format { i32 842093913, i32 19, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 842094169, i32 19, i32 0, i8 1, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 842094158, i32 20, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 825382478, i32 20, i32 0, i8 1, ptr @scaling_factors_888 }], [112 x i8] zeroinitializer }, align 32
@avbuf_gfx_fmts = internal constant { [12 x %struct.zynqmp_disp_format], [48 x i8] } { [12 x %struct.zynqmp_disp_format] [%struct.zynqmp_disp_format { i32 875708993, i32 0, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875713089, i32 0, i32 0, i8 1, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875708754, i32 256, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875708738, i32 256, i32 0, i8 1, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875710274, i32 512, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 875710290, i32 768, i32 0, i8 0, ptr @scaling_factors_888 }, %struct.zynqmp_disp_format { i32 892420434, i32 1024, i32 0, i8 0, ptr @scaling_factors_555 }, %struct.zynqmp_disp_format { i32 892420418, i32 1024, i32 0, i8 1, ptr @scaling_factors_555 }, %struct.zynqmp_disp_format { i32 842088786, i32 1280, i32 0, i8 0, ptr @scaling_factors_444 }, %struct.zynqmp_disp_format { i32 842088770, i32 1280, i32 0, i8 1, ptr @scaling_factors_444 }, %struct.zynqmp_disp_format { i32 909199186, i32 1536, i32 0, i8 0, ptr @scaling_factors_565 }, %struct.zynqmp_disp_format { i32 909199170, i32 1536, i32 0, i8 1, ptr @scaling_factors_565 }], [48 x i8] zeroinitializer }, align 32
@scaling_factors_888 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65793, i32 65793, i32 65793], [20 x i8] zeroinitializer }, align 32
@scaling_factors_101010 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65600, i32 65600, i32 65600], [20 x i8] zeroinitializer }, align 32
@scaling_factors_555 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 67650, i32 67650, i32 67650], [20 x i8] zeroinitializer }, align 32
@scaling_factors_444 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 69905, i32 69905, i32 69905], [20 x i8] zeroinitializer }, align 32
@scaling_factors_565 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 67650, i32 66576, i32 67650], [20 x i8] zeroinitializer }, align 32
@zynqmp_disp_layer_request_dma.dma_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vid\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gfx\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%u\00", [27 x i8] zeroinitializer }, align 32
@zynqmp_disp_layer_request_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.7, i32 1331, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request dma channel\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"zynqmp_disp_layer_request_dma\00", [34 x i8] zeroinitializer }, align 32
@zynqmp_disp_layer_request_dma._entry_ptr = internal global ptr @zynqmp_disp_layer_request_dma._entry, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1648, i32 59 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1653, i32 59 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1658, i32 59 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1664, i32 39 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1672, i32 40 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1674, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"zynqmp_disp_plane_funcs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1218, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [31 x i8] c"zynqmp_disp_plane_helper_funcs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1212, i32 44 }
@___asan_gen_.71 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 1169, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"csc_zero_matrix\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 657, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"csc_zero_offsets\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 669, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1119, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [23 x i8] c"csc_sdtv_to_rgb_matrix\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 683, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"csc_sdtv_to_rgb_offsets\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 689, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"csc_identity_matrix\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 663, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"zynqmp_disp_crtc_funcs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1570, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant [30 x i8] c"zynqmp_disp_crtc_helper_funcs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1546, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1465, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1433, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1440, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1444, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 908, i32 44 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 915, i32 44 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 921, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [11 x i8] c"layer_info\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1349, i32 45 }
@___asan_gen_.151 = private unnamed_addr constant [15 x i8] c"avbuf_vid_fmts\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 240, i32 40 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"avbuf_gfx_fmts\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 345, i32 40 }
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c"scaling_factors_888\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 227, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant [23 x i8] c"scaling_factors_101010\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 233, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"scaling_factors_555\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 215, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c"scaling_factors_444\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 209, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"scaling_factors_565\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 221, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant [10 x i8] c"dma_names\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1319, i32 28 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1319, i32 44 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1319, i32 51 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1328, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [38 x i8] c"../drivers/gpu/drm/xlnx/zynqmp_disp.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1331, i32 4 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @zynqmp_disp_audio_init._entry, ptr @zynqmp_disp_audio_init._entry_ptr, ptr @zynqmp_disp_crtc_atomic_enable._entry, ptr @zynqmp_disp_crtc_atomic_enable._entry_ptr, ptr @zynqmp_disp_crtc_setup_clock._entry, ptr @zynqmp_disp_crtc_setup_clock._entry.17, ptr @zynqmp_disp_crtc_setup_clock._entry_ptr, ptr @zynqmp_disp_crtc_setup_clock._entry_ptr.20, ptr @zynqmp_disp_layer_request_dma._entry, ptr @zynqmp_disp_layer_request_dma._entry_ptr, ptr @zynqmp_disp_layer_update._entry, ptr @zynqmp_disp_layer_update._entry_ptr, ptr @zynqmp_disp_probe._entry, ptr @zynqmp_disp_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @zynqmp_disp_plane_funcs, ptr @zynqmp_disp_plane_helper_funcs, ptr @.str.10, ptr @csc_zero_matrix, ptr @csc_zero_offsets, ptr @.str.11, ptr @.str.12, ptr @csc_sdtv_to_rgb_matrix, ptr @csc_sdtv_to_rgb_offsets, ptr @csc_identity_matrix, ptr @zynqmp_disp_crtc_funcs, ptr @zynqmp_disp_crtc_helper_funcs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @zynqmp_disp_create_layers.layer_info, ptr @avbuf_vid_fmts, ptr @avbuf_gfx_fmts, ptr @scaling_factors_888, ptr @scaling_factors_101010, ptr @scaling_factors_555, ptr @scaling_factors_444, ptr @scaling_factors_565, ptr @zynqmp_disp_layer_request_dma.dma_names, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_zero_matrix to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_zero_offsets to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_layer_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_sdtv_to_rgb_matrix to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_sdtv_to_rgb_offsets to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_identity_matrix to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_crtc_atomic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_crtc_setup_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_crtc_setup_clock._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_audio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_create_layers.layer_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avbuf_vid_fmts to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avbuf_gfx_fmts to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaling_factors_888 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaling_factors_101010 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaling_factors_555 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaling_factors_444 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaling_factors_565 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_layer_request_dma.dma_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_disp_layer_request_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zynqmp_disp_handle_vblank(ptr noundef %disp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc1 = getelementptr inbounds %struct.zynqmp_disp, ptr %disp, i32 0, i32 3
  %call = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %crtc1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @zynqmp_disp_audio_enabled(ptr nocapture noundef readonly %disp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.zynqmp_disp, ptr %disp, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %tobool = icmp ne ptr %1, null
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zynqmp_disp_get_audio_clk_rate(ptr nocapture noundef readonly %disp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk.i = getelementptr inbounds %struct.zynqmp_disp, ptr %disp, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @clk_get_rate(ptr noundef null) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @zynqmp_disp_get_crtc_mask(ptr nocapture noundef readonly %disp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i = getelementptr inbounds %struct.zynqmp_disp, ptr %disp, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %1
  ret i32 %shl.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zynqmp_disp_drm_init(ptr nocapture noundef readonly %dpsub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disp1 = getelementptr inbounds %struct.zynqmp_dpsub, ptr %dpsub, i32 0, i32 3
  %0 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp1, align 4
  %drm.i = getelementptr inbounds %struct.zynqmp_disp, ptr %1, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.zynqmp_disp, ptr %1, i32 0, i32 7, i32 0
  %info.i = getelementptr %struct.zynqmp_disp, ptr %1, i32 0, i32 7, i32 0, i32 3
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 8
  %num_formats.i = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_formats.i, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #7
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %entry.cleanup_crit_edge, label %drmm_kcalloc.exit.i, !prof !114

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

drmm_kcalloc.exit.i:                              ; preds = %entry
  %8 = ptrtoint ptr %drm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drm.i, align 4
  %10 = extractvalue { i32, i1 } %6, 0
  %call5.i.i.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %9, i32 noundef %10, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %drmm_kcalloc.exit.i.cleanup_crit_edge, label %for.cond1.preheader.i

drmm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %drmm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.preheader.i:                            ; preds = %drmm_kcalloc.exit.i
  %11 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info.i, align 8
  %num_formats3.i = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %num_formats3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_formats3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp460.not.i = icmp eq i32 %14, 0
  br i1 %cmp460.not.i, label %for.cond1.preheader.i.for.end.i_crit_edge, label %for.cond1.preheader.i.for.body5.i_crit_edge

for.cond1.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body5.i

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond1.preheader.i.for.body5.i_crit_edge
  %j.061.i = phi i32 [ %inc.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body5.i_crit_edge ]
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %arrayidx7.i = getelementptr %struct.zynqmp_disp_format, ptr %16, i32 %j.061.i
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %call5.i.i.i, i32 %j.061.i
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx8.i, align 4
  %inc.i = add nuw i32 %j.061.i, 1
  %20 = ptrtoint ptr %num_formats3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_formats3.i, align 4
  %cmp4.i = icmp ult i32 %inc.i, %21
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.for.end.i_crit_edge

for.body5.i.for.end.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5.i

for.end.i:                                        ; preds = %for.body5.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond1.preheader.i.for.end.i_crit_edge ], [ %21, %for.body5.i.for.end.i_crit_edge ]
  %id.i.i = getelementptr %struct.zynqmp_disp, ptr %1, i32 0, i32 7, i32 0, i32 1
  %22 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i = icmp ne i32 %23, 0
  %cond.i = zext i1 %cmp.i.i to i32
  %24 = ptrtoint ptr %drm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drm.i, align 4
  %call13.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %25, ptr noundef %arrayidx.i, i32 noundef 0, ptr noundef nonnull @zynqmp_disp_plane_funcs, ptr noundef nonnull %call5.i.i.i, i32 noundef %.lcssa.i, ptr noundef null, i32 noundef %cond.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.i:                                       ; preds = %for.end.i
  %helper_private.i.i = getelementptr %struct.zynqmp_disp, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 18
  %26 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @zynqmp_disp_plane_helper_funcs, ptr %helper_private.i.i, align 8
  %call19.i = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %arrayidx.i, i32 noundef 0) #7
  %27 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i55.i = icmp eq i32 %28, 1
  br i1 %cmp.i55.i, label %if.then21.i, label %if.end16.i.for.inc27.i_crit_edge

if.end16.i.for.inc27.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc27.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call i32 @drm_plane_create_alpha_property(ptr noundef %arrayidx.i) #7
  br label %for.inc27.i

for.inc27.i:                                      ; preds = %if.then21.i, %if.end16.i.for.inc27.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.zynqmp_disp, ptr %1, i32 0, i32 7, i32 1
  %info.1.i = getelementptr %struct.zynqmp_disp, ptr %1, i32 0, i32 7, i32 1, i32 3
  %29 = ptrtoint ptr %info.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info.1.i, align 8
  %num_formats.1.i = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %num_formats.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_formats.1.i, align 4
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 4) #7
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %for.inc27.i.cleanup_crit_edge, label %drmm_kcalloc.exit.1.i, !prof !114

for.inc27.i.cleanup_crit_edge:                    ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

drmm_kcalloc.exit.1.i:                            ; preds = %for.inc27.i
  %35 = ptrtoint ptr %drm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drm.i, align 4
  %37 = extractvalue { i32, i1 } %33, 0
  %call5.i.i.1.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %36, i32 noundef %37, i32 noundef 3520) #7
  %tobool.not.1.i = icmp eq ptr %call5.i.i.1.i, null
  br i1 %tobool.not.1.i, label %drmm_kcalloc.exit.1.i.cleanup_crit_edge, label %for.cond1.preheader.1.i

drmm_kcalloc.exit.1.i.cleanup_crit_edge:          ; preds = %drmm_kcalloc.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond1.preheader.1.i:                          ; preds = %drmm_kcalloc.exit.1.i
  %38 = ptrtoint ptr %info.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info.1.i, align 8
  %num_formats3.1.i = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %num_formats3.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_formats3.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp460.not.1.i = icmp eq i32 %41, 0
  br i1 %cmp460.not.1.i, label %for.cond1.preheader.1.i.for.end.1.i_crit_edge, label %for.cond1.preheader.1.i.for.body5.1.i_crit_edge

for.cond1.preheader.1.i.for.body5.1.i_crit_edge:  ; preds = %for.cond1.preheader.1.i
  br label %for.body5.1.i

for.cond1.preheader.1.i.for.end.1.i_crit_edge:    ; preds = %for.cond1.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1.i

for.body5.1.i:                                    ; preds = %for.body5.1.i.for.body5.1.i_crit_edge, %for.cond1.preheader.1.i.for.body5.1.i_crit_edge
  %j.061.1.i = phi i32 [ %inc.1.i, %for.body5.1.i.for.body5.1.i_crit_edge ], [ 0, %for.cond1.preheader.1.i.for.body5.1.i_crit_edge ]
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %arrayidx7.1.i = getelementptr %struct.zynqmp_disp_format, ptr %43, i32 %j.061.1.i
  %44 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx7.1.i, align 4
  %arrayidx8.1.i = getelementptr i32, ptr %call5.i.i.1.i, i32 %j.061.1.i
  %46 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx8.1.i, align 4
  %inc.1.i = add nuw i32 %j.061.1.i, 1
  %47 = ptrtoint ptr %num_formats3.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_formats3.1.i, align 4
  %cmp4.1.i = icmp ult i32 %inc.1.i, %48
  br i1 %cmp4.1.i, label %for.body5.1.i.for.body5.1.i_crit_edge, label %for.body5.1.i.for.end.1.i_crit_edge

for.body5.1.i.for.end.1.i_crit_edge:              ; preds = %for.body5.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.1.i

for.body5.1.i.for.body5.1.i_crit_edge:            ; preds = %for.body5.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5.1.i

for.end.1.i:                                      ; preds = %for.body5.1.i.for.end.1.i_crit_edge, %for.cond1.preheader.1.i.for.end.1.i_crit_edge
  %.lcssa.1.i = phi i32 [ 0, %for.cond1.preheader.1.i.for.end.1.i_crit_edge ], [ %48, %for.body5.1.i.for.end.1.i_crit_edge ]
  %id.i.1.i = getelementptr %struct.zynqmp_disp, ptr %1, i32 0, i32 7, i32 1, i32 1
  %49 = ptrtoint ptr %id.i.1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.1.i = icmp ne i32 %50, 0
  %cond.1.i = zext i1 %cmp.i.1.i to i32
  %51 = ptrtoint ptr %drm.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %drm.i, align 4
  %call13.1.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %52, ptr noundef %arrayidx.1.i, i32 noundef 0, ptr noundef nonnull @zynqmp_disp_plane_funcs, ptr noundef nonnull %call5.i.i.1.i, i32 noundef %.lcssa.1.i, ptr noundef null, i32 noundef %cond.1.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1.i)
  %tobool14.not.1.i = icmp eq i32 %call13.1.i, 0
  br i1 %tobool14.not.1.i, label %if.end16.1.i, label %for.end.1.i.cleanup_crit_edge

for.end.1.i.cleanup_crit_edge:                    ; preds = %for.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.1.i:                                     ; preds = %for.end.1.i
  %helper_private.i.1.i = getelementptr %struct.zynqmp_disp, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 18
  %53 = ptrtoint ptr %helper_private.i.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @zynqmp_disp_plane_helper_funcs, ptr %helper_private.i.1.i, align 8
  %call19.1.i = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %arrayidx.1.i, i32 noundef 1) #7
  %54 = ptrtoint ptr %id.i.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i55.1.i = icmp eq i32 %55, 1
  br i1 %cmp.i55.1.i, label %if.then21.1.i, label %if.end16.1.i.if.end_crit_edge

if.end16.1.i.if.end_crit_edge:                    ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then21.1.i:                                    ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.1.i = tail call i32 @drm_plane_create_alpha_property(ptr noundef %arrayidx.1.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then21.1.i, %if.end16.1.i.if.end_crit_edge
  %56 = ptrtoint ptr %drm.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %drm.i, align 4
  %crtc.i = getelementptr inbounds %struct.zynqmp_disp, ptr %1, i32 0, i32 3
  %call.i = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %57, ptr noundef %crtc.i, ptr noundef %arrayidx.1.i, ptr noundef null, ptr noundef nonnull @zynqmp_disp_crtc_funcs, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %helper_private.i.i13 = getelementptr inbounds %struct.zynqmp_disp, ptr %1, i32 0, i32 3, i32 19
  %58 = ptrtoint ptr %helper_private.i.i13 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @zynqmp_disp_crtc_helper_funcs, ptr %helper_private.i.i13, align 8
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc.i) #7
  %index.i.i.i = getelementptr inbounds %struct.zynqmp_disp, ptr %1, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %60
  %possible_crtcs1.i = getelementptr %struct.zynqmp_disp, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 5
  %61 = ptrtoint ptr %possible_crtcs1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shl.i.i, ptr %possible_crtcs1.i, align 8
  %possible_crtcs1.1.i = getelementptr %struct.zynqmp_disp, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 5
  %62 = ptrtoint ptr %possible_crtcs1.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shl.i.i, ptr %possible_crtcs1.1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %for.end.1.i.cleanup_crit_edge, %drmm_kcalloc.exit.1.i.cleanup_crit_edge, %for.inc27.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %drmm_kcalloc.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call13.1.i, %for.end.1.i.cleanup_crit_edge ], [ -12, %drmm_kcalloc.exit.1.i.cleanup_crit_edge ], [ -12, %for.inc27.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %drmm_kcalloc.exit.i.cleanup_crit_edge ], [ %call13.i, %for.end.i.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zynqmp_disp_probe(ptr noundef %dpsub, ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  %dma_channel_name.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.zynqmp_dpsub, ptr %dpsub, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %drm, i32 noundef 2424, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call.i, align 8
  %dpsub3 = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dpsub3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dpsub, ptr %dpsub3, align 8
  %drm4 = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %drm4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %drm, ptr %drm4, align 4
  %disp5 = getelementptr inbounds %struct.zynqmp_dpsub, ptr %dpsub, i32 0, i32 3
  %5 = ptrtoint ptr %disp5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %disp5, align 4
  %call6 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str) #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 8
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %7, ptr noundef %call6) #7
  %blend = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %blend to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %blend, align 8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.1) #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 8
  %call19 = tail call ptr @devm_ioremap_resource(ptr noundef %11, ptr noundef %call17) #7
  %avbuf = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %avbuf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %avbuf, align 4
  %cmp.i119 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %call29 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.2) #7
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  %call31 = tail call ptr @devm_ioremap_resource(ptr noundef %15, ptr noundef %call29) #7
  %audio = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %audio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call31, ptr %audio, align 8
  %cmp.i120 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  %call42 = tail call ptr @devm_clk_get(ptr noundef %19, ptr noundef nonnull @.str.3) #7
  %pclk = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call42, ptr %pclk, align 4
  %cmp.i121 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %pclk_from_ps = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %pclk_from_ps to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pclk_from_ps, align 8
  br label %if.end52

if.else:                                          ; preds = %if.end40
  %cmp = icmp eq ptr %call42, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.else.if.end52_crit_edge, %if.then45
  %22 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pclk, align 4
  %tobool.not.i = icmp eq ptr %23, null
  %cmp.i122 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i122
  br i1 %spec.select.i, label %if.then55, label %if.end52.if.end67_crit_edge

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then55:                                        ; preds = %if.end52
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 8
  %call57 = tail call ptr @devm_clk_get(ptr noundef %25, ptr noundef nonnull @.str.4) #7
  %26 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call57, ptr %pclk, align 4
  %cmp.i123 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %do.end, label %if.end65

do.end:                                           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.5) #10
  %29 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pclk, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.end65:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %pclk_from_ps66 = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 10
  %32 = ptrtoint ptr %pclk_from_ps66 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %pclk_from_ps66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end65, %if.end52.if.end67_crit_edge
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  %call.i124 = tail call ptr @devm_clk_get(ptr noundef %34, ptr noundef nonnull @.str.22) #7
  %clk.i = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i124, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %clk_from_ps.i = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 6, i32 2
  %36 = ptrtoint ptr %clk_from_ps.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %clk_from_ps.i, align 8
  br label %zynqmp_disp_audio_init.exit

if.end.i:                                         ; preds = %if.end67
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 8
  %call6.i = tail call ptr @devm_clk_get(ptr noundef %38, ptr noundef nonnull @.str.23) #7
  %39 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call6.i, ptr %clk.i, align 4
  %cmp.i25.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i, label %do.end.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %clk_from_ps14.i = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 6, i32 2
  %40 = ptrtoint ptr %clk_from_ps14.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %clk_from_ps14.i, align 8
  br label %zynqmp_disp_audio_init.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.24) #10
  br label %zynqmp_disp_audio_init.exit

zynqmp_disp_audio_init.exit:                      ; preds = %do.end.i, %if.then12.i, %if.then.i
  %id.i = getelementptr %struct.zynqmp_disp, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %43 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %id.i, align 8
  %disp1.i = getelementptr %struct.zynqmp_disp, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %44 = ptrtoint ptr %disp1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %disp1.i, align 4
  %info.i = getelementptr %struct.zynqmp_disp, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  %45 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @zynqmp_disp_create_layers.layer_info, ptr %info.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %zynqmp_disp_audio_init.exit
  %i.025.i.i = phi i32 [ 0, %zynqmp_disp_audio_init.exit ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.zynqmp_disp, ptr %call.i, i32 0, i32 7, i32 0, i32 4, i32 %i.025.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dma_channel_name.i.i) #7
  %46 = call ptr @memset(ptr %dma_channel_name.i.i, i32 255, i32 16)
  %47 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id.i, align 8
  %arrayidx1.i.i = getelementptr [2 x ptr], ptr @zynqmp_disp_layer_request_dma.dma_names, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx1.i.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dma_channel_name.i.i, i32 noundef 16, ptr noundef nonnull @.str.28, ptr noundef %50, i32 noundef %i.025.i.i) #7
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 8
  %call3.i.i = call ptr @dma_request_chan(ptr noundef %52, ptr noundef nonnull %dma_channel_name.i.i) #7
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call3.i.i, ptr %arrayidx.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %zynqmp_disp_layer_request_dma.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dma_channel_name.i.i) #7
  %inc.i.i = add nuw i32 %i.025.i.i, 1
  %54 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info.i, align 8
  %num_channels.i.i = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_channels.i.i, align 4
  %cmp.i.i125 = icmp ult i32 %inc.i.i, %57
  br i1 %cmp.i.i125, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.inc.i_crit_edge

for.inc.i.i.for.inc.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

zynqmp_disp_layer_request_dma.exit.i:             ; preds = %for.body.i.i
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.29) #10
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i, align 4
  store ptr null, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dma_channel_name.i.i) #7
  %tobool.not.i126 = icmp eq ptr %61, null
  br i1 %tobool.not.i126, label %zynqmp_disp_layer_request_dma.exit.i.for.inc.i_crit_edge, label %zynqmp_disp_layer_request_dma.exit.i.zynqmp_disp_create_layers.exit_crit_edge

zynqmp_disp_layer_request_dma.exit.i.zynqmp_disp_create_layers.exit_crit_edge: ; preds = %zynqmp_disp_layer_request_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_create_layers.exit

zynqmp_disp_layer_request_dma.exit.i.for.inc.i_crit_edge: ; preds = %zynqmp_disp_layer_request_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %zynqmp_disp_layer_request_dma.exit.i.for.inc.i_crit_edge, %for.inc.i.i.for.inc.i_crit_edge
  %id.1.i = getelementptr %struct.zynqmp_disp, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %62 = ptrtoint ptr %id.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %id.1.i, align 8
  %disp1.1.i = getelementptr %struct.zynqmp_disp, ptr %call.i, i32 0, i32 7, i32 1, i32 2
  %63 = ptrtoint ptr %disp1.1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %disp1.1.i, align 4
  %info.1.i = getelementptr %struct.zynqmp_disp, ptr %call.i, i32 0, i32 7, i32 1, i32 3
  %64 = ptrtoint ptr %info.1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr getelementptr inbounds ([2 x %struct.zynqmp_disp_layer_info], ptr @zynqmp_disp_create_layers.layer_info, i32 0, i32 1), ptr %info.1.i, align 8
  br label %for.body.i.1.i

for.body.i.1.i:                                   ; preds = %for.inc.i.1.i.for.body.i.1.i_crit_edge, %for.inc.i
  %i.025.i.1.i = phi i32 [ 0, %for.inc.i ], [ %inc.i.1.i, %for.inc.i.1.i.for.body.i.1.i_crit_edge ]
  %arrayidx.i.1.i = getelementptr %struct.zynqmp_disp, ptr %call.i, i32 0, i32 7, i32 1, i32 4, i32 %i.025.i.1.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dma_channel_name.i.i) #7
  %65 = call ptr @memset(ptr %dma_channel_name.i.i, i32 255, i32 16)
  %66 = ptrtoint ptr %id.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id.1.i, align 8
  %arrayidx1.i.1.i = getelementptr [2 x ptr], ptr @zynqmp_disp_layer_request_dma.dma_names, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx1.i.1.i, align 4
  %call.i.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dma_channel_name.i.i, i32 noundef 16, ptr noundef nonnull @.str.28, ptr noundef %69, i32 noundef %i.025.i.1.i) #7
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 8
  %call3.i.1.i = call ptr @dma_request_chan(ptr noundef %71, ptr noundef nonnull %dma_channel_name.i.i) #7
  %72 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call3.i.1.i, ptr %arrayidx.i.1.i, align 4
  %cmp.i.i.1.i = icmp ugt ptr %call3.i.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1.i, label %zynqmp_disp_layer_request_dma.exit.1.i, label %for.inc.i.1.i

for.inc.i.1.i:                                    ; preds = %for.body.i.1.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dma_channel_name.i.i) #7
  %inc.i.1.i = add nuw i32 %i.025.i.1.i, 1
  %73 = ptrtoint ptr %info.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %info.1.i, align 8
  %num_channels.i.1.i = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %num_channels.i.1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_channels.i.1.i, align 4
  %cmp.i.1.i = icmp ult i32 %inc.i.1.i, %76
  br i1 %cmp.i.1.i, label %for.inc.i.1.i.for.body.i.1.i_crit_edge, label %for.inc.i.1.i.if.end71_crit_edge

for.inc.i.1.i.if.end71_crit_edge:                 ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

for.inc.i.1.i.for.body.i.1.i_crit_edge:           ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.1.i

zynqmp_disp_layer_request_dma.exit.1.i:           ; preds = %for.body.i.1.i
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.29) #10
  %79 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.1.i, align 4
  store ptr null, ptr %arrayidx.i.1.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dma_channel_name.i.i) #7
  %tobool.not.1.i = icmp eq ptr %80, null
  br i1 %tobool.not.1.i, label %zynqmp_disp_layer_request_dma.exit.1.i.if.end71_crit_edge, label %zynqmp_disp_layer_request_dma.exit.1.i.zynqmp_disp_create_layers.exit_crit_edge

zynqmp_disp_layer_request_dma.exit.1.i.zynqmp_disp_create_layers.exit_crit_edge: ; preds = %zynqmp_disp_layer_request_dma.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_create_layers.exit

zynqmp_disp_layer_request_dma.exit.1.i.if.end71_crit_edge: ; preds = %zynqmp_disp_layer_request_dma.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

zynqmp_disp_create_layers.exit:                   ; preds = %zynqmp_disp_layer_request_dma.exit.1.i.zynqmp_disp_create_layers.exit_crit_edge, %zynqmp_disp_layer_request_dma.exit.i.zynqmp_disp_create_layers.exit_crit_edge
  %.lcssa.i = phi ptr [ %61, %zynqmp_disp_layer_request_dma.exit.i.zynqmp_disp_create_layers.exit_crit_edge ], [ %80, %zynqmp_disp_layer_request_dma.exit.1.i.zynqmp_disp_create_layers.exit_crit_edge ]
  %81 = ptrtoint ptr %.lcssa.i to i32
  call fastcc void @zynqmp_disp_destroy_layers(ptr noundef %call.i) #7
  br label %cleanup

if.end71:                                         ; preds = %zynqmp_disp_layer_request_dma.exit.1.i.if.end71_crit_edge, %for.inc.i.1.i.if.end71_crit_edge
  %dmas = getelementptr inbounds %struct.zynqmp_disp, ptr %call.i, i32 0, i32 7, i32 0, i32 4
  %82 = ptrtoint ptr %dmas to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dmas, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %copy_align to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %copy_align, align 4
  %shl = shl nuw i32 1, %87
  %dma_align = getelementptr inbounds %struct.zynqmp_dpsub, ptr %dpsub, i32 0, i32 5
  %88 = ptrtoint ptr %dma_align to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shl, ptr %dma_align, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %zynqmp_disp_create_layers.exit, %do.end, %if.else.cleanup_crit_edge, %if.then36, %if.then24, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then12 ], [ %13, %if.then24 ], [ %17, %if.then36 ], [ %31, %do.end ], [ 0, %if.end71 ], [ -12, %entry.cleanup_crit_edge ], [ %81, %zynqmp_disp_create_layers.exit ], [ -517, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zynqmp_disp_remove(ptr nocapture noundef readonly %dpsub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disp1 = getelementptr inbounds %struct.zynqmp_dpsub, ptr %dpsub, i32 0, i32 3
  %0 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp1, align 4
  tail call fastcc void @zynqmp_disp_destroy_layers(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_disp_destroy_layers(ptr nocapture noundef readonly %disp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr %struct.zynqmp_disp, ptr %disp, i32 0, i32 7, i32 0, i32 3
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.zynqmp_disp_layer_release_dma.exit_crit_edge, label %for.cond.preheader.i

entry.zynqmp_disp_layer_release_dma.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_release_dma.exit

for.cond.preheader.i:                             ; preds = %entry
  %num_channels1.i = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_channels1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not.i = icmp eq i32 %3, 0
  br i1 %cmp2.not.i, label %for.cond.preheader.i.zynqmp_disp_layer_release_dma.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.zynqmp_disp_layer_release_dma.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_release_dma.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynqmp_disp, ptr %disp, i32 0, i32 7, i32 0, i32 4, i32 %i.03.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end4.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end4.i:                                        ; preds = %for.body.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end4.i.dmaengine_terminate_sync.exit.i_crit_edge, label %dmaengine_terminate_async.exit.i.i

if.end4.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_async.exit.i.i:               ; preds = %if.end4.i
  %call.i.i.i = tail call i32 %9(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge

dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit.i

if.end.i.i:                                       ; preds = %dmaengine_terminate_async.exit.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 1169) #7
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge, label %if.then.i2.i.i

if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit.i

if.then.i2.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %13(ptr noundef nonnull %5) #7
  br label %dmaengine_terminate_sync.exit.i

dmaengine_terminate_sync.exit.i:                  ; preds = %if.then.i2.i.i, %if.end.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %dmaengine_terminate_async.exit.i.i.dmaengine_terminate_sync.exit.i_crit_edge, %if.end4.i.dmaengine_terminate_sync.exit.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void @dma_release_channel(ptr noundef %15) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %dmaengine_terminate_sync.exit.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.03.i, 1
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info.i, align 8
  %num_channels.i = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.zynqmp_disp_layer_release_dma.exit_crit_edge

cleanup.i.zynqmp_disp_layer_release_dma.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_release_dma.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

zynqmp_disp_layer_release_dma.exit:               ; preds = %cleanup.i.zynqmp_disp_layer_release_dma.exit_crit_edge, %for.cond.preheader.i.zynqmp_disp_layer_release_dma.exit_crit_edge, %entry.zynqmp_disp_layer_release_dma.exit_crit_edge
  %info.i.1 = getelementptr %struct.zynqmp_disp, ptr %disp, i32 0, i32 7, i32 1, i32 3
  %20 = ptrtoint ptr %info.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i.1, align 8
  %tobool.not.i.1 = icmp eq ptr %21, null
  br i1 %tobool.not.i.1, label %zynqmp_disp_layer_release_dma.exit.zynqmp_disp_layer_release_dma.exit.1_crit_edge, label %for.cond.preheader.i.1

zynqmp_disp_layer_release_dma.exit.zynqmp_disp_layer_release_dma.exit.1_crit_edge: ; preds = %zynqmp_disp_layer_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_release_dma.exit.1

for.cond.preheader.i.1:                           ; preds = %zynqmp_disp_layer_release_dma.exit
  %num_channels1.i.1 = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %num_channels1.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_channels1.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.not.i.1 = icmp eq i32 %23, 0
  br i1 %cmp2.not.i.1, label %for.cond.preheader.i.1.zynqmp_disp_layer_release_dma.exit.1_crit_edge, label %for.cond.preheader.i.1.for.body.i.1_crit_edge

for.cond.preheader.i.1.for.body.i.1_crit_edge:    ; preds = %for.cond.preheader.i.1
  br label %for.body.i.1

for.cond.preheader.i.1.zynqmp_disp_layer_release_dma.exit.1_crit_edge: ; preds = %for.cond.preheader.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_release_dma.exit.1

for.body.i.1:                                     ; preds = %cleanup.i.1.for.body.i.1_crit_edge, %for.cond.preheader.i.1.for.body.i.1_crit_edge
  %i.03.i.1 = phi i32 [ %inc.i.1, %cleanup.i.1.for.body.i.1_crit_edge ], [ 0, %for.cond.preheader.i.1.for.body.i.1_crit_edge ]
  %arrayidx.i.1 = getelementptr %struct.zynqmp_disp, ptr %disp, i32 0, i32 7, i32 1, i32 4, i32 %i.03.i.1
  %24 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.1, align 4
  %tobool2.not.i.1 = icmp eq ptr %25, null
  br i1 %tobool2.not.i.1, label %for.body.i.1.cleanup.i.1_crit_edge, label %if.end4.i.1

for.body.i.1.cleanup.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i.1

if.end4.i.1:                                      ; preds = %for.body.i.1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %device_terminate_all.i.i.i.1 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 47
  %28 = ptrtoint ptr %device_terminate_all.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_terminate_all.i.i.i.1, align 4
  %tobool.not.i.i.i.1 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i.1, label %if.end4.i.1.dmaengine_terminate_sync.exit.i.1_crit_edge, label %dmaengine_terminate_async.exit.i.i.1

if.end4.i.1.dmaengine_terminate_sync.exit.i.1_crit_edge: ; preds = %if.end4.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit.i.1

dmaengine_terminate_async.exit.i.i.1:             ; preds = %if.end4.i.1
  %call.i.i.i.1 = tail call i32 %29(ptr noundef nonnull %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %call.i.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %if.end.i.i.1, label %dmaengine_terminate_async.exit.i.i.1.dmaengine_terminate_sync.exit.i.1_crit_edge

dmaengine_terminate_async.exit.i.i.1.dmaengine_terminate_sync.exit.i.1_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit.i.1

if.end.i.i.1:                                     ; preds = %dmaengine_terminate_async.exit.i.i.1
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 1169) #7
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %25, align 4
  %device_synchronize.i.i.i.1 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 48
  %32 = ptrtoint ptr %device_synchronize.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_synchronize.i.i.i.1, align 4
  %tobool.not.i1.i.i.1 = icmp eq ptr %33, null
  br i1 %tobool.not.i1.i.i.1, label %if.end.i.i.1.dmaengine_terminate_sync.exit.i.1_crit_edge, label %if.then.i2.i.i.1

if.end.i.i.1.dmaengine_terminate_sync.exit.i.1_crit_edge: ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit.i.1

if.then.i2.i.i.1:                                 ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %33(ptr noundef nonnull %25) #7
  br label %dmaengine_terminate_sync.exit.i.1

dmaengine_terminate_sync.exit.i.1:                ; preds = %if.then.i2.i.i.1, %if.end.i.i.1.dmaengine_terminate_sync.exit.i.1_crit_edge, %dmaengine_terminate_async.exit.i.i.1.dmaengine_terminate_sync.exit.i.1_crit_edge, %if.end4.i.1.dmaengine_terminate_sync.exit.i.1_crit_edge
  %34 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.1, align 4
  tail call void @dma_release_channel(ptr noundef %35) #7
  br label %cleanup.i.1

cleanup.i.1:                                      ; preds = %dmaengine_terminate_sync.exit.i.1, %for.body.i.1.cleanup.i.1_crit_edge
  %inc.i.1 = add nuw i32 %i.03.i.1, 1
  %36 = ptrtoint ptr %info.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info.i.1, align 8
  %num_channels.i.1 = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %num_channels.i.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_channels.i.1, align 4
  %cmp.i.1 = icmp ult i32 %inc.i.1, %39
  br i1 %cmp.i.1, label %cleanup.i.1.for.body.i.1_crit_edge, label %cleanup.i.1.zynqmp_disp_layer_release_dma.exit.1_crit_edge

cleanup.i.1.zynqmp_disp_layer_release_dma.exit.1_crit_edge: ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_release_dma.exit.1

cleanup.i.1.for.body.i.1_crit_edge:               ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.1

zynqmp_disp_layer_release_dma.exit.1:             ; preds = %cleanup.i.1.zynqmp_disp_layer_release_dma.exit.1_crit_edge, %for.cond.preheader.i.1.zynqmp_disp_layer_release_dma.exit.1_crit_edge, %zynqmp_disp_layer_release_dma.exit.zynqmp_disp_layer_release_dma.exit.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
define internal i32 @zynqmp_disp_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %7) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %call2, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then4 ], [ %call7, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_disp_plane_atomic_update(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %pconfig.i = alloca %struct.xilinx_dpdma_peripheral_config, align 1
  %config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %lor.lhs.false

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

lor.lhs.false:                                    ; preds = %entry
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb5, align 4
  %format6 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %format6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %format6, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp.not = icmp eq i32 %13, %19
  br i1 %cmp.not, label %lor.lhs.false.if.end14_crit_edge, label %if.then12

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @zynqmp_disp_layer_disable(ptr noundef %plane)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %entry.if.end13_crit_edge
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fb.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %format.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %info.i.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 3
  %26 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info.i.i, align 8
  %num_formats.i.i = getelementptr inbounds %struct.zynqmp_disp_layer_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %num_formats.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_formats.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp12.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp12.not.i.i, label %if.end13.zynqmp_disp_layer_find_format.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end13.zynqmp_disp_layer_find_format.exit.i_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_find_format.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end13
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %29
  br i1 %exitcond.not.i.i, label %for.cond.i.i.zynqmp_disp_layer_find_format.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.cond.i.i.zynqmp_disp_layer_find_format.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_find_format.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.zynqmp_disp_format, ptr %31, i32 %i.013.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %25)
  %cmp3.i.i = icmp eq i32 %33, %25
  br i1 %cmp3.i.i, label %for.body.i.i.zynqmp_disp_layer_find_format.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.zynqmp_disp_layer_find_format.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_find_format.exit.i

zynqmp_disp_layer_find_format.exit.i:             ; preds = %for.body.i.i.zynqmp_disp_layer_find_format.exit.i_crit_edge, %for.cond.i.i.zynqmp_disp_layer_find_format.exit.i_crit_edge, %if.end13.zynqmp_disp_layer_find_format.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end13.zynqmp_disp_layer_find_format.exit.i_crit_edge ], [ null, %for.cond.i.i.zynqmp_disp_layer_find_format.exit.i_crit_edge ], [ %arrayidx.i.i, %for.body.i.i.zynqmp_disp_layer_find_format.exit.i_crit_edge ]
  %disp_fmt.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 5
  %34 = ptrtoint ptr %disp_fmt.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i.i, ptr %disp_fmt.i, align 8
  %drm_fmt.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 6
  %35 = ptrtoint ptr %drm_fmt.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %23, ptr %drm_fmt.i, align 4
  %disp.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 2
  %36 = ptrtoint ptr %disp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disp.i, align 4
  %avbuf.i.i.i = getelementptr inbounds %struct.zynqmp_disp, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %avbuf.i.i.i, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !115
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %id.i.i.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 1
  %42 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.i = icmp eq i32 %43, 0
  %cond.i.i = select i1 %cmp.i.i.i, i32 -32, i32 -3841
  %and.i.i = and i32 %cond.i.i, %41
  %buf_fmt.i.i = getelementptr inbounds %struct.zynqmp_disp_format, ptr %retval.0.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %buf_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf_fmt.i.i, align 4
  %or.i.i = or i32 %and.i.i, %45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %47 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %avbuf.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #7, !srcloc !118
  %sf.i.i = getelementptr inbounds %struct.zynqmp_disp_format, ptr %retval.0.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i18.i.i = icmp eq i32 %50, 0
  %cond5.v.i.i = select i1 %cmp.i18.i.i, i32 524, i32 512
  %51 = ptrtoint ptr %sf.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sf.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  %56 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 %cond5.v.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %55) #7, !srcloc !118
  %58 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i18.1.i.i = icmp eq i32 %59, 0
  %cond5.1.i.i = select i1 %cmp.i18.1.i.i, i32 528, i32 516
  %60 = ptrtoint ptr %sf.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sf.i.i, align 4
  %arrayidx.1.i.i = getelementptr i32, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  %65 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %66, i32 %cond5.1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 %64) #7, !srcloc !118
  %67 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i18.2.i.i = icmp eq i32 %68, 0
  %cond5.2.i.i = select i1 %cmp.i18.2.i.i, i32 532, i32 520
  %69 = ptrtoint ptr %sf.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sf.i.i, align 4
  %arrayidx.2.i.i = getelementptr i32, ptr %70, i32 2
  %71 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  %74 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %75, i32 %cond5.2.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i, i32 %73) #7, !srcloc !118
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %23, i32 0, i32 2
  %76 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp16.not.i = icmp eq i8 %77, 0
  br i1 %cmp16.not.i, label %zynqmp_disp_layer_find_format.exit.i.if.end14_crit_edge, label %for.body.lr.ph.i

zynqmp_disp_layer_find_format.exit.i.if.end14_crit_edge: ; preds = %zynqmp_disp_layer_find_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

for.body.lr.ph.i:                                 ; preds = %zynqmp_disp_layer_find_format.exit.i
  %peripheral_config.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 10
  %peripheral_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 11
  %78 = getelementptr inbounds i8, ptr %config.i, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %dmaengine_slave_config.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %dmaengine_slave_config.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 4, i32 %i.017.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pconfig.i) #7
  %79 = ptrtoint ptr %pconfig.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %pconfig.i, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config.i) #7
  %80 = call ptr @memset(ptr %78, i32 0, i32 36)
  %81 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %config.i, align 4
  %82 = ptrtoint ptr %peripheral_config.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %pconfig.i, ptr %peripheral_config.i, align 4
  %83 = ptrtoint ptr %peripheral_size.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %peripheral_size.i, align 4
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i, label %for.body.i.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i

for.body.i.dmaengine_slave_config.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_slave_config.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 %89(ptr noundef %85, ptr noundef nonnull %config.i) #7
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i, %for.body.i.dmaengine_slave_config.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pconfig.i) #7
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %90 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %num_planes.i, align 1
  %conv.i = zext i8 %91 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %dmaengine_slave_config.exit.i.for.body.i_crit_edge, label %dmaengine_slave_config.exit.i.if.end14_crit_edge

dmaengine_slave_config.exit.i.if.end14_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

dmaengine_slave_config.exit.i.for.body.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end14:                                         ; preds = %dmaengine_slave_config.exit.i.if.end14_crit_edge, %zynqmp_disp_layer_find_format.exit.i.if.end14_crit_edge, %lor.lhs.false.if.end14_crit_edge
  %format_changed.0.off062 = phi i1 [ false, %lor.lhs.false.if.end14_crit_edge ], [ true, %zynqmp_disp_layer_find_format.exit.i.if.end14_crit_edge ], [ true, %dmaengine_slave_config.exit.i.if.end14_crit_edge ]
  %drm_fmt.i39 = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 6
  %92 = ptrtoint ptr %drm_fmt.i39 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %drm_fmt.i39, align 4
  %num_planes7.i = getelementptr inbounds %struct.drm_format_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %num_planes7.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %num_planes7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp9.not.i = icmp eq i8 %95, 0
  br i1 %cmp9.not.i, label %if.end14.zynqmp_disp_layer_update.exit_crit_edge, label %for.body.lr.ph.i41

if.end14.zynqmp_disp_layer_update.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_update.exit

for.body.lr.ph.i41:                               ; preds = %if.end14
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 6
  %hsub.i = getelementptr inbounds %struct.drm_format_info, ptr %93, i32 0, i32 6
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %93, i32 0, i32 7
  %.in.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 7
  %fb.i40 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %96 = getelementptr inbounds %struct.drm_format_info, ptr %93, i32 0, i32 3
  br label %for.body.i42

for.body.i42:                                     ; preds = %if.end.i.for.body.i42_crit_edge, %for.body.lr.ph.i41
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i41 ], [ %inc.i47, %if.end.i.for.body.i42_crit_edge ]
  %97 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %crtc_w.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.010.i)
  %tobool.not.i = icmp eq i32 %i.010.i, 0
  br i1 %tobool.not.i, label %for.body.i42.cond.end8.i_crit_edge, label %cond.true5.i

for.body.i42.cond.end8.i_crit_edge:               ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end8.i

cond.true5.i:                                     ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %hsub.i, align 2
  %conv3.i = zext i8 %100 to i32
  %div.i = udiv i32 %98, %conv3.i
  %101 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %vsub.i, align 1
  %conv6.i = zext i8 %102 to i32
  br label %cond.end8.i

cond.end8.i:                                      ; preds = %cond.true5.i, %for.body.i42.cond.end8.i_crit_edge
  %div4.i = phi i32 [ %div.i, %cond.true5.i ], [ %98, %for.body.i42.cond.end8.i_crit_edge ]
  %cond9.i = phi i32 [ %conv6.i, %cond.true5.i ], [ 1, %for.body.i42.cond.end8.i_crit_edge ]
  %103 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %.in.i, align 4
  %div10.i = udiv i32 %104, %cond9.i
  %arrayidx.i43 = getelementptr %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 4, i32 %i.010.i
  %105 = ptrtoint ptr %fb.i40 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fb.i40, align 4
  %call.i = call i32 @drm_fb_cma_get_gem_addr(ptr noundef %106, ptr noundef %7, i32 noundef %i.010.i) #7
  %xt.i = getelementptr %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 4, i32 %i.010.i, i32 1
  %numf.i = getelementptr %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 4, i32 %i.010.i, i32 1, i32 7
  %107 = ptrtoint ptr %numf.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %div10.i, ptr %numf.i, align 4
  %arrayidx11.i = getelementptr [4 x i8], ptr %96, i32 0, i32 %i.010.i
  %108 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %109 to i32
  %mul.i = mul i32 %div4.i, %conv12.i
  %sgl.i = getelementptr %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 4, i32 %i.010.i, i32 2
  %110 = ptrtoint ptr %sgl.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %mul.i, ptr %sgl.i, align 4
  %111 = ptrtoint ptr %fb.i40 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fb.i40, align 4
  %arrayidx14.i = getelementptr %struct.drm_framebuffer, ptr %112, i32 0, i32 6, i32 %i.010.i
  %113 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx14.i, align 4
  %sub.i = sub i32 %114, %mul.i
  %icg.i = getelementptr %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 4, i32 %i.010.i, i32 2, i32 1
  %115 = ptrtoint ptr %icg.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %sub.i, ptr %icg.i, align 4
  %116 = ptrtoint ptr %xt.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call.i, ptr %xt.i, align 4
  %frame_size.i = getelementptr %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 4, i32 %i.010.i, i32 1, i32 8
  %117 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %frame_size.i, align 4
  %dir.i = getelementptr %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 4, i32 %i.010.i, i32 1, i32 2
  %118 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %dir.i, align 4
  %src_sgl.i = getelementptr %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 4, i32 %i.010.i, i32 1, i32 5
  %119 = ptrtoint ptr %src_sgl.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %src_sgl.i, align 2
  %dst_sgl.i = getelementptr %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 4, i32 %i.010.i, i32 1, i32 6
  %120 = ptrtoint ptr %dst_sgl.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %dst_sgl.i, align 1
  %121 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i43, align 4
  %tobool.not.i.i44 = icmp eq ptr %122, null
  br i1 %tobool.not.i.i44, label %cond.end8.i.do.end.i_crit_edge, label %lor.lhs.false.i.i

cond.end8.i.do.end.i_crit_edge:                   ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i.i:                                ; preds = %cond.end8.i
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %tobool1.not.i.i = icmp eq ptr %124, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_interleaved_dma.i.i = getelementptr inbounds %struct.dma_device, ptr %124, i32 0, i32 41
  %125 = ptrtoint ptr %device_prep_interleaved_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device_prep_interleaved_dma.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %126, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.do.end.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false2.i.i.do.end.i_crit_edge:            ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false2.i.i
  %cap_mask.i.i = getelementptr inbounds %struct.dma_device, ptr %124, i32 0, i32 6
  %127 = ptrtoint ptr %cap_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %cap_mask.i.i, align 4
  %129 = and i32 %128, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool7.not.i.i = icmp eq i32 %129, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.do.end.i_crit_edge, label %dmaengine_prep_interleaved_dma.exit.i

land.lhs.true.i.i.do.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

dmaengine_prep_interleaved_dma.exit.i:            ; preds = %land.lhs.true.i.i
  %call12.i.i = call ptr %126(ptr noundef nonnull %122, ptr noundef %xt.i, i32 noundef 770) #7
  %tobool25.not.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool25.not.i, label %dmaengine_prep_interleaved_dma.exit.i.do.end.i_crit_edge, label %if.end.i

dmaengine_prep_interleaved_dma.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_prep_interleaved_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_prep_interleaved_dma.exit.i.do.end.i_crit_edge, %land.lhs.true.i.i.do.end.i_crit_edge, %lor.lhs.false2.i.i.do.end.i_crit_edge, %lor.lhs.false.i.i.do.end.i_crit_edge, %cond.end8.i.do.end.i_crit_edge
  %disp.i45 = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 2
  %130 = ptrtoint ptr %disp.i45 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %disp.i45, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.11) #10
  br label %zynqmp_disp_layer_update.exit

if.end.i:                                         ; preds = %dmaengine_prep_interleaved_dma.exit.i
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call12.i.i, i32 0, i32 4
  %134 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i.i46 = call i32 %135(ptr noundef nonnull %call12.i.i) #7
  %136 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.i43, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %139, i32 0, i32 50
  %140 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %141(ptr noundef %137) #7
  %inc.i47 = add nuw nsw i32 %i.010.i, 1
  %142 = ptrtoint ptr %drm_fmt.i39 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %drm_fmt.i39, align 4
  %num_planes.i48 = getelementptr inbounds %struct.drm_format_info, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %num_planes.i48 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %num_planes.i48, align 1
  %conv.i49 = zext i8 %145 to i32
  %cmp.i50 = icmp ult i32 %inc.i47, %conv.i49
  br i1 %cmp.i50, label %if.end.i.for.body.i42_crit_edge, label %if.end.i.zynqmp_disp_layer_update.exit_crit_edge

if.end.i.zynqmp_disp_layer_update.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynqmp_disp_layer_update.exit

if.end.i.for.body.i42_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i42

zynqmp_disp_layer_update.exit:                    ; preds = %if.end.i.zynqmp_disp_layer_update.exit_crit_edge, %do.end.i, %if.end14.zynqmp_disp_layer_update.exit_crit_edge
  %id.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 1
  %146 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp.i51 = icmp eq i32 %147, 1
  br i1 %cmp.i51, label %if.then17, label %zynqmp_disp_layer_update.exit.if.end19_crit_edge

zynqmp_disp_layer_update.exit.if.end19_crit_edge: ; preds = %zynqmp_disp_layer_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %zynqmp_disp_layer_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  %disp = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 2
  %148 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %disp, align 4
  %state18 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %150 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %state18, align 4
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %151, i32 0, i32 12
  %152 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %alpha, align 4
  %154 = lshr i16 %153, 7
  %155 = or i16 %154, 1
  %or.i = zext i16 %155 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void @arm_heavy_mb() #7
  %156 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %blend.i.i = getelementptr inbounds %struct.zynqmp_disp, ptr %149, i32 0, i32 4
  %157 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %158, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %156) #7, !srcloc !118
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %zynqmp_disp_layer_update.exit.if.end19_crit_edge
  br i1 %format_changed.0.off062, label %if.then21, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %disp.i52 = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 2
  %159 = ptrtoint ptr %disp.i52 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %disp.i52, align 4
  %avbuf.i.i.i53 = getelementptr inbounds %struct.zynqmp_disp, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %avbuf.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %avbuf.i.i.i53, align 4
  %add.ptr.i.i.i54 = getelementptr i8, ptr %162, i32 112
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i54) #7, !srcloc !115
  %164 = call i32 @llvm.bswap.i32(i32 %163) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %165 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp.i.i.i56 = icmp eq i32 %166, 0
  %and.i.i57 = and i32 %164, -4
  %or.i.i58 = or i32 %and.i.i57, 1
  %and5.i.i = and i32 %164, -13
  %or6.i.i = or i32 %and5.i.i, 4
  %val.0.i.i = select i1 %cmp.i.i.i56, i32 %or.i.i58, i32 %or6.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void @arm_heavy_mb() #7
  %167 = call i32 @llvm.bswap.i32(i32 %val.0.i.i) #7
  %168 = ptrtoint ptr %avbuf.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %avbuf.i.i.i53, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %169, i32 112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %167) #7, !srcloc !118
  %170 = ptrtoint ptr %disp.i52 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %disp.i52, align 4
  %172 = ptrtoint ptr %drm_fmt.i39 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %drm_fmt.i39, align 4
  %is_yuv.i.i = getelementptr inbounds %struct.drm_format_info, ptr %173, i32 0, i32 9
  %174 = ptrtoint ptr %is_yuv.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %is_yuv.i.i, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i.i59 = icmp eq i8 %175, 0
  %cond.i.i60 = select i1 %tobool.not.i.i59, i32 2, i32 0
  %hsub.i.i = getelementptr inbounds %struct.drm_format_info, ptr %173, i32 0, i32 6
  %176 = ptrtoint ptr %hsub.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %hsub.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %177)
  %cmp.i.i = icmp ugt i8 %177, 1
  %cond3.i.i = zext i1 %cmp.i.i to i32
  %or.i6.i = or i32 %cond.i.i60, %cond3.i.i
  %178 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %id.i, align 8
  %mul.i.i = shl i32 %179, 2
  %add.i.i = add i32 %mul.i.i, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void @arm_heavy_mb() #7
  %180 = shl nuw nsw i32 %or.i6.i, 24
  %blend.i.i.i = getelementptr inbounds %struct.zynqmp_disp, ptr %171, i32 0, i32 4
  %181 = ptrtoint ptr %blend.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %blend.i.i.i, align 8
  %add.ptr.i.i7.i = getelementptr i8, ptr %182, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 %180) #7, !srcloc !118
  %183 = ptrtoint ptr %drm_fmt.i39 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %drm_fmt.i39, align 4
  %is_yuv5.i.i = getelementptr inbounds %struct.drm_format_info, ptr %184, i32 0, i32 9
  %185 = ptrtoint ptr %is_yuv5.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %is_yuv5.i.i, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool6.not.i.i = icmp eq i8 %186, 0
  %csc_zero_offsets.csc_sdtv_to_rgb_offsets.i.i = select i1 %tobool6.not.i.i, ptr @csc_zero_offsets, ptr @csc_sdtv_to_rgb_offsets
  %csc_identity_matrix.csc_sdtv_to_rgb_matrix.i.i = select i1 %tobool6.not.i.i, ptr @csc_identity_matrix, ptr @csc_sdtv_to_rgb_matrix
  call fastcc void @zynqmp_disp_blend_layer_set_csc(ptr noundef %171, ptr noundef %plane, ptr noundef nonnull %csc_identity_matrix.csc_sdtv_to_rgb_matrix.i.i, ptr noundef nonnull %csc_zero_offsets.csc_sdtv_to_rgb_offsets.i.i) #7
  %mode.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 7
  %187 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %mode.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_disp_plane_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @zynqmp_disp_layer_disable(ptr noundef %plane)
  %id.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %disp = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %plane, i32 0, i32 2
  %10 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disp, align 4
  %state4 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %12 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state4, align 4
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %alpha, align 4
  %16 = lshr i16 %15, 7
  %17 = and i16 %16, 510
  %shl.i = zext i16 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  %blend.i.i = getelementptr inbounds %struct.zynqmp_disp, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #7, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_disp_layer_disable(ptr nocapture noundef readonly %layer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drm_fmt = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %layer, i32 0, i32 6
  %0 = ptrtoint ptr %drm_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm_fmt, align 4
  %num_planes11 = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_planes11 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp13.not = icmp eq i8 %3, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %dmaengine_terminate_sync.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %dmaengine_terminate_sync.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.zynqmp_disp_layer, ptr %layer, i32 0, i32 4, i32 %i.014
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %for.body.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

for.body.dmaengine_terminate_sync.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %for.body
  %call.i.i = tail call i32 %9(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 1169) #7
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %13, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %13(ptr noundef %5) #7
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %for.body.dmaengine_terminate_sync.exit_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %14 = ptrtoint ptr %drm_fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drm_fmt, align 4
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %dmaengine_terminate_sync.exit.for.body_crit_edge, label %dmaengine_terminate_sync.exit.for.end_crit_edge

dmaengine_terminate_sync.exit.for.end_crit_edge:  ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

dmaengine_terminate_sync.exit.for.body_crit_edge: ; preds = %dmaengine_terminate_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %dmaengine_terminate_sync.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %disp = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %layer, i32 0, i32 2
  %18 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disp, align 4
  %avbuf.i.i = getelementptr inbounds %struct.zynqmp_disp, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %avbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %avbuf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 112
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !115
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %id.i.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %layer, i32 0, i32 1
  %24 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp eq i32 %25, 0
  %or.i = or i32 %23, 3
  %and2.i = and i32 %23, -13
  %val.0.i = select i1 %cmp.i.i, i32 %or.i, i32 %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  %27 = ptrtoint ptr %avbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %avbuf.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %28, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %26) #7, !srcloc !118
  %29 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %disp, align 4
  %31 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i.i, align 8
  %mul.i = shl i32 %32, 2
  %add.i = add i32 %mul.i, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %blend.i.i = getelementptr inbounds %struct.zynqmp_disp, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i.i10 = getelementptr i8, ptr %34, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10, i32 0) #7, !srcloc !118
  tail call fastcc void @zynqmp_disp_blend_layer_set_csc(ptr noundef %30, ptr noundef %layer, ptr noundef nonnull @csc_zero_matrix, ptr noundef nonnull @csc_zero_offsets) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_disp_blend_layer_set_csc(ptr nocapture noundef readonly %disp, ptr nocapture noundef readonly %layer, ptr nocapture noundef readonly %coeffs, ptr nocapture noundef readonly %offsets) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disp_fmt = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %layer, i32 0, i32 5
  %0 = ptrtoint ptr %disp_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp_fmt, align 8
  %swap1 = getelementptr inbounds %struct.zynqmp_disp_format, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %swap1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %swap1, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drm_fmt = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %layer, i32 0, i32 6
  %4 = ptrtoint ptr %drm_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm_fmt, align 4
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_yuv, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %not.tobool2.not = xor i1 %tobool2.not, true
  %. = zext i1 %not.tobool2.not to i32
  %.58 = select i1 %tobool2.not, i32 1, i32 2
  %.59 = select i1 %tobool2.not, i32 2, i32 0
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %swap.sroa.7.0 = phi i32 [ 2, %entry.if.end7_crit_edge ], [ %., %if.then ]
  %swap.sroa.5.0 = phi i32 [ 1, %entry.if.end7_crit_edge ], [ %.58, %if.then ]
  %swap.sroa.0.0 = phi i32 [ 0, %entry.if.end7_crit_edge ], [ %.59, %if.then ]
  %id.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %layer, i32 0, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %.60 = select i1 %cmp.i, i32 68, i32 128
  %blend.i = getelementptr inbounds %struct.zynqmp_disp, ptr %disp, i32 0, i32 4
  %arrayidx13 = getelementptr i16, ptr %coeffs, i32 %swap.sroa.0.0
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx13, align 2
  %conv = zext i16 %11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %13 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %blend.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 %.60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #7, !srcloc !118
  %add14 = add nuw nsw i32 %.60, 4
  %arrayidx17 = getelementptr i16, ptr %coeffs, i32 %swap.sroa.5.0
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv18) #7
  %18 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %blend.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %19, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %17) #7, !srcloc !118
  %add19 = or i32 %.60, 8
  %arrayidx22 = getelementptr i16, ptr %coeffs, i32 %swap.sroa.7.0
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv23) #7
  %23 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %blend.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %24, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %22) #7, !srcloc !118
  %add25 = add nuw nsw i32 %.60, 12
  %add12.1 = add nuw nsw i32 %swap.sroa.0.0, 3
  %arrayidx13.1 = getelementptr i16, ptr %coeffs, i32 %add12.1
  %25 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx13.1, align 2
  %conv.1 = zext i16 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv.1) #7
  %28 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %blend.i, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %29, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %27) #7, !srcloc !118
  %add14.1 = or i32 %.60, 16
  %add16.1 = add nuw nsw i32 %swap.sroa.5.0, 3
  %arrayidx17.1 = getelementptr i16, ptr %coeffs, i32 %add16.1
  %30 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx17.1, align 2
  %conv18.1 = zext i16 %31 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv18.1) #7
  %33 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %blend.i, align 8
  %add.ptr.i63.1 = getelementptr i8, ptr %34, i32 %add14.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.1, i32 %32) #7, !srcloc !118
  %add19.1 = add nuw nsw i32 %.60, 20
  %add21.1 = add nuw nsw i32 %swap.sroa.7.0, 3
  %arrayidx22.1 = getelementptr i16, ptr %coeffs, i32 %add21.1
  %35 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx22.1, align 2
  %conv23.1 = zext i16 %36 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv23.1) #7
  %38 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %blend.i, align 8
  %add.ptr.i65.1 = getelementptr i8, ptr %39, i32 %add19.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.1, i32 %37) #7, !srcloc !118
  %add25.1 = or i32 %.60, 24
  %add12.2 = add nuw nsw i32 %swap.sroa.0.0, 6
  %arrayidx13.2 = getelementptr i16, ptr %coeffs, i32 %add12.2
  %40 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx13.2, align 2
  %conv.2 = zext i16 %41 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %conv.2) #7
  %43 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %blend.i, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %44, i32 %add25.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %42) #7, !srcloc !118
  %add14.2 = add nuw nsw i32 %.60, 28
  %add16.2 = add nuw nsw i32 %swap.sroa.5.0, 6
  %arrayidx17.2 = getelementptr i16, ptr %coeffs, i32 %add16.2
  %45 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx17.2, align 2
  %conv18.2 = zext i16 %46 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv18.2) #7
  %48 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %blend.i, align 8
  %add.ptr.i63.2 = getelementptr i8, ptr %49, i32 %add14.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.2, i32 %47) #7, !srcloc !118
  %add19.2 = or i32 %.60, 32
  %add21.2 = add nuw nsw i32 %swap.sroa.7.0, 6
  %arrayidx22.2 = getelementptr i16, ptr %coeffs, i32 %add21.2
  %50 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx22.2, align 2
  %conv23.2 = zext i16 %51 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %conv23.2) #7
  %53 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %blend.i, align 8
  %add.ptr.i65.2 = getelementptr i8, ptr %54, i32 %add19.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.2, i32 %52) #7, !srcloc !118
  %55 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i67 = icmp eq i32 %56, 0
  %.61 = select i1 %cmp.i67, i32 104, i32 164
  %57 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offsets, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  %60 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %blend.i, align 8
  %add.ptr.i69 = getelementptr i8, ptr %61, i32 %.61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %59) #7, !srcloc !118
  %add34.1 = add nuw nsw i32 %.61, 4
  %arrayidx35.1 = getelementptr i32, ptr %offsets, i32 1
  %62 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx35.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  %65 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %blend.i, align 8
  %add.ptr.i69.1 = getelementptr i8, ptr %66, i32 %add34.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.1, i32 %64) #7, !srcloc !118
  %add34.2 = add nuw nsw i32 %.61, 8
  %arrayidx35.2 = getelementptr i32, ptr %offsets, i32 2
  %67 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx35.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  %70 = ptrtoint ptr %blend.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %blend.i, align 8
  %add.ptr.i69.2 = getelementptr i8, ptr %71, i32 %add34.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.2, i32 %69) #7, !srcloc !118
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

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
define internal i32 @zynqmp_disp_crtc_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dpsub = getelementptr i8, ptr %crtc, i32 -8
  %0 = ptrtoint ptr %dpsub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpsub, align 8
  %dp = getelementptr inbounds %struct.zynqmp_dpsub, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp, align 4
  tail call void @zynqmp_dp_enable_vblank(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_disp_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dpsub = getelementptr i8, ptr %crtc, i32 -8
  %0 = ptrtoint ptr %dpsub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpsub, align 8
  %dp = getelementptr inbounds %struct.zynqmp_dpsub, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp, align 4
  tail call void @zynqmp_dp_disable_vblank(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynqmp_dp_enable_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynqmp_dp_disable_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_disp_crtc_atomic_check(ptr noundef %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %state, ptr noundef %crtc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_disp_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_disp_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %event, align 4
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i, align 4
  %pipe = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pipe, align 4
  %call7 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end, !prof !121

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1538, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #7
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef nonnull %3) #7
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %event_lock29 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock29) #7
  br label %if.end30

if.end30:                                         ; preds = %if.end, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_disp_crtc_atomic_enable(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -16
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %adjusted_mode2 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  tail call fastcc void @zynqmp_disp_crtc_setup_clock(ptr noundef %crtc, ptr noundef %adjusted_mode2)
  %pclk = getelementptr i8, ptr %crtc, i32 2396
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call.i26 = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13) #10
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %call.i27 = tail call i32 @__pm_runtime_idle(ptr noundef %9, i32 noundef 4) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %blend.i.i = getelementptr i8, ptr %crtc, i32 992
  %10 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 1048576) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i2.1.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.1.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i2.2.i = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.2.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i2.3.i = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.3.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i2.4.i = getelementptr i8, ptr %21, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.4.i, i32 1048576) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i2.5.i = getelementptr i8, ptr %23, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.5.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i2.6.i = getelementptr i8, ptr %25, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.6.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i2.7.i = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.7.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i2.8.i = getelementptr i8, ptr %29, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.8.i, i32 1048576) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %31, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i4.1.i = getelementptr i8, ptr %33, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.1.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i4.2.i = getelementptr i8, ptr %35, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.2.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %blend.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i.i29 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %blend.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %blend.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %avbuf.i.i.i = getelementptr i8, ptr %crtc, i32 996
  %42 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !118
  %pclk_from_ps.i = getelementptr i8, ptr %crtc, i32 2400
  %44 = ptrtoint ptr %pclk_from_ps.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pclk_from_ps.i, align 8, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i30 = icmp eq i8 %45, 0
  %clk_from_ps.i = getelementptr i8, ptr %crtc, i32 1008
  %46 = ptrtoint ptr %clk_from_ps.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %clk_from_ps.i, align 8, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool1.not.i = icmp eq i8 %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %48 = select i1 %tobool.not.i30, i32 0, i32 16777216
  %49 = or i32 %48, 33554432
  %or9.i.i = select i1 %tobool1.not.i, i32 %48, i32 %49
  %50 = or i32 %or9.i.i, 67108864
  %51 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %52, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i, i32 %50) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.i11.i = getelementptr i8, ptr %54, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11.i, i32 1023410176) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %56, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 1023410176) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i, i32 1023410176) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %60, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i.i, i32 1023410176) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 218103808) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %63 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i17.1.i.i = getelementptr i8, ptr %64, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.1.i.i, i32 218103808) #7, !srcloc !118
  %65 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %66, i32 112
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %68 = and i32 %67, -1879048193
  %69 = or i32 %68, 1342177280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %71, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %69) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %audio.i.i.i = getelementptr i8, ptr %crtc, i32 1000
  %72 = ptrtoint ptr %audio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %audio.i.i.i, align 8
  %add.ptr.i.i14.i = getelementptr i8, ptr %73, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %74 = ptrtoint ptr %audio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %audio.i.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 2097184) #7, !srcloc !118
  %76 = ptrtoint ptr %adjusted_mode2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %adjusted_mode2, align 4
  %mul = mul i32 %77, 1000
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 9
  %78 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %vtotal, align 4
  %conv = zext i16 %79 to i32
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 4
  %80 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %htotal, align 2
  %conv9 = zext i16 %81 to i32
  %mul10 = mul nuw i32 %conv9, %conv
  %div = sdiv i32 %mul, %mul10
  %div11 = sdiv i32 3000, %div
  tail call void @msleep(i32 noundef %div11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_disp_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %3, i32 %5, i32 2
  %6 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_state.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  tail call fastcc void @zynqmp_disp_layer_disable(ptr noundef %1) #7
  %id.i.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 1
  br i1 %cmp.i.i, label %if.then3.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %disp.i = getelementptr inbounds %struct.zynqmp_disp_layer, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %disp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disp.i, align 4
  %state4.i = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %state4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state4.i, align 4
  %alpha.i = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %alpha.i, align 4
  %18 = lshr i16 %17, 7
  %19 = and i16 %18, 510
  %shl.i.i = zext i16 %19 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #7
  %blend.i.i.i = getelementptr inbounds %struct.zynqmp_disp, ptr %13, i32 0, i32 4
  %21 = ptrtoint ptr %blend.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %blend.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %20) #7, !srcloc !118
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %audio.i.i.i = getelementptr i8, ptr %crtc, i32 1000
  %23 = ptrtoint ptr %audio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %audio.i.i.i, align 8
  %add.ptr.i.i.i28 = getelementptr i8, ptr %24, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i28, i32 16777216) #7, !srcloc !118
  %avbuf.i.i.i = getelementptr i8, ptr %crtc, i32 996
  %25 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %26, i32 112
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %28 = and i32 %27, -1879048193
  %29 = or i32 %28, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %31, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %29) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6.i, i32 33554432) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 33554432) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i.i, i32 33554432) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %39, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i.i, i32 33554432) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.4.i.i = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4.i.i, i32 33554432) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.5.i.i = getelementptr i8, ptr %43, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5.i.i, i32 33554432) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %avbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %avbuf.i.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %45, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 33554432) #7, !srcloc !118
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #7
  %46 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #7
  %state4 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %48 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %state4, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %event, align 4
  %tobool5.not = icmp eq ptr %51, null
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %51) #7
  %52 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %state4, align 4
  %event10 = getelementptr inbounds %struct.drm_crtc_state, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %event10 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %event10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -16
  %55 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %crtc, align 8
  %event_lock13 = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock13) #7
  %pclk = getelementptr i8, ptr %crtc, i32 2396
  %57 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %58) #7
  tail call void @clk_unprepare(ptr noundef %58) #7
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %60, i32 noundef 4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_disp_crtc_setup_clock(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %adjusted_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -16
  %0 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %1, 1000
  %pclk = getelementptr i8, ptr %crtc, i32 2396
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  %call1 = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef %mul) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %7) #7
  %sub = sub i32 %call3, %mul
  %8 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %div = udiv i32 %mul, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %div)
  %cmp5 = icmp ugt i32 %8, %div
  br i1 %cmp5, label %do.end9, label %do.body11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.18, i32 noundef %mul, i32 noundef %call3) #10
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_disp_crtc_setup_clock.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zynqmp_disp_crtc_setup_clock, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !123

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_disp_crtc_setup_clock.__UNIQUE_ID_ddebug309, ptr noundef %12, ptr noundef nonnull @.str.18, i32 noundef %mul, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body11, %do.end9, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1648, i32 59}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1653, i32 59}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1658, i32 59}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1664, i32 39}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1672, i32 40}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1674, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @zynqmp_disp_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @zynqmp_disp_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @zynqmp_disp_plane_funcs, !19, !"zynqmp_disp_plane_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1218, i32 37}
!20 = !{ptr @zynqmp_disp_plane_helper_funcs, !21, !"zynqmp_disp_plane_helper_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1212, i32 44}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!24 = !{ptr @csc_zero_matrix, !25, !"csc_zero_matrix", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 657, i32 18}
!26 = !{ptr @csc_zero_offsets, !27, !"csc_zero_offsets", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 669, i32 18}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1119, i32 4}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @zynqmp_disp_layer_update._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @zynqmp_disp_layer_update._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @csc_sdtv_to_rgb_matrix, !34, !"csc_sdtv_to_rgb_matrix", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 683, i32 18}
!35 = !{ptr @csc_sdtv_to_rgb_offsets, !36, !"csc_sdtv_to_rgb_offsets", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 689, i32 18}
!37 = !{ptr @csc_identity_matrix, !38, !"csc_identity_matrix", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 663, i32 18}
!39 = !{ptr @zynqmp_disp_crtc_funcs, !40, !"zynqmp_disp_crtc_funcs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1570, i32 36}
!41 = !{ptr @zynqmp_disp_crtc_helper_funcs, !42, !"zynqmp_disp_crtc_helper_funcs", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1546, i32 43}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1465, i32 3}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @zynqmp_disp_crtc_atomic_enable._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @zynqmp_disp_crtc_atomic_enable._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1433, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @zynqmp_disp_crtc_setup_clock._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @zynqmp_disp_crtc_setup_clock._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1440, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @zynqmp_disp_crtc_setup_clock._entry.17, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @zynqmp_disp_crtc_setup_clock._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1444, i32 3}
!60 = !{ptr @zynqmp_disp_crtc_setup_clock.__UNIQUE_ID_ddebug309, !59, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!61 = distinct !{null, !62, !"blend_output_fmts", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 703, i32 28}
!63 = distinct !{null, !64, !"csc_rgb_to_sdtv_matrix", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 673, i32 18}
!65 = distinct !{null, !66, !"csc_rgb_to_sdtv_offsets", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 679, i32 18}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 908, i32 44}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 915, i32 44}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 921, i32 2}
!73 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @zynqmp_disp_audio_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @zynqmp_disp_audio_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @zynqmp_disp_create_layers.layer_info, !77, !"layer_info", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1349, i32 45}
!78 = !{ptr @avbuf_vid_fmts, !79, !"avbuf_vid_fmts", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 240, i32 40}
!80 = !{ptr @scaling_factors_888, !81, !"scaling_factors_888", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 227, i32 18}
!82 = !{ptr @scaling_factors_101010, !83, !"scaling_factors_101010", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 233, i32 18}
!84 = !{ptr @avbuf_gfx_fmts, !85, !"avbuf_gfx_fmts", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 345, i32 40}
!86 = !{ptr @scaling_factors_555, !87, !"scaling_factors_555", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 215, i32 18}
!88 = !{ptr @scaling_factors_444, !89, !"scaling_factors_444", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 209, i32 18}
!90 = !{ptr @scaling_factors_565, !91, !"scaling_factors_565", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 221, i32 18}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1319, i32 44}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1319, i32 51}
!96 = !{ptr @zynqmp_disp_layer_request_dma.dma_names, !97, !"dma_names", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1319, i32 28}
!98 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1328, i32 5}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/xlnx/zynqmp_disp.c", i32 1331, i32 4}
!102 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @zynqmp_disp_layer_request_dma._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @zynqmp_disp_layer_request_dma._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i64 6955779}
!116 = !{i64 2156815548}
!117 = !{i64 2156815767}
!118 = !{i64 6955361}
!119 = !{i64 2156817267}
!120 = !{i8 0, i8 2}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2156818244}
!123 = !{i64 2149119397, i64 2149119402, i64 2149119415, i64 2149119459, i64 2149119493, i64 2149119514}
