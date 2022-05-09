; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/d71/d71_component.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.komeda_pipeline_funcs = type { ptr, ptr }
%struct.komeda_component_funcs = type { ptr, ptr, ptr, ptr }
%struct.d71_dev = type { ptr, i32, i32, i32, i32, i32, i8, ptr, [4 x ptr], ptr, [2 x ptr] }
%struct.d71_pipeline = type { %struct.komeda_pipeline, ptr, ptr, ptr, ptr }
%struct.komeda_pipeline = type { %struct.drm_private_obj, ptr, ptr, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.block_header = type { i32, i32, [9 x i32], [5 x i32] }
%struct.komeda_layer = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range, i32, i32, i32, i32, ptr }
%struct.komeda_component = type { %struct.drm_private_obj, ptr, [32 x i8], ptr, i32, i32, i8, i8, i32, i32, ptr }
%struct.malidp_range = type { i32, i32 }
%struct.komeda_compiz = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range }
%struct.komeda_scaler = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range, i32, i32, i8, i8 }
%struct.komeda_splitter = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range }
%struct.komeda_merger = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range }
%struct.komeda_improc = type { %struct.komeda_component, i32, i32, i8 }
%struct.komeda_timing_ctrlr = type { %struct.komeda_component, i8 }
%struct.komeda_data_flow_cfg = type { %struct.komeda_component_output, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i8, i8, i8 }
%struct.komeda_component_output = type { ptr, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.komeda_dev = type { ptr, ptr, %struct.komeda_chip_info, %struct.komeda_format_caps_table, ptr, i32, %struct.mutex, i32, i32, [2 x ptr], ptr, ptr, ptr, ptr, i16 }
%struct.komeda_chip_info = type { i32, i32, i32, i32 }
%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.komeda_component_state = type { %struct.drm_private_state, ptr, %union.anon.86, i16, i16, i16, [5 x %struct.komeda_component_output] }
%struct.drm_private_state = type { ptr }
%union.anon.86 = type { ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.komeda_layer_state = type { %struct.komeda_component_state, i16, i16, i32, i16, i16, i16, i16, [3 x i32] }
%struct.komeda_fb = type { %struct.drm_framebuffer, ptr, i8, i32, i32, i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.komeda_format_caps = type { i32, i32, i32, i32, i32, i64 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }
%struct.komeda_compiz_state = type { %struct.komeda_component_state, i16, i16, [5 x %struct.komeda_compiz_input_cfg] }
%struct.komeda_compiz_input_cfg = type { i16, i16, i16, i16, i8, i8 }
%struct.komeda_scaler_state = type { %struct.komeda_component_state, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8 }
%struct.komeda_splitter_state = type { %struct.komeda_component_state, i16, i16, i16 }
%struct.komeda_merger_state = type { %struct.komeda_component_state, i16, i16 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.komeda_improc_state = type { %struct.komeda_component_state, i8, i8, i16, i16, [65 x i32], [9 x i32] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unknown block (block_info: 0x%x) is found\0A\00", [53 x i8] zeroinitializer }, align 32
@d71_pipeline_funcs = dso_local constant { %struct.komeda_pipeline_funcs, [24 x i8] } { %struct.komeda_pipeline_funcs { ptr @d71_downscaling_clk_check, ptr @d71_pipeline_dump }, [24 x i8] zeroinitializer }, align 32
@d71_layer_funcs = internal constant { %struct.komeda_component_funcs, [16 x i8] } { %struct.komeda_component_funcs { ptr @d71_layer_validate, ptr @d71_layer_update, ptr @d71_layer_disable, ptr @d71_layer_dump }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LPU%d_LAYER%d\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to add layer component\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"afbc request line_sz: %d exceed the max afbc line_sz: %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"YUV420_10BIT input_hsize: %d exceed the max size 2046.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"X0L2 input_hsize: %d exceed the max size 2046.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LR_\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LS_\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sLAYER_INFO:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%sCONTROL:\09\090x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LR_RICH_CONTROL:\090x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%sFORMAT:\09\090x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%sIT_COEFFTAB:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%sIN_SIZE:\09\090x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%sPALPHA:\09\090x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sP0_PTR_LOW:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%sP0_PTR_HIGH:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%sP0_STRIDE:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sP1_PTR_LOW:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%sP1_PTR_HIGH:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LR_P1_STRIDE:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LR_P2_PTR_LOW:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LR_P2_PTR_HIGH:\09\090x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LR_YUV_RGB_COEFF%u:\090x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LS_RGB_RGB_COEFF%u:\090x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sAD_CONTROL:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%sAD_H_CROP:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%sAD_V_CROP:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BLOCK_INFO:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PIPELINE_INFO:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VALID_INPUT_ID%u:\090x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUTPUT_ID%u:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@d71_wb_layer_funcs = internal constant { %struct.komeda_component_funcs, [16 x i8] } { %struct.komeda_component_funcs { ptr null, ptr @d71_wb_layer_update, ptr @d71_wb_layer_disable, ptr @d71_wb_layer_dump }, [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LPU%d_LAYER_WR\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to add wb_layer component\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LW_INPUT_ID0:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LW_CONTROL:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LW_PROG_LINE:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LW_FORMAT:\09\090x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LW_IN_SIZE:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LW_P%u_PTR_LOW:\09\090x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LW_P%u_PTR_HIGH:\09\090x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LW_P%u_STRIDE:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LW_RGB_YUV_COEFF%u:\090x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@d71_compiz_funcs = internal constant { %struct.komeda_component_funcs, [16 x i8] } { %struct.komeda_component_funcs { ptr null, ptr @d71_compiz_update, ptr @d71_component_disable, ptr @d71_compiz_dump }, [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CU%d\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CU_INPUT_ID%u:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CU_IRQ_RAW_STATUS:\090x%X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CU_IRQ_CLEAR:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CU_IRQ_MASK:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CU_IRQ_STATUS:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CU_STATUS:\09\090x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CU_CONTROL:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CU_SIZE:\09\090x%X\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CU_BG_COLOR:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CU_INPUT%u_SIZE:\09\090x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CU_INPUT%u_OFFSET:\090x%X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CU_INPUT%u_CONTROL:\090x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CU_USER_LOW:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CU_USER_HIGH:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@d71_scaler_funcs = internal constant { %struct.komeda_component_funcs, [16 x i8] } { %struct.komeda_component_funcs { ptr null, ptr @d71_scaler_update, ptr @d71_component_disable, ptr @d71_scaler_dump }, [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CU%d_SCALER%d\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to initialize scaler\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SC_INPUT_ID0:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SC_CONTROL:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SC_COEFFTAB:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SC_IN_SIZE:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SC_OUT_SIZE:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SC_H_CROP:\09\090x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SC_V_CROP:\09\090x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SC_H_INIT_PH:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_H_DELTA_PH:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SC_V_INIT_PH:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_V_DELTA_PH:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_ENH_LIMITS:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_ENH_COEFF0:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_ENH_COEFF1:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_ENH_COEFF2:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_ENH_COEFF3:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_ENH_COEFF4:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_ENH_COEFF5:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_ENH_COEFF6:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_ENH_COEFF7:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SC_ENH_COEFF8:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@d71_splitter_funcs = internal constant { %struct.komeda_component_funcs, [16 x i8] } { %struct.komeda_component_funcs { ptr null, ptr @d71_splitter_update, ptr @d71_component_disable, ptr @d71_splitter_dump }, [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CU%d_SPLITTER\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to initialize splitter\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SP_INPUT_ID0:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SP_CONTROL:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SP_SIZE:\09\090x%X\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SP_OVERLAP_SIZE:\090x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@d71_merger_funcs = internal constant { %struct.komeda_component_funcs, [16 x i8] } { %struct.komeda_component_funcs { ptr null, ptr @d71_merger_update, ptr @d71_component_disable, ptr @d71_merger_dump }, [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CU%d_MERGER\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to initialize merger.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MG_INPUT_ID0:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MG_INPUT_ID1:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MG_CONTROL:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MG_SIZE:\09\090x%X\0A\00", [16 x i8] zeroinitializer }, align 32
@d71_improc_funcs = internal constant { %struct.komeda_component_funcs, [16 x i8] } { %struct.komeda_component_funcs { ptr null, ptr @d71_improc_update, ptr @d71_component_disable, ptr @d71_improc_dump }, [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DOU%d_IPS\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add improc component\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IPS_INPUT_ID0:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IPS_INPUT_ID1:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IPS_INFO:\09\090x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IPS_CONTROL:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IPS_SIZE:\09\090x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IPS_DEPTH:\09\090x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IPS_RGB_RGB_COEFF%u:\090x%X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IPS_RGB_YUV_COEFF%u:\090x%X\0A\00", [37 x i8] zeroinitializer }, align 32
@d71_timing_ctrlr_funcs = internal constant { %struct.komeda_component_funcs, [16 x i8] } { %struct.komeda_component_funcs { ptr null, ptr @d71_timing_ctrlr_update, ptr @d71_timing_ctrlr_disable, ptr @d71_timing_ctrlr_dump }, [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DOU%d_BS\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to add display_ctrl component\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BS_INFO:\09\090x%X\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BS_CONTROL:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BS_PROG_LINE:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BS_PREFETCH_LINE:\090x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BS_BG_COLOR:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BS_ACTIVESIZE:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BS_HINTERVALS:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BS_VINTERVALS:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BS_SYNC:\09\090x%X\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BS_DRIFT_TO:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BS_FRAME_TO:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BS_TE_TO:\09\090x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BS_T%u_INTERVAL:\09\090x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BS_CRC%u_LOW:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BS_CRC%u_HIGH:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BS_USER:\09\090x%X\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A------ LPU%d ------\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LPU_IRQ_RAW_STATUS:\090x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LPU_IRQ_CLEAR:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LPU_IRQ_MASK:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LPU_IRQ_STATUS:\09\090x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LPU_STATUS:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LPU_TBU_STATUS:\09\090x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LPU_INFO:\09\090x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LPU_RAXI_CONTROL:\090x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LPU_WAXI_CONTROL:\090x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LPU_TBU_CONTROL:\090x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0A------ DOU%d ------\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DOU_IRQ_RAW_STATUS:\090x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DOU_IRQ_CLEAR:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DOU_IRQ_MASK:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DOU_IRQ_STATUS:\09\090x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DOU_STATUS:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\0A------ GCU ------\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GLB_ARCH_ID:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GLB_CORE_ID:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GLB_CORE_INFO:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GLB_IRQ_STATUS:\09\090x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GCU_IRQ_RAW_STATUS:\090x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GCU_IRQ_CLEAR:\09\090x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GCU_IRQ_MASK:\09\090x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GCU_IRQ_STATUS:\09\090x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GCU_STATUS:\09\090x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GCU_CONTROL:\09\090x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GCU_CONFIG_VALID0:\090x%X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GCU_CONFIG_VALID1:\090x%X\0A\00", [39 x i8] zeroinitializer }, align 32
@switch.table.d71_layer_update = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 256, i32 0, i32 512, i32 0, i32 0, i32 0, i32 768], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 16, i64 17, i64 32, i64 33, i64 34, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.151 = internal global [10 x i64] [i64 8, i64 8, i64 2, i64 3, i64 16, i64 17, i64 32, i64 33, i64 34, i64 48]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.153 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 8]
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1347, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c"d71_pipeline_funcs\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1432, i32 36 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"d71_layer_funcs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 400, i32 44 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 420, i32 14 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 422, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 379, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 386, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 392, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 295, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 298, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 305, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 308, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 311, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 314, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 315, i32 17 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 316, i32 17 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 317, i32 17 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 320, i32 17 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 321, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 322, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 325, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 326, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 329, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 332, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 333, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 337, i32 19 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 343, i32 19 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 347, i32 17 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 348, i32 17 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 349, i32 17 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 94, i32 17 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 95, i32 17 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 101, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 105, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant [19 x i8] c"d71_wb_layer_funcs\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 519, i32 44 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 538, i32 6 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 540, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 491, i32 17 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 494, i32 17 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 495, i32 17 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 496, i32 17 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 499, i32 17 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 503, i32 18 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 504, i32 18 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 505, i32 18 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 510, i32 18 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"d71_compiz_funcs\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 660, i32 44 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 681, i32 6 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 632, i32 18 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 635, i32 17 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 636, i32 17 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 637, i32 17 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 638, i32 17 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 639, i32 17 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 642, i32 17 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 643, i32 17 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 646, i32 17 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 650, i32 18 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 651, i32 18 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 652, i32 18 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 656, i32 17 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 657, i32 17 }
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"d71_scaler_funcs\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 829, i32 44 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 848, i32 6 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 852, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 800, i32 17 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 803, i32 17 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 806, i32 17 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 807, i32 17 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 808, i32 17 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 809, i32 17 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 810, i32 17 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 811, i32 17 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 812, i32 17 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 813, i32 17 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 814, i32 17 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 817, i32 17 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 818, i32 17 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 819, i32 17 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 820, i32 17 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 821, i32 17 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 822, i32 17 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 823, i32 17 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 824, i32 17 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 825, i32 17 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 826, i32 17 }
@___asan_gen_.412 = private unnamed_addr constant [19 x i8] c"d71_splitter_funcs\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 937, i32 44 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 957, i32 6 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 960, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 929, i32 17 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 932, i32 17 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 933, i32 17 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 934, i32 17 }
@___asan_gen_.433 = private unnamed_addr constant [17 x i8] c"d71_merger_funcs\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1007, i32 44 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1028, i32 6 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1031, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 995, i32 17 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 998, i32 17 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1001, i32 17 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1004, i32 17 }
@___asan_gen_.454 = private unnamed_addr constant [17 x i8] c"d71_improc_funcs\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1118, i32 44 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1138, i32 31 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1140, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1098, i32 17 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1099, i32 17 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1102, i32 17 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1105, i32 17 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1106, i32 17 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1107, i32 17 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1111, i32 18 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1115, i32 18 }
@___asan_gen_.487 = private unnamed_addr constant [23 x i8] c"d71_timing_ctrlr_funcs\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1245, i32 44 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1265, i32 30 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1267, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1216, i32 17 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1219, i32 17 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1220, i32 17 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1221, i32 17 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1222, i32 17 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1223, i32 17 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1224, i32 17 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1225, i32 17 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1226, i32 17 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1229, i32 17 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1230, i32 17 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1231, i32 17 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1235, i32 18 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1239, i32 18 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1240, i32 18 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1242, i32 17 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1387, i32 17 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1392, i32 17 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1393, i32 17 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1394, i32 17 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1395, i32 17 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1396, i32 17 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1397, i32 17 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1400, i32 17 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1403, i32 17 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1404, i32 17 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1405, i32 17 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1412, i32 17 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1417, i32 17 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1418, i32 17 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1419, i32 17 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1420, i32 17 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1421, i32 17 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1360, i32 15 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1363, i32 17 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1364, i32 17 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1365, i32 17 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1368, i32 17 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1371, i32 17 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1372, i32 17 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1373, i32 17 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1374, i32 17 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1375, i32 17 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1378, i32 17 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1379, i32 17 }
@___asan_gen_.631 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.632 = private constant [58 x i8] c"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.632, i32 1380, i32 17 }
@___asan_gen_.634 = private unnamed_addr constant [30 x i8] c"switch.table.d71_layer_update\00", align 1
@llvm.compiler.used = appending global [161 x ptr] [ptr @.str, ptr @d71_pipeline_funcs, ptr @d71_layer_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @d71_wb_layer_funcs, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @d71_compiz_funcs, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @d71_scaler_funcs, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @d71_splitter_funcs, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @d71_merger_funcs, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @d71_improc_funcs, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @d71_timing_ctrlr_funcs, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @switch.table.d71_layer_update], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_pipeline_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_layer_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_wb_layer_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_compiz_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_scaler_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_splitter_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_merger_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_improc_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d71_timing_ctrlr_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.d71_layer_update to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @d71_probe_block(ptr noundef %d71, ptr noundef readonly %blk, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  %pipe_id.i258 = alloca i32, align 4
  %comp_id.i259 = alloca i32, align 4
  %comp_id.i.i231 = alloca i32, align 4
  %pipe_id.i232 = alloca i32, align 4
  %comp_id.i233 = alloca i32, align 4
  %comp_id.i.i199 = alloca i32, align 4
  %pipe_id.i200 = alloca i32, align 4
  %comp_id.i201 = alloca i32, align 4
  %comp_id.i.i163 = alloca i32, align 4
  %pipe_id.i164 = alloca i32, align 4
  %comp_id.i165 = alloca i32, align 4
  %comp_id.i.i134 = alloca i32, align 4
  %pipe_id.i135 = alloca i32, align 4
  %comp_id.i136 = alloca i32, align 4
  %comp_id.i.i101 = alloca i32, align 4
  %pipe_id.i102 = alloca i32, align 4
  %comp_id.i = alloca i32, align 4
  %comp_id.i.i71 = alloca i32, align 4
  %pipe_id.i72 = alloca i32, align 4
  %layer_id.i73 = alloca i32, align 4
  %comp_id.i.i = alloca i32, align 4
  %pipe_id.i = alloca i32, align 4
  %layer_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blk, align 4
  %and = lshr i32 %1, 4
  %shr = and i32 %and, 15
  %and2 = lshr i32 %1, 8
  %trunc = trunc i32 %and2 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb
    i8 16, label %sw.bb4
    i8 17, label %sw.bb5
    i8 2, label %sw.bb7
    i8 33, label %sw.bb11
    i8 32, label %sw.bb13
    i8 34, label %sw.bb15
    i8 3, label %sw.bb17
    i8 48, label %sw.bb20
    i8 50, label %sw.bb22
    i8 49, label %sw.bb25
    i8 5, label %entry.sw.epilog_crit_edge267
    i8 6, label %sw.bb27
  ]

entry.sw.epilog_crit_edge267:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %shr
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %lpu_addr = getelementptr inbounds %struct.d71_pipeline, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %lpu_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %reg, ptr %lpu_addr, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_id.i) #6
  %6 = ptrtoint ptr %pipe_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %pipe_id.i, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %layer_id.i) #6
  %7 = ptrtoint ptr %layer_id.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %layer_id.i, align 4, !annotation !329
  call fastcc void @get_resources_id(i32 noundef %1, ptr noundef nonnull %pipe_id.i, ptr noundef nonnull %layer_id.i) #6
  %8 = ptrtoint ptr %pipe_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe_id.i, align 4
  %arrayidx.i = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %layer_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %layer_id.i, align 4
  %and.i = and i32 %1, 65520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i.i) #6
  %14 = ptrtoint ptr %comp_id.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %comp_id.i.i, align 4, !annotation !329
  %pipeline_info.i.i = getelementptr inbounds %struct.block_header, ptr %blk, i32 0, i32 1
  %15 = ptrtoint ptr %pipeline_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipeline_info.i.i, align 4
  %17 = and i32 %16, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp8.not.i.i, label %sw.bb4.get_valid_inputs.exit.i_crit_edge, label %sw.bb4.for.body.i.i_crit_edge

sw.bb4.for.body.i.i_crit_edge:                    ; preds = %sw.bb4
  br label %for.body.i.i

sw.bb4.get_valid_inputs.exit.i_crit_edge:         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb4.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb4.for.body.i.i_crit_edge ]
  %valid_inputs.09.i.i = phi i32 [ %valid_inputs.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb4.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.block_header, ptr %blk, i32 0, i32 2, i32 %i.010.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  call fastcc void @get_resources_id(i32 noundef %19, ptr noundef null, ptr noundef nonnull %comp_id.i.i) #6
  %20 = ptrtoint ptr %comp_id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %comp_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp1.i.i = icmp eq i32 %21, -1
  %shl.i.i = shl nuw i32 1, %21
  %or.i.i = select i1 %cmp1.i.i, i32 0, i32 %shl.i.i
  %valid_inputs.1.i.i = or i32 %or.i.i, %valid_inputs.09.i.i
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %22 = ptrtoint ptr %pipeline_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pipeline_info.i.i, align 4
  %and.i.i = lshr i32 %23, 8
  %shr.i.i = and i32 %and.i.i, 15
  %cmp.i.i = icmp ult i32 %inc.i.i, %shr.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.get_valid_inputs.exit.i_crit_edge

for.body.i.i.get_valid_inputs.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

get_valid_inputs.exit.i:                          ; preds = %for.body.i.i.get_valid_inputs.exit.i_crit_edge, %sw.bb4.get_valid_inputs.exit.i_crit_edge
  %valid_inputs.0.lcssa.i.i = phi i32 [ 0, %sw.bb4.get_valid_inputs.exit.i_crit_edge ], [ %valid_inputs.1.i.i, %for.body.i.i.get_valid_inputs.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i.i) #6
  %call2.i = call ptr (ptr, i32, i32, i32, ptr, i8, i32, i8, ptr, ptr, ...) @komeda_component_add(ptr noundef %11, i32 noundef 224, i32 noundef %13, i32 noundef %and.i, ptr noundef nonnull @d71_layer_funcs, i8 noundef zeroext 0, i32 noundef %valid_inputs.0.lcssa.i.i, i8 noundef zeroext 1, ptr noundef %reg, ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %13) #6
  %cmp.i73.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %get_valid_inputs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #6
  %24 = ptrtoint ptr %call2.i to i32
  br label %d71_layer_init.exit

if.end.i:                                         ; preds = %get_valid_inputs.exit.i
  %add.ptr.i.i = getelementptr i32, ptr %reg, i32 48
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  %26 = call i32 @llvm.bswap.i32(i32 %25) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %and6.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 2, i32 1
  %27 = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select.i, ptr %27, align 4
  %periph_addr.i = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 9
  %29 = ptrtoint ptr %periph_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %periph_addr.i, align 4
  %tobool10.not.i = icmp eq ptr %30, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i74.i = getelementptr i32, ptr %reg, i32 2
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i) #6, !srcloc !330
  %32 = call i32 @llvm.bswap.i32(i32 %31) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %line_sz.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 4
  %33 = ptrtoint ptr %line_sz.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %line_sz.i, align 4
  %shr.i = lshr i32 %26, 16
  br label %if.end35.i

if.else14.i:                                      ; preds = %if.end.i
  %max_line_size.i = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 4
  %34 = ptrtoint ptr %max_line_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_line_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %35)
  %cmp.i = icmp ugt i32 %35, 2048
  br i1 %cmp.i, label %if.then15.i, label %if.else20.i

if.then15.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  %line_sz17.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 4
  %36 = ptrtoint ptr %line_sz17.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %line_sz17.i, align 4
  %div72.i = lshr i32 %35, 1
  br label %if.end35.i

if.else20.i:                                      ; preds = %if.else14.i
  br i1 %tobool.not.i, label %if.else29.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl nuw nsw i32 %35, 1
  %line_sz25.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 4
  %37 = ptrtoint ptr %line_sz25.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul.i, ptr %line_sz25.i, align 4
  br label %if.end35.i

if.else29.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #8
  %line_sz31.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 4
  %38 = ptrtoint ptr %line_sz31.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %line_sz31.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else29.i, %if.then23.i, %if.then15.i, %if.then11.i
  %div72.sink.i = phi i32 [ %div72.i, %if.then15.i ], [ 0, %if.else29.i ], [ %35, %if.then23.i ], [ %shr.i, %if.then11.i ]
  %yuv_line_sz19.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 5
  %39 = ptrtoint ptr %yuv_line_sz19.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div72.sink.i, ptr %yuv_line_sz19.i, align 4
  %hsize_in.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 1
  %line_sz36.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 4
  %40 = ptrtoint ptr %line_sz36.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %line_sz36.i, align 4
  %42 = ptrtoint ptr %hsize_in.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %hsize_in.i, align 4
  %end2.i.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %end2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %end2.i.i, align 4
  %vsize_in.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 2
  %max_vsize.i = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 5
  %44 = ptrtoint ptr %max_vsize.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_vsize.i, align 4
  %46 = ptrtoint ptr %vsize_in.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %vsize_in.i, align 4
  %end2.i75.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %end2.i75.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %end2.i75.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  call void @arm_heavy_mb() #6
  %add.ptr.i76.i = getelementptr i32, ptr %reg, i32 57
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 5614335) #6, !srcloc !333
  %supported_rots.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i, i32 0, i32 6
  %48 = ptrtoint ptr %supported_rots.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 63, ptr %supported_rots.i, align 4
  br label %d71_layer_init.exit

d71_layer_init.exit:                              ; preds = %if.end35.i, %if.then.i
  %retval.0.i = phi i32 [ %24, %if.then.i ], [ 0, %if.end35.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %layer_id.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id.i) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_id.i72) #6
  %49 = ptrtoint ptr %pipe_id.i72 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %pipe_id.i72, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %layer_id.i73) #6
  %50 = ptrtoint ptr %layer_id.i73 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %layer_id.i73, align 4, !annotation !329
  call fastcc void @get_resources_id(i32 noundef %1, ptr noundef nonnull %pipe_id.i72, ptr noundef nonnull %layer_id.i73) #6
  %51 = ptrtoint ptr %pipe_id.i72 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pipe_id.i72, align 4
  %arrayidx.i74 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %52
  %53 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i74, align 4
  %55 = ptrtoint ptr %layer_id.i73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %layer_id.i73, align 4
  %and.i75 = and i32 %1, 65520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i.i71) #6
  %57 = ptrtoint ptr %comp_id.i.i71 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %comp_id.i.i71, align 4, !annotation !329
  %pipeline_info.i.i76 = getelementptr inbounds %struct.block_header, ptr %blk, i32 0, i32 1
  %58 = ptrtoint ptr %pipeline_info.i.i76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pipeline_info.i.i76, align 4
  %60 = and i32 %59, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp8.not.i.i77 = icmp eq i32 %60, 0
  br i1 %cmp8.not.i.i77, label %sw.bb5.get_valid_inputs.exit.i92_crit_edge, label %sw.bb5.for.body.i.i89_crit_edge

sw.bb5.for.body.i.i89_crit_edge:                  ; preds = %sw.bb5
  br label %for.body.i.i89

sw.bb5.get_valid_inputs.exit.i92_crit_edge:       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i92

for.body.i.i89:                                   ; preds = %for.body.i.i89.for.body.i.i89_crit_edge, %sw.bb5.for.body.i.i89_crit_edge
  %i.010.i.i78 = phi i32 [ %inc.i.i85, %for.body.i.i89.for.body.i.i89_crit_edge ], [ 0, %sw.bb5.for.body.i.i89_crit_edge ]
  %valid_inputs.09.i.i79 = phi i32 [ %valid_inputs.1.i.i84, %for.body.i.i89.for.body.i.i89_crit_edge ], [ 0, %sw.bb5.for.body.i.i89_crit_edge ]
  %arrayidx.i.i80 = getelementptr %struct.block_header, ptr %blk, i32 0, i32 2, i32 %i.010.i.i78
  %61 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i80, align 4
  call fastcc void @get_resources_id(i32 noundef %62, ptr noundef null, ptr noundef nonnull %comp_id.i.i71) #6
  %63 = ptrtoint ptr %comp_id.i.i71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %comp_id.i.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp1.i.i81 = icmp eq i32 %64, -1
  %shl.i.i82 = shl nuw i32 1, %64
  %or.i.i83 = select i1 %cmp1.i.i81, i32 0, i32 %shl.i.i82
  %valid_inputs.1.i.i84 = or i32 %or.i.i83, %valid_inputs.09.i.i79
  %inc.i.i85 = add nuw nsw i32 %i.010.i.i78, 1
  %65 = ptrtoint ptr %pipeline_info.i.i76 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pipeline_info.i.i76, align 4
  %and.i.i86 = lshr i32 %66, 8
  %shr.i.i87 = and i32 %and.i.i86, 15
  %cmp.i.i88 = icmp ult i32 %inc.i.i85, %shr.i.i87
  br i1 %cmp.i.i88, label %for.body.i.i89.for.body.i.i89_crit_edge, label %for.body.i.i89.get_valid_inputs.exit.i92_crit_edge

for.body.i.i89.get_valid_inputs.exit.i92_crit_edge: ; preds = %for.body.i.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i92

for.body.i.i89.for.body.i.i89_crit_edge:          ; preds = %for.body.i.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i89

get_valid_inputs.exit.i92:                        ; preds = %for.body.i.i89.get_valid_inputs.exit.i92_crit_edge, %sw.bb5.get_valid_inputs.exit.i92_crit_edge
  %valid_inputs.0.lcssa.i.i90 = phi i32 [ 0, %sw.bb5.get_valid_inputs.exit.i92_crit_edge ], [ %valid_inputs.1.i.i84, %for.body.i.i89.get_valid_inputs.exit.i92_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i.i71) #6
  %call2.i91 = call ptr (ptr, i32, i32, i32, ptr, i8, i32, i8, ptr, ptr, ...) @komeda_component_add(ptr noundef %54, i32 noundef 224, i32 noundef %56, i32 noundef %and.i75, ptr noundef nonnull @d71_wb_layer_funcs, i8 noundef zeroext 1, i32 noundef %valid_inputs.0.lcssa.i.i90, i8 noundef zeroext 0, ptr noundef %reg, ptr noundef nonnull @.str.32, i32 noundef %52) #6
  %cmp.i24.i = icmp ugt ptr %call2.i91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24.i, label %if.then.i93, label %if.end.i94

if.then.i93:                                      ; preds = %get_valid_inputs.exit.i92
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #6
  %67 = ptrtoint ptr %call2.i91 to i32
  br label %d71_wb_layer_init.exit

if.end.i94:                                       ; preds = %get_valid_inputs.exit.i92
  %layer_type.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i91, i32 0, i32 3
  %68 = ptrtoint ptr %layer_type.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %layer_type.i, align 4
  %max_line_size.i.i = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 4
  %69 = ptrtoint ptr %max_line_size.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_line_size.i.i, align 4
  %periph_addr.i.i.i = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 9
  %71 = ptrtoint ptr %periph_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %periph_addr.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i94.get_blk_line_size.exit.i_crit_edge

if.end.i94.get_blk_line_size.exit.i_crit_edge:    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_blk_line_size.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i.i = getelementptr i32, ptr %reg, i32 2
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !330
  %74 = call i32 @llvm.bswap.i32(i32 %73) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  br label %get_blk_line_size.exit.i

get_blk_line_size.exit.i:                         ; preds = %if.then.i.i.i, %if.end.i94.get_blk_line_size.exit.i_crit_edge
  %max_default.addr.0.i.i.i = phi i32 [ %70, %if.end.i94.get_blk_line_size.exit.i_crit_edge ], [ %74, %if.then.i.i.i ]
  %line_sz.i95 = getelementptr inbounds %struct.komeda_layer, ptr %call2.i91, i32 0, i32 4
  %75 = ptrtoint ptr %line_sz.i95 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %max_default.addr.0.i.i.i, ptr %line_sz.i95, align 4
  %yuv_line_sz.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i91, i32 0, i32 5
  %76 = ptrtoint ptr %yuv_line_sz.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %max_default.addr.0.i.i.i, ptr %yuv_line_sz.i, align 4
  %hsize_in.i96 = getelementptr inbounds %struct.komeda_layer, ptr %call2.i91, i32 0, i32 1
  %77 = ptrtoint ptr %hsize_in.i96 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 64, ptr %hsize_in.i96, align 4
  %end2.i.i97 = getelementptr inbounds %struct.komeda_layer, ptr %call2.i91, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %end2.i.i97 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %max_default.addr.0.i.i.i, ptr %end2.i.i97, align 4
  %vsize_in.i98 = getelementptr inbounds %struct.komeda_layer, ptr %call2.i91, i32 0, i32 2
  %max_vsize.i99 = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 5
  %79 = ptrtoint ptr %max_vsize.i99 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_vsize.i99, align 4
  %81 = ptrtoint ptr %vsize_in.i98 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 64, ptr %vsize_in.i98, align 4
  %end2.i25.i = getelementptr inbounds %struct.komeda_layer, ptr %call2.i91, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %end2.i25.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %80, ptr %end2.i25.i, align 4
  br label %d71_wb_layer_init.exit

d71_wb_layer_init.exit:                           ; preds = %get_blk_line_size.exit.i, %if.then.i93
  %retval.0.i100 = phi i32 [ %67, %if.then.i93 ], [ 0, %get_blk_line_size.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %layer_id.i73) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id.i72) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %arrayidx9 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %shr
  %83 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx9, align 4
  %cu_addr = getelementptr inbounds %struct.d71_pipeline, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %cu_addr to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %reg, ptr %cu_addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_id.i102) #6
  %86 = ptrtoint ptr %pipe_id.i102 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %pipe_id.i102, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i) #6
  %87 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %comp_id.i, align 4, !annotation !329
  %88 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %blk, align 4
  call fastcc void @get_resources_id(i32 noundef %89, ptr noundef nonnull %pipe_id.i102, ptr noundef nonnull %comp_id.i) #6
  %90 = ptrtoint ptr %pipe_id.i102 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pipe_id.i102, align 4
  %arrayidx.i103 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %91
  %92 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i103, align 4
  %94 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %comp_id.i, align 4
  %and.i104 = and i32 %89, 65520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i.i101) #6
  %96 = ptrtoint ptr %comp_id.i.i101 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %comp_id.i.i101, align 4, !annotation !329
  %pipeline_info.i.i105 = getelementptr inbounds %struct.block_header, ptr %blk, i32 0, i32 1
  %97 = ptrtoint ptr %pipeline_info.i.i105 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pipeline_info.i.i105, align 4
  %99 = and i32 %98, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp8.not.i.i106 = icmp eq i32 %99, 0
  br i1 %cmp8.not.i.i106, label %sw.bb7.get_valid_inputs.exit.i121_crit_edge, label %sw.bb7.for.body.i.i118_crit_edge

sw.bb7.for.body.i.i118_crit_edge:                 ; preds = %sw.bb7
  br label %for.body.i.i118

sw.bb7.get_valid_inputs.exit.i121_crit_edge:      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i121

for.body.i.i118:                                  ; preds = %for.body.i.i118.for.body.i.i118_crit_edge, %sw.bb7.for.body.i.i118_crit_edge
  %i.010.i.i107 = phi i32 [ %inc.i.i114, %for.body.i.i118.for.body.i.i118_crit_edge ], [ 0, %sw.bb7.for.body.i.i118_crit_edge ]
  %valid_inputs.09.i.i108 = phi i32 [ %valid_inputs.1.i.i113, %for.body.i.i118.for.body.i.i118_crit_edge ], [ 0, %sw.bb7.for.body.i.i118_crit_edge ]
  %arrayidx.i.i109 = getelementptr %struct.block_header, ptr %blk, i32 0, i32 2, i32 %i.010.i.i107
  %100 = ptrtoint ptr %arrayidx.i.i109 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i109, align 4
  call fastcc void @get_resources_id(i32 noundef %101, ptr noundef null, ptr noundef nonnull %comp_id.i.i101) #6
  %102 = ptrtoint ptr %comp_id.i.i101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %comp_id.i.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %cmp1.i.i110 = icmp eq i32 %103, -1
  %shl.i.i111 = shl nuw i32 1, %103
  %or.i.i112 = select i1 %cmp1.i.i110, i32 0, i32 %shl.i.i111
  %valid_inputs.1.i.i113 = or i32 %or.i.i112, %valid_inputs.09.i.i108
  %inc.i.i114 = add nuw nsw i32 %i.010.i.i107, 1
  %104 = ptrtoint ptr %pipeline_info.i.i105 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pipeline_info.i.i105, align 4
  %and.i.i115 = lshr i32 %105, 8
  %shr.i.i116 = and i32 %and.i.i115, 15
  %cmp.i.i117 = icmp ult i32 %inc.i.i114, %shr.i.i116
  br i1 %cmp.i.i117, label %for.body.i.i118.for.body.i.i118_crit_edge, label %for.body.i.i118.get_valid_inputs.exit.i121_crit_edge

for.body.i.i118.get_valid_inputs.exit.i121_crit_edge: ; preds = %for.body.i.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i121

for.body.i.i118.for.body.i.i118_crit_edge:        ; preds = %for.body.i.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i118

get_valid_inputs.exit.i121:                       ; preds = %for.body.i.i118.get_valid_inputs.exit.i121_crit_edge, %sw.bb7.get_valid_inputs.exit.i121_crit_edge
  %valid_inputs.0.lcssa.i.i119 = phi i32 [ 0, %sw.bb7.get_valid_inputs.exit.i121_crit_edge ], [ %valid_inputs.1.i.i113, %for.body.i.i118.get_valid_inputs.exit.i121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i.i101) #6
  %call2.i120 = call ptr (ptr, i32, i32, i32, ptr, i8, i32, i8, ptr, ptr, ...) @komeda_component_add(ptr noundef %93, i32 noundef 204, i32 noundef %95, i32 noundef %and.i104, ptr noundef nonnull @d71_compiz_funcs, i8 noundef zeroext 5, i32 noundef %valid_inputs.0.lcssa.i.i119, i8 noundef zeroext 1, ptr noundef %reg, ptr noundef nonnull @.str.43, i32 noundef %91) #6
  %cmp.i17.i = icmp ugt ptr %call2.i120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17.i, label %if.then.i122, label %if.end.i126

if.then.i122:                                     ; preds = %get_valid_inputs.exit.i121
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %call2.i120 to i32
  br label %d71_compiz_init.exit

if.end.i126:                                      ; preds = %get_valid_inputs.exit.i121
  %hsize.i = getelementptr inbounds %struct.komeda_compiz, ptr %call2.i120, i32 0, i32 1
  %max_line_size.i.i123 = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 4
  %107 = ptrtoint ptr %max_line_size.i.i123 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_line_size.i.i123, align 4
  %periph_addr.i.i.i124 = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 9
  %109 = ptrtoint ptr %periph_addr.i.i.i124 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %periph_addr.i.i.i124, align 4
  %tobool.not.i.i.i125 = icmp eq ptr %110, null
  br i1 %tobool.not.i.i.i125, label %if.then.i.i.i128, label %if.end.i126.get_blk_line_size.exit.i132_crit_edge

if.end.i126.get_blk_line_size.exit.i132_crit_edge: ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_blk_line_size.exit.i132

if.then.i.i.i128:                                 ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i.i127 = getelementptr i32, ptr %reg, i32 2
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i127) #6, !srcloc !330
  %112 = call i32 @llvm.bswap.i32(i32 %111) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  br label %get_blk_line_size.exit.i132

get_blk_line_size.exit.i132:                      ; preds = %if.then.i.i.i128, %if.end.i126.get_blk_line_size.exit.i132_crit_edge
  %max_default.addr.0.i.i.i129 = phi i32 [ %108, %if.end.i126.get_blk_line_size.exit.i132_crit_edge ], [ %112, %if.then.i.i.i128 ]
  %113 = ptrtoint ptr %hsize.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 64, ptr %hsize.i, align 4
  %end2.i.i130 = getelementptr inbounds %struct.komeda_compiz, ptr %call2.i120, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %end2.i.i130 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %max_default.addr.0.i.i.i129, ptr %end2.i.i130, align 4
  %vsize.i = getelementptr inbounds %struct.komeda_compiz, ptr %call2.i120, i32 0, i32 2
  %max_vsize.i131 = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 5
  %115 = ptrtoint ptr %max_vsize.i131 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_vsize.i131, align 4
  %117 = ptrtoint ptr %vsize.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 64, ptr %vsize.i, align 4
  %end2.i18.i = getelementptr inbounds %struct.komeda_compiz, ptr %call2.i120, i32 0, i32 2, i32 1
  %118 = ptrtoint ptr %end2.i18.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %116, ptr %end2.i18.i, align 4
  br label %d71_compiz_init.exit

d71_compiz_init.exit:                             ; preds = %get_blk_line_size.exit.i132, %if.then.i122
  %retval.0.i133 = phi i32 [ %106, %if.then.i122 ], [ 0, %get_blk_line_size.exit.i132 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id.i102) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_id.i135) #6
  %119 = ptrtoint ptr %pipe_id.i135 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %pipe_id.i135, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i136) #6
  %120 = ptrtoint ptr %comp_id.i136 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %comp_id.i136, align 4, !annotation !329
  call fastcc void @get_resources_id(i32 noundef %1, ptr noundef nonnull %pipe_id.i135, ptr noundef nonnull %comp_id.i136) #6
  %121 = ptrtoint ptr %pipe_id.i135 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pipe_id.i135, align 4
  %arrayidx.i137 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %122
  %123 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i137, align 4
  %125 = ptrtoint ptr %comp_id.i136 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %comp_id.i136, align 4
  %and.i138 = and i32 %1, 65520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i.i134) #6
  %127 = ptrtoint ptr %comp_id.i.i134 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %comp_id.i.i134, align 4, !annotation !329
  %pipeline_info.i.i139 = getelementptr inbounds %struct.block_header, ptr %blk, i32 0, i32 1
  %128 = ptrtoint ptr %pipeline_info.i.i139 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pipeline_info.i.i139, align 4
  %130 = and i32 %129, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp8.not.i.i140 = icmp eq i32 %130, 0
  br i1 %cmp8.not.i.i140, label %sw.bb11.get_valid_inputs.exit.i155_crit_edge, label %sw.bb11.for.body.i.i152_crit_edge

sw.bb11.for.body.i.i152_crit_edge:                ; preds = %sw.bb11
  br label %for.body.i.i152

sw.bb11.get_valid_inputs.exit.i155_crit_edge:     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i155

for.body.i.i152:                                  ; preds = %for.body.i.i152.for.body.i.i152_crit_edge, %sw.bb11.for.body.i.i152_crit_edge
  %i.010.i.i141 = phi i32 [ %inc.i.i148, %for.body.i.i152.for.body.i.i152_crit_edge ], [ 0, %sw.bb11.for.body.i.i152_crit_edge ]
  %valid_inputs.09.i.i142 = phi i32 [ %valid_inputs.1.i.i147, %for.body.i.i152.for.body.i.i152_crit_edge ], [ 0, %sw.bb11.for.body.i.i152_crit_edge ]
  %arrayidx.i.i143 = getelementptr %struct.block_header, ptr %blk, i32 0, i32 2, i32 %i.010.i.i141
  %131 = ptrtoint ptr %arrayidx.i.i143 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i.i143, align 4
  call fastcc void @get_resources_id(i32 noundef %132, ptr noundef null, ptr noundef nonnull %comp_id.i.i134) #6
  %133 = ptrtoint ptr %comp_id.i.i134 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %comp_id.i.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %134)
  %cmp1.i.i144 = icmp eq i32 %134, -1
  %shl.i.i145 = shl nuw i32 1, %134
  %or.i.i146 = select i1 %cmp1.i.i144, i32 0, i32 %shl.i.i145
  %valid_inputs.1.i.i147 = or i32 %or.i.i146, %valid_inputs.09.i.i142
  %inc.i.i148 = add nuw nsw i32 %i.010.i.i141, 1
  %135 = ptrtoint ptr %pipeline_info.i.i139 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pipeline_info.i.i139, align 4
  %and.i.i149 = lshr i32 %136, 8
  %shr.i.i150 = and i32 %and.i.i149, 15
  %cmp.i.i151 = icmp ult i32 %inc.i.i148, %shr.i.i150
  br i1 %cmp.i.i151, label %for.body.i.i152.for.body.i.i152_crit_edge, label %for.body.i.i152.get_valid_inputs.exit.i155_crit_edge

for.body.i.i152.get_valid_inputs.exit.i155_crit_edge: ; preds = %for.body.i.i152
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i155

for.body.i.i152.for.body.i.i152_crit_edge:        ; preds = %for.body.i.i152
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i152

get_valid_inputs.exit.i155:                       ; preds = %for.body.i.i152.get_valid_inputs.exit.i155_crit_edge, %sw.bb11.get_valid_inputs.exit.i155_crit_edge
  %valid_inputs.0.lcssa.i.i153 = phi i32 [ 0, %sw.bb11.get_valid_inputs.exit.i155_crit_edge ], [ %valid_inputs.1.i.i147, %for.body.i.i152.get_valid_inputs.exit.i155_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i.i134) #6
  %137 = ptrtoint ptr %blk to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %blk, align 4
  %and3.i = lshr i32 %138, 4
  %shr.i154 = and i32 %and3.i, 15
  %call4.i = call ptr (ptr, i32, i32, i32, ptr, i8, i32, i8, ptr, ptr, ...) @komeda_component_add(ptr noundef %124, i32 noundef 216, i32 noundef %126, i32 noundef %and.i138, ptr noundef nonnull @d71_scaler_funcs, i8 noundef zeroext 1, i32 noundef %valid_inputs.0.lcssa.i.i153, i8 noundef zeroext 1, ptr noundef %reg, ptr noundef nonnull @.str.58, i32 noundef %122, i32 noundef %shr.i154) #6
  %cmp.i25.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i, label %if.then.i156, label %if.end.i158

if.then.i156:                                     ; preds = %get_valid_inputs.exit.i155
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59) #6
  %139 = ptrtoint ptr %call4.i to i32
  br label %d71_scaler_init.exit

if.end.i158:                                      ; preds = %get_valid_inputs.exit.i155
  %hsize.i157 = getelementptr inbounds %struct.komeda_scaler, ptr %call4.i, i32 0, i32 1
  %periph_addr.i.i = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 9
  %140 = ptrtoint ptr %periph_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %periph_addr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %141, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i158.__get_blk_line_size.exit.i_crit_edge

if.end.i158.__get_blk_line_size.exit.i_crit_edge: ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %__get_blk_line_size.exit.i

if.then.i.i:                                      ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i32, ptr %reg, i32 2
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !330
  %143 = call i32 @llvm.bswap.i32(i32 %142) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  br label %__get_blk_line_size.exit.i

__get_blk_line_size.exit.i:                       ; preds = %if.then.i.i, %if.end.i158.__get_blk_line_size.exit.i_crit_edge
  %max_default.addr.0.i.i = phi i32 [ 2048, %if.end.i158.__get_blk_line_size.exit.i_crit_edge ], [ %143, %if.then.i.i ]
  %144 = ptrtoint ptr %hsize.i157 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 4, ptr %hsize.i157, align 4
  %end2.i.i159 = getelementptr inbounds %struct.komeda_scaler, ptr %call4.i, i32 0, i32 1, i32 1
  %145 = ptrtoint ptr %end2.i.i159 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %max_default.addr.0.i.i, ptr %end2.i.i159, align 4
  %vsize.i160 = getelementptr inbounds %struct.komeda_scaler, ptr %call4.i, i32 0, i32 2
  %146 = ptrtoint ptr %vsize.i160 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 4, ptr %vsize.i160, align 4
  %end2.i26.i = getelementptr inbounds %struct.komeda_scaler, ptr %call4.i, i32 0, i32 2, i32 1
  %147 = ptrtoint ptr %end2.i26.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 4096, ptr %end2.i26.i, align 4
  %max_downscaling.i = getelementptr inbounds %struct.komeda_scaler, ptr %call4.i, i32 0, i32 4
  %148 = ptrtoint ptr %max_downscaling.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 6, ptr %max_downscaling.i, align 4
  %max_upscaling.i = getelementptr inbounds %struct.komeda_scaler, ptr %call4.i, i32 0, i32 3
  %149 = ptrtoint ptr %max_upscaling.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 64, ptr %max_upscaling.i, align 4
  %scaling_split_overlap.i = getelementptr inbounds %struct.komeda_scaler, ptr %call4.i, i32 0, i32 5
  %150 = ptrtoint ptr %scaling_split_overlap.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 8, ptr %scaling_split_overlap.i, align 4
  %enh_split_overlap.i = getelementptr inbounds %struct.komeda_scaler, ptr %call4.i, i32 0, i32 6
  %151 = ptrtoint ptr %enh_split_overlap.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %enh_split_overlap.i, align 1
  %reg8.i = getelementptr inbounds %struct.komeda_component, ptr %call4.i, i32 0, i32 3
  %152 = ptrtoint ptr %reg8.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg8.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  call void @arm_heavy_mb() #6
  %add.ptr.i.i161 = getelementptr i32, ptr %153, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i161, i32 0) #6, !srcloc !333
  br label %d71_scaler_init.exit

d71_scaler_init.exit:                             ; preds = %__get_blk_line_size.exit.i, %if.then.i156
  %retval.0.i162 = phi i32 [ %139, %if.then.i156 ], [ 0, %__get_blk_line_size.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i136) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id.i135) #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_id.i164) #6
  %154 = ptrtoint ptr %pipe_id.i164 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %pipe_id.i164, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i165) #6
  %155 = ptrtoint ptr %comp_id.i165 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 -1, ptr %comp_id.i165, align 4, !annotation !329
  call fastcc void @get_resources_id(i32 noundef %1, ptr noundef nonnull %pipe_id.i164, ptr noundef nonnull %comp_id.i165) #6
  %156 = ptrtoint ptr %pipe_id.i164 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pipe_id.i164, align 4
  %arrayidx.i166 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %157
  %158 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i166, align 4
  %160 = ptrtoint ptr %comp_id.i165 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %comp_id.i165, align 4
  %and.i167 = and i32 %1, 65520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i.i163) #6
  %162 = ptrtoint ptr %comp_id.i.i163 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %comp_id.i.i163, align 4, !annotation !329
  %pipeline_info.i.i168 = getelementptr inbounds %struct.block_header, ptr %blk, i32 0, i32 1
  %163 = ptrtoint ptr %pipeline_info.i.i168 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %pipeline_info.i.i168, align 4
  %165 = and i32 %164, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp8.not.i.i169 = icmp eq i32 %165, 0
  br i1 %cmp8.not.i.i169, label %sw.bb13.get_valid_inputs.exit.i184_crit_edge, label %sw.bb13.for.body.i.i181_crit_edge

sw.bb13.for.body.i.i181_crit_edge:                ; preds = %sw.bb13
  br label %for.body.i.i181

sw.bb13.get_valid_inputs.exit.i184_crit_edge:     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i184

for.body.i.i181:                                  ; preds = %for.body.i.i181.for.body.i.i181_crit_edge, %sw.bb13.for.body.i.i181_crit_edge
  %i.010.i.i170 = phi i32 [ %inc.i.i177, %for.body.i.i181.for.body.i.i181_crit_edge ], [ 0, %sw.bb13.for.body.i.i181_crit_edge ]
  %valid_inputs.09.i.i171 = phi i32 [ %valid_inputs.1.i.i176, %for.body.i.i181.for.body.i.i181_crit_edge ], [ 0, %sw.bb13.for.body.i.i181_crit_edge ]
  %arrayidx.i.i172 = getelementptr %struct.block_header, ptr %blk, i32 0, i32 2, i32 %i.010.i.i170
  %166 = ptrtoint ptr %arrayidx.i.i172 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i.i172, align 4
  call fastcc void @get_resources_id(i32 noundef %167, ptr noundef null, ptr noundef nonnull %comp_id.i.i163) #6
  %168 = ptrtoint ptr %comp_id.i.i163 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %comp_id.i.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %169)
  %cmp1.i.i173 = icmp eq i32 %169, -1
  %shl.i.i174 = shl nuw i32 1, %169
  %or.i.i175 = select i1 %cmp1.i.i173, i32 0, i32 %shl.i.i174
  %valid_inputs.1.i.i176 = or i32 %or.i.i175, %valid_inputs.09.i.i171
  %inc.i.i177 = add nuw nsw i32 %i.010.i.i170, 1
  %170 = ptrtoint ptr %pipeline_info.i.i168 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %pipeline_info.i.i168, align 4
  %and.i.i178 = lshr i32 %171, 8
  %shr.i.i179 = and i32 %and.i.i178, 15
  %cmp.i.i180 = icmp ult i32 %inc.i.i177, %shr.i.i179
  br i1 %cmp.i.i180, label %for.body.i.i181.for.body.i.i181_crit_edge, label %for.body.i.i181.get_valid_inputs.exit.i184_crit_edge

for.body.i.i181.get_valid_inputs.exit.i184_crit_edge: ; preds = %for.body.i.i181
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i184

for.body.i.i181.for.body.i.i181_crit_edge:        ; preds = %for.body.i.i181
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i181

get_valid_inputs.exit.i184:                       ; preds = %for.body.i.i181.get_valid_inputs.exit.i184_crit_edge, %sw.bb13.get_valid_inputs.exit.i184_crit_edge
  %valid_inputs.0.lcssa.i.i182 = phi i32 [ 0, %sw.bb13.get_valid_inputs.exit.i184_crit_edge ], [ %valid_inputs.1.i.i176, %for.body.i.i181.get_valid_inputs.exit.i184_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i.i163) #6
  %call2.i183 = call ptr (ptr, i32, i32, i32, ptr, i8, i32, i8, ptr, ptr, ...) @komeda_component_add(ptr noundef %159, i32 noundef 204, i32 noundef %161, i32 noundef %and.i167, ptr noundef nonnull @d71_splitter_funcs, i8 noundef zeroext 1, i32 noundef %valid_inputs.0.lcssa.i.i182, i8 noundef zeroext 2, ptr noundef %reg, ptr noundef nonnull @.str.81, i32 noundef %157) #6
  %cmp.i15.i = icmp ugt ptr %call2.i183, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15.i, label %if.then.i185, label %if.end.i190

if.then.i185:                                     ; preds = %get_valid_inputs.exit.i184
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.82) #6
  br label %d71_splitter_init.exit

if.end.i190:                                      ; preds = %get_valid_inputs.exit.i184
  %hsize.i186 = getelementptr inbounds %struct.komeda_splitter, ptr %call2.i183, i32 0, i32 1
  %max_line_size.i.i187 = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 4
  %172 = ptrtoint ptr %max_line_size.i.i187 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %max_line_size.i.i187, align 4
  %periph_addr.i.i.i188 = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 9
  %174 = ptrtoint ptr %periph_addr.i.i.i188 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %periph_addr.i.i.i188, align 4
  %tobool.not.i.i.i189 = icmp eq ptr %175, null
  br i1 %tobool.not.i.i.i189, label %if.then.i.i.i192, label %if.end.i190.get_blk_line_size.exit.i197_crit_edge

if.end.i190.get_blk_line_size.exit.i197_crit_edge: ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_blk_line_size.exit.i197

if.then.i.i.i192:                                 ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i.i191 = getelementptr i32, ptr %reg, i32 2
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i191) #6, !srcloc !330
  %177 = call i32 @llvm.bswap.i32(i32 %176) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  br label %get_blk_line_size.exit.i197

get_blk_line_size.exit.i197:                      ; preds = %if.then.i.i.i192, %if.end.i190.get_blk_line_size.exit.i197_crit_edge
  %max_default.addr.0.i.i.i193 = phi i32 [ %173, %if.end.i190.get_blk_line_size.exit.i197_crit_edge ], [ %177, %if.then.i.i.i192 ]
  %178 = ptrtoint ptr %hsize.i186 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 4, ptr %hsize.i186, align 4
  %end2.i.i194 = getelementptr inbounds %struct.komeda_splitter, ptr %call2.i183, i32 0, i32 1, i32 1
  %179 = ptrtoint ptr %end2.i.i194 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %max_default.addr.0.i.i.i193, ptr %end2.i.i194, align 4
  %vsize.i195 = getelementptr inbounds %struct.komeda_splitter, ptr %call2.i183, i32 0, i32 2
  %max_vsize.i196 = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 5
  %180 = ptrtoint ptr %max_vsize.i196 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %max_vsize.i196, align 4
  %182 = ptrtoint ptr %vsize.i195 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 4, ptr %vsize.i195, align 4
  %end2.i16.i = getelementptr inbounds %struct.komeda_splitter, ptr %call2.i183, i32 0, i32 2, i32 1
  %183 = ptrtoint ptr %end2.i16.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %181, ptr %end2.i16.i, align 4
  br label %d71_splitter_init.exit

d71_splitter_init.exit:                           ; preds = %get_blk_line_size.exit.i197, %if.then.i185
  %retval.0.i198 = phi i32 [ -1, %if.then.i185 ], [ 0, %get_blk_line_size.exit.i197 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i165) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id.i164) #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_id.i200) #6
  %184 = ptrtoint ptr %pipe_id.i200 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1, ptr %pipe_id.i200, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i201) #6
  %185 = ptrtoint ptr %comp_id.i201 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %comp_id.i201, align 4, !annotation !329
  call fastcc void @get_resources_id(i32 noundef %1, ptr noundef nonnull %pipe_id.i200, ptr noundef nonnull %comp_id.i201) #6
  %186 = ptrtoint ptr %pipe_id.i200 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %pipe_id.i200, align 4
  %arrayidx.i202 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %187
  %188 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx.i202, align 4
  %190 = ptrtoint ptr %comp_id.i201 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %comp_id.i201, align 4
  %and.i203 = and i32 %1, 65520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i.i199) #6
  %192 = ptrtoint ptr %comp_id.i.i199 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -1, ptr %comp_id.i.i199, align 4, !annotation !329
  %pipeline_info.i.i204 = getelementptr inbounds %struct.block_header, ptr %blk, i32 0, i32 1
  %193 = ptrtoint ptr %pipeline_info.i.i204 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %pipeline_info.i.i204, align 4
  %195 = and i32 %194, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp8.not.i.i205 = icmp eq i32 %195, 0
  br i1 %cmp8.not.i.i205, label %sw.bb15.get_valid_inputs.exit.i220_crit_edge, label %sw.bb15.for.body.i.i217_crit_edge

sw.bb15.for.body.i.i217_crit_edge:                ; preds = %sw.bb15
  br label %for.body.i.i217

sw.bb15.get_valid_inputs.exit.i220_crit_edge:     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i220

for.body.i.i217:                                  ; preds = %for.body.i.i217.for.body.i.i217_crit_edge, %sw.bb15.for.body.i.i217_crit_edge
  %i.010.i.i206 = phi i32 [ %inc.i.i213, %for.body.i.i217.for.body.i.i217_crit_edge ], [ 0, %sw.bb15.for.body.i.i217_crit_edge ]
  %valid_inputs.09.i.i207 = phi i32 [ %valid_inputs.1.i.i212, %for.body.i.i217.for.body.i.i217_crit_edge ], [ 0, %sw.bb15.for.body.i.i217_crit_edge ]
  %arrayidx.i.i208 = getelementptr %struct.block_header, ptr %blk, i32 0, i32 2, i32 %i.010.i.i206
  %196 = ptrtoint ptr %arrayidx.i.i208 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx.i.i208, align 4
  call fastcc void @get_resources_id(i32 noundef %197, ptr noundef null, ptr noundef nonnull %comp_id.i.i199) #6
  %198 = ptrtoint ptr %comp_id.i.i199 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %comp_id.i.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %199)
  %cmp1.i.i209 = icmp eq i32 %199, -1
  %shl.i.i210 = shl nuw i32 1, %199
  %or.i.i211 = select i1 %cmp1.i.i209, i32 0, i32 %shl.i.i210
  %valid_inputs.1.i.i212 = or i32 %or.i.i211, %valid_inputs.09.i.i207
  %inc.i.i213 = add nuw nsw i32 %i.010.i.i206, 1
  %200 = ptrtoint ptr %pipeline_info.i.i204 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pipeline_info.i.i204, align 4
  %and.i.i214 = lshr i32 %201, 8
  %shr.i.i215 = and i32 %and.i.i214, 15
  %cmp.i.i216 = icmp ult i32 %inc.i.i213, %shr.i.i215
  br i1 %cmp.i.i216, label %for.body.i.i217.for.body.i.i217_crit_edge, label %for.body.i.i217.get_valid_inputs.exit.i220_crit_edge

for.body.i.i217.get_valid_inputs.exit.i220_crit_edge: ; preds = %for.body.i.i217
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i220

for.body.i.i217.for.body.i.i217_crit_edge:        ; preds = %for.body.i.i217
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i217

get_valid_inputs.exit.i220:                       ; preds = %for.body.i.i217.get_valid_inputs.exit.i220_crit_edge, %sw.bb15.get_valid_inputs.exit.i220_crit_edge
  %valid_inputs.0.lcssa.i.i218 = phi i32 [ 0, %sw.bb15.get_valid_inputs.exit.i220_crit_edge ], [ %valid_inputs.1.i.i212, %for.body.i.i217.get_valid_inputs.exit.i220_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i.i199) #6
  %call2.i219 = call ptr (ptr, i32, i32, i32, ptr, i8, i32, i8, ptr, ptr, ...) @komeda_component_add(ptr noundef %189, i32 noundef 204, i32 noundef %191, i32 noundef %and.i203, ptr noundef nonnull @d71_merger_funcs, i8 noundef zeroext 2, i32 noundef %valid_inputs.0.lcssa.i.i218, i8 noundef zeroext 1, ptr noundef %reg, ptr noundef nonnull @.str.87, i32 noundef %187) #6
  %cmp.i16.i = icmp ugt ptr %call2.i219, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16.i, label %if.then.i221, label %if.end.i224

if.then.i221:                                     ; preds = %get_valid_inputs.exit.i220
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.88) #6
  %202 = ptrtoint ptr %call2.i219 to i32
  br label %d71_merger_init.exit

if.end.i224:                                      ; preds = %get_valid_inputs.exit.i220
  %hsize_merged.i = getelementptr inbounds %struct.komeda_merger, ptr %call2.i219, i32 0, i32 1
  %periph_addr.i.i222 = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 9
  %203 = ptrtoint ptr %periph_addr.i.i222 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %periph_addr.i.i222, align 4
  %tobool.not.i.i223 = icmp eq ptr %204, null
  br i1 %tobool.not.i.i223, label %if.then.i.i226, label %if.end.i224.__get_blk_line_size.exit.i229_crit_edge

if.end.i224.__get_blk_line_size.exit.i229_crit_edge: ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #8
  br label %__get_blk_line_size.exit.i229

if.then.i.i226:                                   ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i225 = getelementptr i32, ptr %reg, i32 2
  %205 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i225) #6, !srcloc !330
  %206 = call i32 @llvm.bswap.i32(i32 %205) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  br label %__get_blk_line_size.exit.i229

__get_blk_line_size.exit.i229:                    ; preds = %if.then.i.i226, %if.end.i224.__get_blk_line_size.exit.i229_crit_edge
  %max_default.addr.0.i.i227 = phi i32 [ 4032, %if.end.i224.__get_blk_line_size.exit.i229_crit_edge ], [ %206, %if.then.i.i226 ]
  %207 = ptrtoint ptr %hsize_merged.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 4, ptr %hsize_merged.i, align 4
  %end2.i.i228 = getelementptr inbounds %struct.komeda_merger, ptr %call2.i219, i32 0, i32 1, i32 1
  %208 = ptrtoint ptr %end2.i.i228 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %max_default.addr.0.i.i227, ptr %end2.i.i228, align 4
  %vsize_merged.i = getelementptr inbounds %struct.komeda_merger, ptr %call2.i219, i32 0, i32 2
  %209 = ptrtoint ptr %vsize_merged.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 4, ptr %vsize_merged.i, align 4
  %end2.i17.i = getelementptr inbounds %struct.komeda_merger, ptr %call2.i219, i32 0, i32 2, i32 1
  %210 = ptrtoint ptr %end2.i17.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 4096, ptr %end2.i17.i, align 4
  br label %d71_merger_init.exit

d71_merger_init.exit:                             ; preds = %__get_blk_line_size.exit.i229, %if.then.i221
  %retval.0.i230 = phi i32 [ %202, %if.then.i221 ], [ 0, %__get_blk_line_size.exit.i229 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i201) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id.i200) #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %shr
  %211 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx19, align 4
  %dou_addr = getelementptr inbounds %struct.d71_pipeline, ptr %212, i32 0, i32 3
  %213 = ptrtoint ptr %dou_addr to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %reg, ptr %dou_addr, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_id.i232) #6
  %214 = ptrtoint ptr %pipe_id.i232 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 -1, ptr %pipe_id.i232, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i233) #6
  %215 = ptrtoint ptr %comp_id.i233 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 -1, ptr %comp_id.i233, align 4, !annotation !329
  call fastcc void @get_resources_id(i32 noundef %1, ptr noundef nonnull %pipe_id.i232, ptr noundef nonnull %comp_id.i233) #6
  %216 = ptrtoint ptr %pipe_id.i232 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %pipe_id.i232, align 4
  %arrayidx.i234 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %217
  %218 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.i234, align 4
  %220 = ptrtoint ptr %comp_id.i233 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %comp_id.i233, align 4
  %and.i235 = and i32 %1, 65520
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i.i231) #6
  %222 = ptrtoint ptr %comp_id.i.i231 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 -1, ptr %comp_id.i.i231, align 4, !annotation !329
  %pipeline_info.i.i236 = getelementptr inbounds %struct.block_header, ptr %blk, i32 0, i32 1
  %223 = ptrtoint ptr %pipeline_info.i.i236 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %pipeline_info.i.i236, align 4
  %225 = and i32 %224, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %cmp8.not.i.i237 = icmp eq i32 %225, 0
  br i1 %cmp8.not.i.i237, label %sw.bb20.get_valid_inputs.exit.i252_crit_edge, label %sw.bb20.for.body.i.i249_crit_edge

sw.bb20.for.body.i.i249_crit_edge:                ; preds = %sw.bb20
  br label %for.body.i.i249

sw.bb20.get_valid_inputs.exit.i252_crit_edge:     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i252

for.body.i.i249:                                  ; preds = %for.body.i.i249.for.body.i.i249_crit_edge, %sw.bb20.for.body.i.i249_crit_edge
  %i.010.i.i238 = phi i32 [ %inc.i.i245, %for.body.i.i249.for.body.i.i249_crit_edge ], [ 0, %sw.bb20.for.body.i.i249_crit_edge ]
  %valid_inputs.09.i.i239 = phi i32 [ %valid_inputs.1.i.i244, %for.body.i.i249.for.body.i.i249_crit_edge ], [ 0, %sw.bb20.for.body.i.i249_crit_edge ]
  %arrayidx.i.i240 = getelementptr %struct.block_header, ptr %blk, i32 0, i32 2, i32 %i.010.i.i238
  %226 = ptrtoint ptr %arrayidx.i.i240 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx.i.i240, align 4
  call fastcc void @get_resources_id(i32 noundef %227, ptr noundef null, ptr noundef nonnull %comp_id.i.i231) #6
  %228 = ptrtoint ptr %comp_id.i.i231 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %comp_id.i.i231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %229)
  %cmp1.i.i241 = icmp eq i32 %229, -1
  %shl.i.i242 = shl nuw i32 1, %229
  %or.i.i243 = select i1 %cmp1.i.i241, i32 0, i32 %shl.i.i242
  %valid_inputs.1.i.i244 = or i32 %or.i.i243, %valid_inputs.09.i.i239
  %inc.i.i245 = add nuw nsw i32 %i.010.i.i238, 1
  %230 = ptrtoint ptr %pipeline_info.i.i236 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %pipeline_info.i.i236, align 4
  %and.i.i246 = lshr i32 %231, 8
  %shr.i.i247 = and i32 %and.i.i246, 15
  %cmp.i.i248 = icmp ult i32 %inc.i.i245, %shr.i.i247
  br i1 %cmp.i.i248, label %for.body.i.i249.for.body.i.i249_crit_edge, label %for.body.i.i249.get_valid_inputs.exit.i252_crit_edge

for.body.i.i249.get_valid_inputs.exit.i252_crit_edge: ; preds = %for.body.i.i249
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_valid_inputs.exit.i252

for.body.i.i249.for.body.i.i249_crit_edge:        ; preds = %for.body.i.i249
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i249

get_valid_inputs.exit.i252:                       ; preds = %for.body.i.i249.get_valid_inputs.exit.i252_crit_edge, %sw.bb20.get_valid_inputs.exit.i252_crit_edge
  %valid_inputs.0.lcssa.i.i250 = phi i32 [ 0, %sw.bb20.get_valid_inputs.exit.i252_crit_edge ], [ %valid_inputs.1.i.i244, %for.body.i.i249.get_valid_inputs.exit.i252_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i.i231) #6
  %call2.i251 = call ptr (ptr, i32, i32, i32, ptr, i8, i32, i8, ptr, ptr, ...) @komeda_component_add(ptr noundef %219, i32 noundef 200, i32 noundef %221, i32 noundef %and.i235, ptr noundef nonnull @d71_improc_funcs, i8 noundef zeroext 2, i32 noundef %valid_inputs.0.lcssa.i.i250, i8 noundef zeroext 1, ptr noundef %reg, ptr noundef nonnull @.str.93, i32 noundef %217) #6
  %cmp.i26.i = icmp ugt ptr %call2.i251, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i, label %if.then.i253, label %if.end.i256

if.then.i253:                                     ; preds = %get_valid_inputs.exit.i252
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.94) #6
  %232 = ptrtoint ptr %call2.i251 to i32
  br label %d71_improc_init.exit

if.end.i256:                                      ; preds = %get_valid_inputs.exit.i252
  %supported_color_depths.i = getelementptr inbounds %struct.komeda_improc, ptr %call2.i251, i32 0, i32 2
  %233 = ptrtoint ptr %supported_color_depths.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 1280, ptr %supported_color_depths.i, align 4
  %supported_color_formats.i = getelementptr inbounds %struct.komeda_improc, ptr %call2.i251, i32 0, i32 1
  %234 = ptrtoint ptr %supported_color_formats.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 7, ptr %supported_color_formats.i, align 4
  %add.ptr.i.i254 = getelementptr i32, ptr %reg, i32 48
  %235 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i254) #6, !srcloc !330
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %236 = and i32 %235, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool.not.i255 = icmp eq i32 %236, 0
  br i1 %tobool.not.i255, label %if.end.i256.if.end9.i_crit_edge, label %if.then7.i

if.end.i256.if.end9.i_crit_edge:                  ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #8
  %237 = ptrtoint ptr %supported_color_formats.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %supported_color_formats.i, align 4
  %or.i = or i32 %238, 8
  store i32 %or.i, ptr %supported_color_formats.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i256.if.end9.i_crit_edge
  %supports_csc.i = getelementptr inbounds %struct.komeda_improc, ptr %call2.i251, i32 0, i32 3
  %239 = ptrtoint ptr %supports_csc.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %bf.load.i = load i8, ptr %supports_csc.i, align 4
  %bf.set12.i = or i8 %bf.load.i, 96
  store i8 %bf.set12.i, ptr %supports_csc.i, align 4
  br label %d71_improc_init.exit

d71_improc_init.exit:                             ; preds = %if.end9.i, %if.then.i253
  %retval.0.i257 = phi i32 [ %232, %if.then.i253 ], [ 0, %if.end9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i233) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id.i232) #6
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx24 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %shr
  %240 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx24, align 4
  %dou_ft_coeff_addr = getelementptr inbounds %struct.d71_pipeline, ptr %241, i32 0, i32 4
  %242 = ptrtoint ptr %dou_ft_coeff_addr to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %reg, ptr %dou_ft_coeff_addr, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_id.i258) #6
  %243 = ptrtoint ptr %pipe_id.i258 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 -1, ptr %pipe_id.i258, align 4, !annotation !329
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %comp_id.i259) #6
  %244 = ptrtoint ptr %comp_id.i259 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 -1, ptr %comp_id.i259, align 4, !annotation !329
  call fastcc void @get_resources_id(i32 noundef %1, ptr noundef nonnull %pipe_id.i258, ptr noundef nonnull %comp_id.i259) #6
  %245 = ptrtoint ptr %pipe_id.i258 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %pipe_id.i258, align 4
  %arrayidx.i260 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 10, i32 %246
  %247 = ptrtoint ptr %arrayidx.i260 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx.i260, align 4
  %and.i261 = and i32 %1, 65520
  %add.i = add i32 %246, 20
  %shl.i = shl nuw i32 1, %add.i
  %call.i = call ptr (ptr, i32, i32, i32, ptr, i8, i32, i8, ptr, ptr, ...) @komeda_component_add(ptr noundef %248, i32 noundef 192, i32 noundef 22, i32 noundef %and.i261, ptr noundef nonnull @d71_timing_ctrlr_funcs, i8 noundef zeroext 1, i32 noundef %shl.i, i8 noundef zeroext 0, ptr noundef %reg, ptr noundef nonnull @.str.103, i32 noundef %246) #6
  %cmp.i.i262 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i262, label %if.then.i263, label %if.end.i265

if.then.i263:                                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.104) #6
  %249 = ptrtoint ptr %call.i to i32
  br label %d71_timing_ctrlr_init.exit

if.end.i265:                                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %supports_dual_link.i = getelementptr inbounds %struct.d71_dev, ptr %d71, i32 0, i32 6
  %250 = ptrtoint ptr %supports_dual_link.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %bf.load.i264 = load i8, ptr %supports_dual_link.i, align 4
  %bf.lshr.i = and i8 %bf.load.i264, -128
  %supports_dual_link4.i = getelementptr inbounds %struct.komeda_timing_ctrlr, ptr %call.i, i32 0, i32 1
  %251 = ptrtoint ptr %supports_dual_link4.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %bf.load5.i = load i8, ptr %supports_dual_link4.i, align 4
  %bf.clear.i = and i8 %bf.load5.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.lshr.i
  store i8 %bf.set.i, ptr %supports_dual_link4.i, align 4
  br label %d71_timing_ctrlr_init.exit

d71_timing_ctrlr_init.exit:                       ; preds = %if.end.i265, %if.then.i263
  %retval.0.i266 = phi i32 [ %249, %if.then.i263 ], [ 0, %if.end.i265 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %comp_id.i259) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id.i258) #6
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx28 = getelementptr %struct.d71_dev, ptr %d71, i32 0, i32 8, i32 %shr
  %252 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %reg, ptr %arrayidx28, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %d71_timing_ctrlr_init.exit, %sw.bb22, %d71_improc_init.exit, %sw.bb17, %d71_merger_init.exit, %d71_splitter_init.exit, %d71_scaler_init.exit, %d71_compiz_init.exit, %d71_wb_layer_init.exit, %d71_layer_init.exit, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge267
  %err.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb27 ], [ %retval.0.i266, %d71_timing_ctrlr_init.exit ], [ 0, %sw.bb22 ], [ %retval.0.i257, %d71_improc_init.exit ], [ 0, %sw.bb17 ], [ %retval.0.i230, %d71_merger_init.exit ], [ %retval.0.i198, %d71_splitter_init.exit ], [ %retval.0.i162, %d71_scaler_init.exit ], [ %retval.0.i133, %d71_compiz_init.exit ], [ %retval.0.i100, %d71_wb_layer_init.exit ], [ %retval.0.i, %d71_layer_init.exit ], [ 0, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge267 ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @d71_downscaling_clk_check(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %mode, i32 noundef %aclk_rate, ptr nocapture noundef readonly %dflow) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %in_w = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 3
  %0 = ptrtoint ptr %in_w to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in_w, align 4
  %conv = zext i16 %1 to i32
  %in_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 4
  %2 = ptrtoint ptr %in_h to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %in_h, align 2
  %conv1 = zext i16 %3 to i32
  %out_h = getelementptr inbounds %struct.komeda_data_flow_cfg, ptr %dflow, i32 0, i32 8
  %4 = ptrtoint ptr %out_h to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv1)
  %cmp = icmp eq i32 %5, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %conv4 = zext i16 %7 to i32
  %sub = add nsw i32 %conv4, -3
  %conv5 = sext i32 %sub to i64
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul nuw i32 %conv1, %conv
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %8 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %htotal, align 2
  %conv7 = zext i16 %9 to i32
  %sub8 = add nsw i32 %conv7, -1
  %mul9 = mul i32 %sub8, %5
  %mul10.neg = mul nsw i32 %conv1, -2
  %sub11 = add i32 %mul9, %mul10.neg
  %conv12 = zext i32 %sub11 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fraction.0.in = phi i32 [ %conv, %if.then ], [ %mul, %if.else ]
  %denominator.0 = phi i64 [ %conv5, %if.then ], [ %conv12, %if.else ]
  %fraction.0 = zext i32 %fraction.0.in to i64
  %conv13 = zext i32 %aclk_rate to i64
  %mul14 = mul i64 %denominator.0, %conv13
  %crtc_clock = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %10 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_clock, align 4
  %mul15 = mul i32 %11, 1000
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul nsw i64 %conv16, %fraction.0
  call void @__sanitizer_cov_trace_cmp8(i64 %mul14, i64 %mul17)
  %cmp18.not = icmp ult i64 %mul14, %mul17
  %cond = select i1 %cmp18.not, i32 -22, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_pipeline_dump(ptr nocapture noundef readonly %pipe, ptr noundef %sf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.komeda_pipeline, ptr %pipe, i32 0, i32 3
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.121, i32 noundef %1) #6
  %lpu_addr.i = getelementptr inbounds %struct.d71_pipeline, ptr %pipe, i32 0, i32 1
  %2 = ptrtoint ptr %lpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lpu_addr.i, align 4
  tail call fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %3) #6
  %4 = ptrtoint ptr %lpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lpu_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i32, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !330
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i.2.i = getelementptr i32, ptr %5, i32 42
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i) #6, !srcloc !330
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i.3.i = getelementptr i32, ptr %5, i32 43
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3.i) #6, !srcloc !330
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i.4.i = getelementptr i32, ptr %5, i32 44
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4.i) #6, !srcloc !330
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i.5.i = getelementptr i32, ptr %5, i32 45
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.5.i) #6, !srcloc !330
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.122, i32 noundef %7) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.123, i32 noundef -559030611) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.124, i32 noundef %9) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.125, i32 noundef %11) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.126, i32 noundef %13) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.127, i32 noundef %15) #6
  %16 = ptrtoint ptr %lpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lpu_addr.i, align 4
  %add.ptr.i.i36.i = getelementptr i32, ptr %17, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36.i) #6, !srcloc !330
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.128, i32 noundef %19) #6
  %20 = ptrtoint ptr %lpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lpu_addr.i, align 4
  %add.ptr.i.i49.i = getelementptr i32, ptr %21, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49.i) #6, !srcloc !330
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i49.1.i = getelementptr i32, ptr %21, i32 53
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49.1.i) #6, !srcloc !330
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i49.2.i = getelementptr i32, ptr %21, i32 54
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49.2.i) #6, !srcloc !330
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.129, i32 noundef %23) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.130, i32 noundef %25) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.131, i32 noundef %27) #6
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.132, i32 noundef %29) #6
  %dou_addr.i = getelementptr inbounds %struct.d71_pipeline, ptr %pipe, i32 0, i32 3
  %30 = ptrtoint ptr %dou_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dou_addr.i, align 4
  tail call fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %31) #6
  %32 = ptrtoint ptr %dou_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dou_addr.i, align 4
  %add.ptr.i.i.i4 = getelementptr i32, ptr %33, i32 40
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i4) #6, !srcloc !330
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i.2.i5 = getelementptr i32, ptr %33, i32 42
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i5) #6, !srcloc !330
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i.3.i6 = getelementptr i32, ptr %33, i32 43
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3.i6) #6, !srcloc !330
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i.4.i7 = getelementptr i32, ptr %33, i32 44
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4.i7) #6, !srcloc !330
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.133, i32 noundef %35) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.134, i32 noundef -559030611) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.135, i32 noundef %37) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.136, i32 noundef %39) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.137, i32 noundef %41) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @d71_dump(ptr nocapture noundef readonly %mdev, ptr noundef %sf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 11
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.138) #6
  %gcu_addr.i = getelementptr inbounds %struct.d71_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gcu_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gcu_addr.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !330
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i.1.i = getelementptr i32, ptr %3, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1.i) #6, !srcloc !330
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i.2.i = getelementptr i32, ptr %3, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2.i) #6, !srcloc !330
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.139, i32 noundef %5) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.140, i32 noundef %7) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.141, i32 noundef %9) #6
  %10 = ptrtoint ptr %gcu_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gcu_addr.i, align 4
  %add.ptr.i.i38.i = getelementptr i32, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38.i) #6, !srcloc !330
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.142, i32 noundef %13) #6
  %14 = ptrtoint ptr %gcu_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gcu_addr.i, align 4
  %add.ptr.i.i51.i = getelementptr i32, ptr %15, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.i) #6, !srcloc !330
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i51.2.i = getelementptr i32, ptr %15, i32 42
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.2.i) #6, !srcloc !330
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i51.3.i = getelementptr i32, ptr %15, i32 43
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.3.i) #6, !srcloc !330
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i51.4.i = getelementptr i32, ptr %15, i32 44
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.4.i) #6, !srcloc !330
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.143, i32 noundef %17) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.144, i32 noundef -559030611) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.145, i32 noundef %19) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.146, i32 noundef %21) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.147, i32 noundef %23) #6
  %24 = ptrtoint ptr %gcu_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gcu_addr.i, align 4
  %add.ptr.i.i64.i = getelementptr i32, ptr %25, i32 52
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i64.i) #6, !srcloc !330
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i64.1.i = getelementptr i32, ptr %25, i32 53
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i64.1.i) #6, !srcloc !330
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.ptr.i.i64.2.i = getelementptr i32, ptr %25, i32 54
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i64.2.i) #6, !srcloc !330
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.148, i32 noundef %27) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.149, i32 noundef %29) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.150, i32 noundef %31) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @get_resources_id(i32 noundef %hw_id, ptr noundef writeonly %pipe_id, ptr noundef writeonly %comp_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %hw_id, 4
  %shr = and i32 %and, 15
  %and1 = lshr i32 %hw_id, 8
  %trunc = trunc i32 %and1 to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %trunc, label %sw.default [
    i8 17, label %entry.sw.epilog_crit_edge
    i8 32, label %sw.bb3
    i8 33, label %sw.bb4
    i8 2, label %sw.bb5
    i8 16, label %sw.bb7
    i8 48, label %sw.bb11
    i8 34, label %sw.bb13
    i8 3, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div31 = lshr i32 %shr, 1
  %rem = and i32 %and, 1
  %add = or i32 %rem, 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add6 = or i32 %shr, 16
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div830 = lshr i32 %shr, 2
  %rem9 = and i32 %and, 3
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add12 = add nuw nsw i32 %shr, 20
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb13, %sw.bb11, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %id.0 = phi i32 [ -1, %sw.default ], [ 22, %sw.bb14 ], [ 14, %sw.bb13 ], [ %add12, %sw.bb11 ], [ %rem9, %sw.bb7 ], [ %add6, %sw.bb5 ], [ %add, %sw.bb4 ], [ 12, %sw.bb3 ], [ 7, %entry.sw.epilog_crit_edge ]
  %pipe.0 = phi i32 [ %shr, %sw.default ], [ %shr, %sw.bb14 ], [ %shr, %sw.bb13 ], [ %shr, %sw.bb11 ], [ %div830, %sw.bb7 ], [ %shr, %sw.bb5 ], [ %div31, %sw.bb4 ], [ %shr, %sw.bb3 ], [ %shr, %entry.sw.epilog_crit_edge ]
  %tobool.not = icmp eq ptr %comp_id, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %comp_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %id.0, ptr %comp_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %tobool15.not = icmp eq ptr %pipe_id, null
  br i1 %tobool15.not, label %if.end.if.end17_crit_edge, label %if.then16

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %pipe_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %pipe.0, ptr %pipe_id, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @komeda_component_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d71_layer_validate(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %4, i32 0, i32 17
  %7 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %6, i32 %8, i32 3
  %9 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %new_state.i, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fb5, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %format, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %rot = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 3
  %17 = ptrtoint ptr %rot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rot, align 4
  %and.i = and i32 %18, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %hsize = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 1
  %afbc_crop_l = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 4
  %afbc_crop_r = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 5
  %vsize = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 2
  %afbc_crop_t = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 6
  %afbc_crop_b = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 7
  %afbc_crop_r.sink = select i1 %tobool.i.not, ptr %afbc_crop_r, ptr %afbc_crop_b
  %conv12.sink.in.in = select i1 %tobool.i.not, ptr %afbc_crop_l, ptr %afbc_crop_t
  %conv11.sink.in.in = select i1 %tobool.i.not, ptr %hsize, ptr %vsize
  %19 = ptrtoint ptr %conv11.sink.in.in to i32
  call void @__asan_load2_noabort(i32 %19)
  %conv11.sink.in = load i16, ptr %conv11.sink.in.in, align 2
  %conv11.sink = zext i16 %conv11.sink.in to i32
  %20 = ptrtoint ptr %conv12.sink.in.in to i32
  call void @__asan_load2_noabort(i32 %20)
  %conv12.sink.in = load i16, ptr %conv12.sink.in.in, align 4
  %conv12.sink = zext i16 %conv12.sink.in to i32
  %21 = ptrtoint ptr %afbc_crop_r.sink to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %afbc_crop_r.sink, align 2
  %conv14 = zext i16 %22 to i32
  %23 = add nuw nsw i32 %conv12.sink, %conv14
  %sub15 = sub nsw i32 %conv11.sink, %23
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 8
  %24 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool.not = icmp eq i64 %25, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %if.then16

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then16:                                        ; preds = %entry
  %and = and i64 %25, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and)
  %cmp = icmp ne i64 %and, 2
  %line_sz20 = getelementptr inbounds %struct.komeda_layer, ptr %c, i32 0, i32 4
  %26 = ptrtoint ptr %line_sz20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %line_sz20, align 4
  %div75 = zext i1 %cmp to i32
  %max_line_sz.0 = lshr i32 %27, %div75
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15, i32 %max_line_sz.0)
  %cmp24 = icmp ugt i32 %sub15, %max_line_sz.0
  br i1 %cmp24, label %if.then26, label %if.then16.if.end28_crit_edge

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then26:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %sub15, i32 noundef %max_line_sz.0) #6
  br label %cleanup

if.end28:                                         ; preds = %if.then16.if.end28_crit_edge, %entry.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 808539481, i32 %16)
  %cmp29 = icmp eq i32 %16, 808539481
  call void @__sanitizer_cov_trace_const_cmp4(i32 2046, i32 %sub15)
  %cmp31 = icmp ugt i32 %sub15, 2046
  %or.cond = select i1 %cmp29, i1 %cmp31, i1 false
  br i1 %or.cond, label %land.lhs.true33, label %if.end38

land.lhs.true33:                                  ; preds = %if.end28
  %afbc_crop_l34 = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 4
  %28 = ptrtoint ptr %afbc_crop_l34 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %afbc_crop_l34, align 4
  %30 = and i16 %29, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool36.not = icmp eq i16 %30, 0
  br i1 %tobool36.not, label %land.lhs.true33.cleanup_crit_edge, label %if.then37

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %sub15) #6
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 843853912, i32 %16)
  %cmp39 = icmp eq i32 %16, 843853912
  %or.cond76 = select i1 %cmp39, i1 %cmp31, i1 false
  br i1 %or.cond76, label %land.lhs.true44, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true44:                                  ; preds = %if.end38
  %addr = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 8
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr, align 4
  %rem45 = and i32 %32, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem45)
  %tobool46.not = icmp eq i32 %rem45, 0
  br i1 %tobool46.not, label %land.lhs.true44.cleanup_crit_edge, label %if.then47

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %sub15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %land.lhs.true44.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then37, %land.lhs.true33.cleanup_crit_edge, %if.then26
  %retval.0 = phi i32 [ -22, %if.then26 ], [ -22, %if.then37 ], [ -22, %if.then47 ], [ 0, %land.lhs.true44.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ 0, %land.lhs.true33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_layer_update(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state1, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fb2, align 4
  %reg6 = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %7 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg6, align 4
  %rot = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %rot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rot, align 4
  %and.i = and i32 %10, 15
  %switch.tableidx = add nsw i32 %and.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 7
  br i1 %11, label %switch.lookup, label %entry.to_rot_ctrl.exit_crit_edge

entry.to_rot_ctrl.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_rot_ctrl.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.d71_layer_update, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %to_rot_ctrl.exit

to_rot_ctrl.exit:                                 ; preds = %switch.lookup, %entry.to_rot_ctrl.exit_crit_edge
  %lr_ctrl.0.i = phi i32 [ 0, %entry.to_rot_ctrl.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %addr = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 8
  tail call fastcc void @d71_layer_update_fb(ptr noundef %c, ptr noundef %6, ptr noundef %addr)
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 8
  %13 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not.i = icmp eq i64 %14, 0
  br i1 %tobool.not.i, label %to_rot_ctrl.exit.to_ad_ctrl.exit_crit_edge, label %if.end.i

to_rot_ctrl.exit.to_ad_ctrl.exit_crit_edge:       ; preds = %to_rot_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_ad_ctrl.exit

if.end.i:                                         ; preds = %to_rot_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and.i85 = and i64 %14, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %and.i85)
  %cmp.i = icmp eq i64 %and.i85, 2
  %spec.select.i = select i1 %cmp.i, i32 9, i32 1
  %15 = trunc i64 %14 to i32
  %16 = lshr i32 %15, 3
  %17 = and i32 %16, 2
  %18 = or i32 %17, %spec.select.i
  %19 = and i32 %16, 4
  %20 = or i32 %18, %19
  %21 = lshr i32 %15, 4
  %22 = and i32 %21, 16
  %23 = or i32 %20, %22
  br label %to_ad_ctrl.exit

to_ad_ctrl.exit:                                  ; preds = %if.end.i, %to_rot_ctrl.exit.to_ad_ctrl.exit_crit_edge
  %retval.0.i = phi i32 [ %23, %if.end.i ], [ 0, %to_rot_ctrl.exit.to_ad_ctrl.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  %add.ptr.i = getelementptr i32, ptr %8, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #6, !srcloc !333
  %25 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool.not = icmp eq i64 %26, 0
  br i1 %tobool.not, label %to_ad_ctrl.exit.if.end33_crit_edge, label %if.then

to_ad_ctrl.exit.if.end33_crit_edge:               ; preds = %to_ad_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then:                                          ; preds = %to_ad_ctrl.exit
  %afbc_crop_l = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 4
  %27 = ptrtoint ptr %afbc_crop_l to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %afbc_crop_l, align 4
  %29 = and i16 %28, 4095
  %and = zext i16 %29 to i32
  %afbc_crop_r = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 5
  %30 = ptrtoint ptr %afbc_crop_r to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %afbc_crop_r, align 2
  %32 = and i16 %31, 4095
  %and11 = zext i16 %32 to i32
  %shl = shl nuw nsw i32 %and11, 16
  %add = or i32 %shl, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  %add.ptr.i86 = getelementptr i32, ptr %8, i32 89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %33) #6, !srcloc !333
  %afbc_crop_t = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 6
  %34 = ptrtoint ptr %afbc_crop_t to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %afbc_crop_t, align 4
  %36 = and i16 %35, 4095
  %and13 = zext i16 %36 to i32
  %afbc_crop_b = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 7
  %37 = ptrtoint ptr %afbc_crop_b to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %afbc_crop_b, align 2
  %39 = and i16 %38, 4095
  %and15 = zext i16 %39 to i32
  %shl16 = shl nuw nsw i32 %and15, 16
  %add17 = or i32 %shl16, %and13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %add17) #6
  %add.ptr.i87 = getelementptr i32, ptr %8, i32 90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %40) #6, !srcloc !333
  %41 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %modifier, align 8
  %and19 = and i64 %42, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19)
  %tobool20.not = icmp eq i64 %and19, 0
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr, align 4
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %offset_payload = getelementptr inbounds %struct.komeda_fb, ptr %6, i32 0, i32 6
  %45 = ptrtoint ptr %offset_payload to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset_payload, align 4
  %add23 = add i32 %46, %44
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %afbc_size = getelementptr inbounds %struct.komeda_fb, ptr %6, i32 0, i32 5
  %47 = ptrtoint ptr %afbc_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %afbc_size, align 8
  %add27 = add i32 %44, -1
  %sub = add i32 %add27, %48
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then21
  %addr9.0.in = phi i32 [ %add23, %if.then21 ], [ %sub, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %addr9.0.in) #6
  %add.ptr.i88 = getelementptr i32, ptr %8, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %49) #6, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %add.ptr.i89 = getelementptr i32, ptr %8, i32 69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 0) #6, !srcloc !333
  br label %if.end33

if.end33:                                         ; preds = %if.end, %to_ad_ctrl.exit.if.end33_crit_edge
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %6, i32 0, i32 4
  %50 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %format, align 8
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_yuv, align 1, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool34.not = icmp eq i8 %53, 0
  br i1 %tobool34.not, label %if.end33.if.end42_crit_edge, label %if.then35

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then35:                                        ; preds = %if.end33
  %format_caps = getelementptr inbounds %struct.komeda_fb, ptr %6, i32 0, i32 1
  %54 = ptrtoint ptr %format_caps to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %format_caps, align 8
  %fourcc = getelementptr inbounds %struct.komeda_format_caps, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fourcc, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %57, label %if.then35.sw.epilog_crit_edge [
    i32 1448695129, label %sw.bb
    i32 1498831189, label %sw.bb38
  ]

if.then35.sw.epilog_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %tobool37.not = icmp eq i64 %60, 0
  %phi.bo = select i1 %tobool37.not, i32 16777216, i32 0
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb, %if.then35.sw.epilog_crit_edge
  %upsampling.0 = phi i32 [ 16777216, %sw.bb38 ], [ %phi.bo, %sw.bb ], [ 0, %if.then35.sw.epilog_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %add.ptr.i90 = getelementptr i32, ptr %8, i32 53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %upsampling.0) #6, !srcloc !333
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 17
  %61 = ptrtoint ptr %color_encoding to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %color_encoding, align 4
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 18
  %63 = ptrtoint ptr %color_range to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %color_range, align 4
  %call41 = tail call ptr @komeda_select_yuv2rgb_coeffs(i32 noundef %62, i32 noundef %64) #6
  %65 = ptrtoint ptr %call41 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call41, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  %add.ptr.i.i = getelementptr i32, ptr %8, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %67) #6, !srcloc !333
  %arrayidx.i.1 = getelementptr i32, ptr %call41, i32 1
  %68 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  %add.ptr.i.i.1 = getelementptr i32, ptr %8, i32 77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 %70) #6, !srcloc !333
  %arrayidx.i.2 = getelementptr i32, ptr %call41, i32 2
  %71 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  %add.ptr.i.i.2 = getelementptr i32, ptr %8, i32 78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2, i32 %73) #6, !srcloc !333
  %arrayidx.i.3 = getelementptr i32, ptr %call41, i32 3
  %74 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #6
  %add.ptr.i.i.3 = getelementptr i32, ptr %8, i32 79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3, i32 %76) #6, !srcloc !333
  %arrayidx.i.4 = getelementptr i32, ptr %call41, i32 4
  %77 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #6
  %add.ptr.i.i.4 = getelementptr i32, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.4, i32 %79) #6, !srcloc !333
  %arrayidx.i.5 = getelementptr i32, ptr %call41, i32 5
  %80 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #6
  %add.ptr.i.i.5 = getelementptr i32, ptr %8, i32 81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.5, i32 %82) #6, !srcloc !333
  %arrayidx.i.6 = getelementptr i32, ptr %call41, i32 6
  %83 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  %add.ptr.i.i.6 = getelementptr i32, ptr %8, i32 82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.6, i32 %85) #6, !srcloc !333
  %arrayidx.i.7 = getelementptr i32, ptr %call41, i32 7
  %86 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  %add.ptr.i.i.7 = getelementptr i32, ptr %8, i32 83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.7, i32 %88) #6, !srcloc !333
  %arrayidx.i.8 = getelementptr i32, ptr %call41, i32 8
  %89 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i.8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #6
  %add.ptr.i.i.8 = getelementptr i32, ptr %8, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.8, i32 %91) #6, !srcloc !333
  %arrayidx.i.9 = getelementptr i32, ptr %call41, i32 9
  %92 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i.9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #6
  %add.ptr.i.i.9 = getelementptr i32, ptr %8, i32 85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.9, i32 %94) #6, !srcloc !333
  %arrayidx.i.10 = getelementptr i32, ptr %call41, i32 10
  %95 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #6
  %add.ptr.i.i.10 = getelementptr i32, ptr %8, i32 86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.10, i32 %97) #6, !srcloc !333
  %arrayidx.i.11 = getelementptr i32, ptr %call41, i32 11
  %98 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i.11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #6
  %add.ptr.i.i.11 = getelementptr i32, ptr %8, i32 87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.11, i32 %100) #6, !srcloc !333
  br label %if.end42

if.end42:                                         ; preds = %sw.epilog, %if.end33.if.end42_crit_edge
  %and7.i = shl i32 %10, 6
  %101 = and i32 %and7.i, 3072
  %102 = or i32 %lr_ctrl.0.i, %101
  %hsize = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 1
  %103 = ptrtoint ptr %hsize to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %hsize, align 4
  %105 = and i16 %104, 8191
  %and44 = zext i16 %105 to i32
  %vsize = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 2
  %106 = ptrtoint ptr %vsize to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vsize, align 2
  %108 = and i16 %107, 8191
  %and46 = zext i16 %108 to i32
  %shl47 = shl nuw nsw i32 %and46, 16
  %add48 = or i32 %shl47, %and44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %109 = tail call i32 @llvm.bswap.i32(i32 %add48) #6
  %add.ptr.i91 = getelementptr i32, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %109) #6, !srcloc !333
  %is_va = getelementptr inbounds %struct.komeda_fb, ptr %6, i32 0, i32 2
  %110 = ptrtoint ptr %is_va to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %is_va, align 4, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool49.not = icmp eq i8 %111, 0
  %spec.select.v = select i1 %tobool49.not, i32 1, i32 65537
  %spec.select = or i32 %102, %spec.select.v
  %add.ptr.i.i92 = getelementptr i32, ptr %8, i32 52
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92) #6, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %113 = and i32 %112, -17760513
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  %or.i = or i32 %spec.select, %114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %115 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i92, i32 %115) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_layer_disable(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_layer_dump(ptr nocapture noundef readonly %c, ptr noundef %sf) #0 align 64 {
for.inc.i124:
  %v = alloca [15 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %v) #6
  %0 = getelementptr inbounds i8, ptr %v, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %arrayidx = getelementptr inbounds [15 x i32], ptr %v, i32 0, i32 14
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.7..str.6 = select i1 %tobool.not, ptr @.str.7, ptr @.str.6
  %and3 = and i32 %5, 2
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  tail call fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %8)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.8, ptr noundef nonnull %.str.7..str.6, i32 noundef %5) #6
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %add.ptr.i.i119 = getelementptr i32, ptr %10, i32 52
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i119) #6, !srcloc !330
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.9, ptr noundef nonnull %.str.7..str.6, i32 noundef %12) #6
  br i1 %tobool.not, label %for.inc.i124.for.inc.i176.1_crit_edge, label %for.inc.i137

for.inc.i124.for.inc.i176.1_crit_edge:            ; preds = %for.inc.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i176.1

for.inc.i137:                                     ; preds = %for.inc.i124
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  %add.ptr.i.i132 = getelementptr i32, ptr %14, i32 53
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i132) #6, !srcloc !330
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.10, i32 noundef %16) #6
  br label %for.inc.i176.1

for.inc.i176.1:                                   ; preds = %for.inc.i137, %for.inc.i124.for.inc.i176.1_crit_edge
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  %add.ptr.i.i145 = getelementptr i32, ptr %18, i32 54
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i145) #6, !srcloc !330
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %21 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %v, align 4
  %add.ptr.i.i145.1 = getelementptr i32, ptr %18, i32 55
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i145.1) #6, !srcloc !330
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %24 = getelementptr inbounds i32, ptr %v, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %24, align 4
  %add.ptr.i.i145.2 = getelementptr i32, ptr %18, i32 56
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i145.2) #6, !srcloc !330
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %28 = getelementptr inbounds i32, ptr %v, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %28, align 4
  %add.ptr.i.i145.3 = getelementptr i32, ptr %18, i32 57
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i145.3) #6, !srcloc !330
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %32 = getelementptr inbounds i32, ptr %v, i32 3
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %32, align 4
  %34 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.7..str.6, i32 noundef %35) #6
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.12, ptr noundef nonnull %.str.7..str.6, i32 noundef %37) #6
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.13, ptr noundef nonnull %.str.7..str.6, i32 noundef %39) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.14, ptr noundef nonnull %.str.7..str.6, i32 noundef %31) #6
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg, align 4
  %add.ptr.i.i158 = getelementptr i32, ptr %41, i32 64
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i158) #6, !srcloc !330
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %44 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %v, align 4
  %add.ptr.i.i158.1 = getelementptr i32, ptr %41, i32 65
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i158.1) #6, !srcloc !330
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %24, align 4
  %add.ptr.i.i158.2 = getelementptr i32, ptr %41, i32 66
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i158.2) #6, !srcloc !330
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %50 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.15, ptr noundef nonnull %.str.7..str.6, i32 noundef %51) #6
  %52 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.16, ptr noundef nonnull %.str.7..str.6, i32 noundef %53) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.7..str.6, i32 noundef %49) #6
  %54 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg, align 4
  %add.ptr.i.i171 = getelementptr i32, ptr %55, i32 68
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i171) #6, !srcloc !330
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %58 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %v, align 4
  %add.ptr.i.i171.1 = getelementptr i32, ptr %55, i32 69
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i171.1) #6, !srcloc !330
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.18, ptr noundef nonnull %.str.7..str.6, i32 noundef %57) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.19, ptr noundef nonnull %.str.7..str.6, i32 noundef %60) #6
  br i1 %tobool.not, label %for.inc.i176.1.if.end43_crit_edge, label %for.inc.i215.11

for.inc.i176.1.if.end43_crit_edge:                ; preds = %for.inc.i176.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

for.inc.i215.11:                                  ; preds = %for.inc.i176.1
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg, align 4
  %add.ptr.i.i184 = getelementptr i32, ptr %62, i32 70
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i184) #6, !srcloc !330
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.20, i32 noundef %64) #6
  %65 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg, align 4
  %add.ptr.i.i197 = getelementptr i32, ptr %66, i32 72
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i197) #6, !srcloc !330
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %69 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %v, align 4
  %add.ptr.i.i197.1 = getelementptr i32, ptr %66, i32 73
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i197.1) #6, !srcloc !330
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.21, i32 noundef %68) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.22, i32 noundef %71) #6
  %72 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg, align 4
  %add.ptr.i.i210 = getelementptr i32, ptr %73, i32 76
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210) #6, !srcloc !330
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %76 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %v, align 4
  %add.ptr.i.i210.1 = getelementptr i32, ptr %73, i32 77
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.1) #6, !srcloc !330
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %79 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %24, align 4
  %add.ptr.i.i210.2 = getelementptr i32, ptr %73, i32 78
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.2) #6, !srcloc !330
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %82 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %28, align 4
  %add.ptr.i.i210.3 = getelementptr i32, ptr %73, i32 79
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.3) #6, !srcloc !330
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %85 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %32, align 4
  %add.ptr.i.i210.4 = getelementptr i32, ptr %73, i32 80
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.4) #6, !srcloc !330
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %88 = getelementptr inbounds i32, ptr %v, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %87, ptr %88, align 4
  %add.ptr.i.i210.5 = getelementptr i32, ptr %73, i32 81
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.5) #6, !srcloc !330
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %92 = getelementptr inbounds i32, ptr %v, i32 5
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %91, ptr %92, align 4
  %add.ptr.i.i210.6 = getelementptr i32, ptr %73, i32 82
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.6) #6, !srcloc !330
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %96 = getelementptr inbounds i32, ptr %v, i32 6
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %95, ptr %96, align 4
  %add.ptr.i.i210.7 = getelementptr i32, ptr %73, i32 83
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.7) #6, !srcloc !330
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %100 = getelementptr inbounds i32, ptr %v, i32 7
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %99, ptr %100, align 4
  %add.ptr.i.i210.8 = getelementptr i32, ptr %73, i32 84
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.8) #6, !srcloc !330
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %104 = getelementptr inbounds i32, ptr %v, i32 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %103, ptr %104, align 4
  %add.ptr.i.i210.9 = getelementptr i32, ptr %73, i32 85
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.9) #6, !srcloc !330
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %108 = getelementptr inbounds i32, ptr %v, i32 9
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %107, ptr %108, align 4
  %add.ptr.i.i210.10 = getelementptr i32, ptr %73, i32 86
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.10) #6, !srcloc !330
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %112 = getelementptr inbounds i32, ptr %v, i32 10
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %111, ptr %112, align 4
  %add.ptr.i.i210.11 = getelementptr i32, ptr %73, i32 87
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i210.11) #6, !srcloc !330
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %116 = getelementptr inbounds i32, ptr %v, i32 11
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %115, ptr %116, align 4
  %118 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %119) #6
  %120 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef %121) #6
  %122 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 2, i32 noundef %123) #6
  %124 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 3, i32 noundef %125) #6
  %126 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %88, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 4, i32 noundef %127) #6
  %128 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %92, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 5, i32 noundef %129) #6
  %130 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %96, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 6, i32 noundef %131) #6
  %132 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %100, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 7, i32 noundef %133) #6
  %134 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %104, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 8, i32 noundef %135) #6
  %136 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %108, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 9, i32 noundef %137) #6
  %138 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %112, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 10, i32 noundef %139) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.23, i32 noundef 11, i32 noundef %115) #6
  br label %if.end43

if.end43:                                         ; preds = %for.inc.i215.11, %for.inc.i176.1.if.end43_crit_edge
  br i1 %tobool4.not, label %if.end43.for.inc.i241.2_crit_edge, label %for.inc.i228.11

if.end43.for.inc.i241.2_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i241.2

for.inc.i228.11:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %140 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg, align 4
  %add.ptr.i.i223 = getelementptr i32, ptr %141, i32 92
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223) #6, !srcloc !330
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %144 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %v, align 4
  %add.ptr.i.i223.1 = getelementptr i32, ptr %141, i32 93
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.1) #6, !srcloc !330
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %147 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %24, align 4
  %add.ptr.i.i223.2 = getelementptr i32, ptr %141, i32 94
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.2) #6, !srcloc !330
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %150 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %28, align 4
  %add.ptr.i.i223.3 = getelementptr i32, ptr %141, i32 95
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.3) #6, !srcloc !330
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %153 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %32, align 4
  %add.ptr.i.i223.4 = getelementptr i32, ptr %141, i32 96
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.4) #6, !srcloc !330
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %156 = getelementptr inbounds i32, ptr %v, i32 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %155, ptr %156, align 4
  %add.ptr.i.i223.5 = getelementptr i32, ptr %141, i32 97
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.5) #6, !srcloc !330
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %160 = getelementptr inbounds i32, ptr %v, i32 5
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %159, ptr %160, align 4
  %add.ptr.i.i223.6 = getelementptr i32, ptr %141, i32 98
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.6) #6, !srcloc !330
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %164 = getelementptr inbounds i32, ptr %v, i32 6
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %163, ptr %164, align 4
  %add.ptr.i.i223.7 = getelementptr i32, ptr %141, i32 99
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.7) #6, !srcloc !330
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %168 = getelementptr inbounds i32, ptr %v, i32 7
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %167, ptr %168, align 4
  %add.ptr.i.i223.8 = getelementptr i32, ptr %141, i32 100
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.8) #6, !srcloc !330
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %172 = getelementptr inbounds i32, ptr %v, i32 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %171, ptr %172, align 4
  %add.ptr.i.i223.9 = getelementptr i32, ptr %141, i32 101
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.9) #6, !srcloc !330
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %176 = getelementptr inbounds i32, ptr %v, i32 9
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %175, ptr %176, align 4
  %add.ptr.i.i223.10 = getelementptr i32, ptr %141, i32 102
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.10) #6, !srcloc !330
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %180 = getelementptr inbounds i32, ptr %v, i32 10
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %179, ptr %180, align 4
  %add.ptr.i.i223.11 = getelementptr i32, ptr %141, i32 103
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i223.11) #6, !srcloc !330
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %184 = getelementptr inbounds i32, ptr %v, i32 11
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %183, ptr %184, align 4
  %186 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef %187) #6
  %188 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef %189) #6
  %190 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef %191) #6
  %192 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 3, i32 noundef %193) #6
  %194 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %156, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef %195) #6
  %196 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %160, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 5, i32 noundef %197) #6
  %198 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %164, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 6, i32 noundef %199) #6
  %200 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %168, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 7, i32 noundef %201) #6
  %202 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %172, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 8, i32 noundef %203) #6
  %204 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %176, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 9, i32 noundef %205) #6
  %206 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %180, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 10, i32 noundef %207) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.24, i32 noundef 11, i32 noundef %183) #6
  br label %for.inc.i241.2

for.inc.i241.2:                                   ; preds = %for.inc.i228.11, %if.end43.for.inc.i241.2_crit_edge
  %208 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %reg, align 4
  %add.ptr.i.i236 = getelementptr i32, ptr %209, i32 88
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i236) #6, !srcloc !330
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %212 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %v, align 4
  %add.ptr.i.i236.1 = getelementptr i32, ptr %209, i32 89
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i236.1) #6, !srcloc !330
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %215 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %24, align 4
  %add.ptr.i.i236.2 = getelementptr i32, ptr %209, i32 90
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i236.2) #6, !srcloc !330
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %218 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.25, ptr noundef nonnull %.str.7..str.6, i32 noundef %219) #6
  %220 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.26, ptr noundef nonnull %.str.7..str.6, i32 noundef %221) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.27, ptr noundef nonnull %.str.7..str.6, i32 noundef %217) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %v) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @d71_layer_update_fb(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %kfb, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %kfb, i32 0, i32 4
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %reg1 = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg1, align 4
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ugt i8 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i32, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !335
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %add.ptr.i = getelementptr i32, ptr %3, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !336
  tail call void @arm_heavy_mb() #6
  %add.ptr8.i = getelementptr i32, ptr %3, i32 73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #6, !srcloc !333
  %9 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %num_planes, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = phi i8 [ %.pr, %if.then ], [ %5, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp6 = icmp ugt i8 %10, 1
  br i1 %cmp6, label %if.then8, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @drm_format_info_block_height(ptr noundef %1, i32 noundef 1) #6
  %arrayidx9 = getelementptr %struct.drm_framebuffer, ptr %kfb, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  %mul = mul i32 %12, %call
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %mul) #6
  %add.ptr.i33 = getelementptr i32, ptr %3, i32 70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %13) #6, !srcloc !333
  %arrayidx10 = getelementptr i32, ptr %addr, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !335
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %add.ptr.i34 = getelementptr i32, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %16) #6, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !336
  tail call void @arm_heavy_mb() #6
  %add.ptr8.i35 = getelementptr i32, ptr %3, i32 69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i35, i32 0) #6, !srcloc !333
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %call13 = tail call i32 @drm_format_info_block_height(ptr noundef %1, i32 noundef 0) #6
  %pitches14 = getelementptr inbounds %struct.drm_framebuffer, ptr %kfb, i32 0, i32 6
  %17 = ptrtoint ptr %pitches14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pitches14, align 8
  %mul16 = mul i32 %18, %call13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %mul16) #6
  %add.ptr.i36 = getelementptr i32, ptr %3, i32 66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %19) #6, !srcloc !333
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !335
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %add.ptr.i37 = getelementptr i32, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %22) #6, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !336
  tail call void @arm_heavy_mb() #6
  %add.ptr8.i38 = getelementptr i32, ptr %3, i32 65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i38, i32 0) #6, !srcloc !333
  %format_caps = getelementptr inbounds %struct.komeda_fb, ptr %kfb, i32 0, i32 1
  %23 = ptrtoint ptr %format_caps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format_caps, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %add.ptr.i39 = getelementptr i32, ptr %3, i32 54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %27) #6, !srcloc !333
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @komeda_select_yuv2rgb_coeffs(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_height(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %reg) unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.block_header, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hdr) #6
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 64)
  call void @d71_read_block_header(ptr noundef %reg, ptr noundef nonnull %hdr) #6
  %1 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hdr, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.28, i32 noundef %2) #6
  %pipeline_info = getelementptr inbounds %struct.block_header, ptr %hdr, i32 0, i32 1
  %3 = ptrtoint ptr %pipeline_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pipeline_info, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.29, i32 noundef %4) #6
  %5 = ptrtoint ptr %pipeline_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pipeline_info, align 4
  %and = and i32 %6, 15
  %and3 = lshr i32 %6, 8
  %shr = and i32 %and3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp21.not = icmp eq i32 %shr, 0
  br i1 %cmp21.not, label %entry.for.cond4.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp523.not = icmp eq i32 %and, 0
  br i1 %cmp523.not, label %for.cond4.preheader.for.end10_crit_edge, label %for.cond4.preheader.for.body6_crit_edge

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.cond4.preheader.for.end10_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.block_header, ptr %hdr, i32 0, i32 2, i32 %i.022
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.30, i32 noundef %i.022, i32 noundef %8) #6
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.body.for.cond4.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.cond4.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.preheader

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %i.124 = phi i32 [ %inc9, %for.body6.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %arrayidx7 = getelementptr %struct.block_header, ptr %hdr, i32 0, i32 3, i32 %i.124
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.31, i32 noundef %i.124, i32 noundef %10) #6
  %inc9 = add nuw nsw i32 %i.124, 1
  %exitcond25.not = icmp eq i32 %inc9, %and
  br i1 %exitcond25.not, label %for.body6.for.end10_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.body6.for.end10_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end10

for.end10:                                        ; preds = %for.body6.for.end10_crit_edge, %for.cond4.preheader.for.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hdr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d71_read_block_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_wb_layer_update(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state1 = getelementptr inbounds %struct.drm_connector, ptr %2, i32 0, i32 52
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state1, align 8
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %writeback_job, align 4
  %fb = getelementptr inbounds %struct.drm_writeback_job, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fb, align 4
  %reg5 = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %9 = ptrtoint ptr %reg5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg5, align 4
  %addr = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 8
  tail call fastcc void @d71_layer_update_fb(ptr noundef %c, ptr noundef %8, ptr noundef %addr)
  %is_va = getelementptr inbounds %struct.komeda_fb, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %is_va to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_va, align 4, !range !334
  %hsize = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 1
  %13 = ptrtoint ptr %hsize to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hsize, align 4
  %15 = and i16 %14, 8191
  %and = zext i16 %15 to i32
  %vsize = getelementptr inbounds %struct.komeda_layer_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %vsize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vsize, align 2
  %18 = and i16 %17, 8191
  %and7 = zext i16 %18 to i32
  %shl = shl nuw nsw i32 %and7, 16
  %add = or i32 %shl, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  %add.ptr.i = getelementptr i32, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #6, !srcloc !333
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 3
  %20 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %active_inputs.i, align 4
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i, label %entry.to_d71_input_id.exit_crit_edge, label %if.then.i

entry.to_d71_input_id.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_d71_input_id.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 0
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %hw_id.i = getelementptr inbounds %struct.komeda_component, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_id.i, align 4
  %output_port.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 0, i32 1
  %27 = ptrtoint ptr %output_port.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %output_port.i, align 4
  %conv1.i = zext i8 %28 to i32
  %add.i = add i32 %26, %conv1.i
  br label %to_d71_input_id.exit

to_d71_input_id.exit:                             ; preds = %if.then.i, %entry.to_d71_input_id.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ 0, %entry.to_d71_input_id.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %spec.select = select i1 %tobool.not, i32 17, i32 65553
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  %add.ptr.i17 = getelementptr i32, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %29) #6, !srcloc !333
  %add.ptr.i.i = getelementptr i32, ptr %10, i32 52
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %31 = and i32 %30, -285212929
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %or.i = or i32 %32, %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %33) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_wb_layer_disable(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i32, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !333
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_wb_layer_dump(ptr nocapture noundef readonly %c, ptr noundef %sf) #0 align 64 {
for.inc.i97.11:
  %v = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %v) #6
  %0 = getelementptr inbounds i8, ptr %v, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 36)
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  tail call fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %3)
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.34, i32 noundef %7) #6
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %add.ptr.i.i53 = getelementptr i32, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #6, !srcloc !330
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %12 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %v, align 4
  %add.ptr.i.i53.1 = getelementptr i32, ptr %9, i32 53
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53.1) #6, !srcloc !330
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %15 = getelementptr inbounds i32, ptr %v, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %15, align 4
  %add.ptr.i.i53.2 = getelementptr i32, ptr %9, i32 54
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53.2) #6, !srcloc !330
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %19 = getelementptr inbounds i32, ptr %v, i32 2
  %20 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.35, i32 noundef %21) #6
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.36, i32 noundef %23) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.37, i32 noundef %18) #6
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg, align 4
  %add.ptr.i.i66 = getelementptr i32, ptr %25, i32 56
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i66) #6, !srcloc !330
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.38, i32 noundef %27) #6
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg, align 4
  %add.ptr.i.i79 = getelementptr i32, ptr %29, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79) #6, !srcloc !330
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %32 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %v, align 4
  %add.ptr.i.i79.1 = getelementptr i32, ptr %29, i32 65
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79.1) #6, !srcloc !330
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %15, align 4
  %add.ptr.i.i79.2 = getelementptr i32, ptr %29, i32 66
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79.2) #6, !srcloc !330
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %38 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef %39) #6
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef %41) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef %37) #6
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg, align 4
  %add.ptr.i.i79.1102 = getelementptr i32, ptr %43, i32 68
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79.1102) #6, !srcloc !330
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %46 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %v, align 4
  %add.ptr.i.i79.1.1 = getelementptr i32, ptr %43, i32 69
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79.1.1) #6, !srcloc !330
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %49 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %15, align 4
  %add.ptr.i.i79.2.1 = getelementptr i32, ptr %43, i32 70
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79.2.1) #6, !srcloc !330
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %52 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.39, i32 noundef 1, i32 noundef %53) #6
  %54 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef %55) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.41, i32 noundef 1, i32 noundef %51) #6
  %56 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg, align 4
  %add.ptr.i.i92 = getelementptr i32, ptr %57, i32 76
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92) #6, !srcloc !330
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %60 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %v, align 4
  %add.ptr.i.i92.1 = getelementptr i32, ptr %57, i32 77
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.1) #6, !srcloc !330
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %63 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %15, align 4
  %add.ptr.i.i92.2 = getelementptr i32, ptr %57, i32 78
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.2) #6, !srcloc !330
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %66 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %19, align 4
  %add.ptr.i.i92.3 = getelementptr i32, ptr %57, i32 79
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.3) #6, !srcloc !330
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %69 = getelementptr inbounds i32, ptr %v, i32 3
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %68, ptr %69, align 4
  %add.ptr.i.i92.4 = getelementptr i32, ptr %57, i32 80
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.4) #6, !srcloc !330
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %73 = getelementptr inbounds i32, ptr %v, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %72, ptr %73, align 4
  %add.ptr.i.i92.5 = getelementptr i32, ptr %57, i32 81
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.5) #6, !srcloc !330
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %77 = getelementptr inbounds i32, ptr %v, i32 5
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %76, ptr %77, align 4
  %add.ptr.i.i92.6 = getelementptr i32, ptr %57, i32 82
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.6) #6, !srcloc !330
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %81 = getelementptr inbounds i32, ptr %v, i32 6
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %80, ptr %81, align 4
  %add.ptr.i.i92.7 = getelementptr i32, ptr %57, i32 83
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.7) #6, !srcloc !330
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %85 = getelementptr inbounds i32, ptr %v, i32 7
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %84, ptr %85, align 4
  %add.ptr.i.i92.8 = getelementptr i32, ptr %57, i32 84
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.8) #6, !srcloc !330
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %89 = getelementptr inbounds i32, ptr %v, i32 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %88, ptr %89, align 4
  %add.ptr.i.i92.9 = getelementptr i32, ptr %57, i32 85
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.9) #6, !srcloc !330
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %93 = getelementptr inbounds i32, ptr %v, i32 9
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %92, ptr %93, align 4
  %add.ptr.i.i92.10 = getelementptr i32, ptr %57, i32 86
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.10) #6, !srcloc !330
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %97 = getelementptr inbounds i32, ptr %v, i32 10
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %96, ptr %97, align 4
  %add.ptr.i.i92.11 = getelementptr i32, ptr %57, i32 87
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.11) #6, !srcloc !330
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %101 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef %102) #6
  %103 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef %104) #6
  %105 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 2, i32 noundef %106) #6
  %107 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %69, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 3, i32 noundef %108) #6
  %109 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %73, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 4, i32 noundef %110) #6
  %111 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %77, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 5, i32 noundef %112) #6
  %113 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %81, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 6, i32 noundef %114) #6
  %115 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %85, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 7, i32 noundef %116) #6
  %117 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %89, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 8, i32 noundef %118) #6
  %119 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %93, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 9, i32 noundef %120) #6
  %121 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %97, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 10, i32 noundef %122) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.42, i32 noundef 11, i32 noundef %100) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %v) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_compiz_update(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %component = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component, align 4
  %max_active_inputs39 = getelementptr inbounds %struct.komeda_component, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %max_active_inputs39 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_active_inputs39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp41.not = icmp eq i8 %5, 0
  br i1 %cmp41.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %affected_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 5
  %active_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 3
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %index.042
  %6 = ptrtoint ptr %affected_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %affected_inputs.i.i, align 4
  %8 = ptrtoint ptr %active_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %active_inputs.i.i, align 4
  %xor4.i.i = xor i16 %9, %7
  %10 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %changed_active_inputs.i, align 2
  %or4.i = or i16 %xor4.i.i, %11
  %conv3 = zext i16 %or4.i to i32
  %and = and i32 %shl, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %add.ptr4 = getelementptr i32, ptr %1, i32 %index.042
  %mul = shl i32 %index.042, 2
  %add.ptr5 = getelementptr i32, ptr %1, i32 %mul
  %conv6 = zext i16 %9 to i32
  %and8 = and i32 %shl, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %to_d71_input_id.exit

to_d71_input_id.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 %index.042
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %hw_id.i = getelementptr inbounds %struct.komeda_component, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_id.i, align 4
  %output_port.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 %index.042, i32 1
  %16 = ptrtoint ptr %output_port.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %output_port.i, align 4
  %conv1.i = zext i8 %17 to i32
  %add.i = add i32 %15, %conv1.i
  %arrayidx = getelementptr %struct.komeda_compiz_state, ptr %state, i32 0, i32 3, i32 %index.042
  %pixel_blend_mode.i = getelementptr %struct.komeda_compiz_state, ptr %state, i32 0, i32 3, i32 %index.042, i32 4
  %18 = ptrtoint ptr %pixel_blend_mode.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pixel_blend_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %switch.selectcmp.i = icmp eq i8 %19, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i32 5, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %switch.selectcmp32.i = icmp eq i8 %19, 2
  %switch.select33.i = select i1 %switch.selectcmp32.i, i32 3, i32 %switch.select.i
  %layer_alpha.i = getelementptr %struct.komeda_compiz_state, ptr %state, i32 0, i32 3, i32 %index.042, i32 5
  %20 = ptrtoint ptr %layer_alpha.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %layer_alpha.i, align 1
  %conv8.i = zext i8 %21 to i32
  %shl.i35 = shl nuw nsw i32 %conv8.i, 8
  %or9.i = or i32 %switch.select33.i, %shl.i35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %add.i) #6
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #6, !srcloc !333
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  %25 = and i16 %24, 8191
  %and11.i = zext i16 %25 to i32
  %vsize.i = getelementptr %struct.komeda_compiz_state, ptr %state, i32 0, i32 3, i32 %index.042, i32 1
  %26 = ptrtoint ptr %vsize.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vsize.i, align 2
  %28 = and i16 %27, 8191
  %and13.i = zext i16 %28 to i32
  %shl14.i = shl nuw nsw i32 %and13.i, 16
  %add.i36 = or i32 %shl14.i, %and11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %add.i36) #6
  %add.ptr.i34.i = getelementptr i32, ptr %add.ptr5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %29) #6, !srcloc !333
  %hoffset.i = getelementptr %struct.komeda_compiz_state, ptr %state, i32 0, i32 3, i32 %index.042, i32 2
  %30 = ptrtoint ptr %hoffset.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hoffset.i, align 2
  %32 = and i16 %31, 4095
  %and16.i = zext i16 %32 to i32
  %voffset.i = getelementptr %struct.komeda_compiz_state, ptr %state, i32 0, i32 3, i32 %index.042, i32 3
  %33 = ptrtoint ptr %voffset.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %voffset.i, align 2
  %35 = and i16 %34, 4095
  %and18.i = zext i16 %35 to i32
  %shl19.i = shl nuw nsw i32 %and18.i, 16
  %add20.i = or i32 %shl19.i, %and16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %add20.i) #6
  %add.ptr.i35.i = getelementptr i32, ptr %add.ptr5, i32 57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %36) #6, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #6
  %add.ptr.i36.i = getelementptr i32, ptr %add.ptr5, i32 58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %37) #6, !srcloc !333
  br label %for.inc

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i32, ptr %add.ptr4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %add.ptr.i37 = getelementptr i32, ptr %add.ptr5, i32 58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 0) #6, !srcloc !333
  br label %for.inc

for.inc:                                          ; preds = %if.else, %to_d71_input_id.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.042, 1
  %38 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %component, align 4
  %max_active_inputs = getelementptr inbounds %struct.komeda_component, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %max_active_inputs to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %max_active_inputs, align 4
  %conv = zext i8 %41 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %hsize = getelementptr inbounds %struct.komeda_compiz_state, ptr %state, i32 0, i32 1
  %42 = ptrtoint ptr %hsize to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hsize, align 4
  %44 = and i16 %43, 8191
  %and14 = zext i16 %44 to i32
  %vsize = getelementptr inbounds %struct.komeda_compiz_state, ptr %state, i32 0, i32 2
  %45 = ptrtoint ptr %vsize to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vsize, align 2
  %47 = and i16 %46, 8191
  %and16 = zext i16 %47 to i32
  %shl17 = shl nuw nsw i32 %and16, 16
  %add = or i32 %shl17, %and14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  %add.ptr.i38 = getelementptr i32, ptr %1, i32 53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %48) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_component_disable(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i32, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !333
  %max_active_inputs = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 6
  %2 = ptrtoint ptr %max_active_inputs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_active_inputs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp17.not = icmp eq i8 %3, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %id = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %4 = add nuw nsw i32 %i.018, 32
  %add.ptr.i13 = getelementptr i32, ptr %1, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #6, !srcloc !333
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %shl3 = shl nuw i32 1, %6
  %and = and i32 %shl3, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %mul4 = shl i32 %i.018, 4
  %add5 = add nuw nsw i32 %mul4, 232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %shr.i14 = lshr exact i32 %add5, 2
  %add.ptr.i15 = getelementptr i32, ptr %1, i32 %shr.i14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 16711680) #6, !srcloc !333
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.018, 1
  %7 = ptrtoint ptr %max_active_inputs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max_active_inputs, align 4
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_compiz_dump(ptr nocapture noundef readonly %c, ptr noundef %sf) #0 align 64 {
for.inc.i99:
  %v = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %v) #6
  %0 = getelementptr inbounds [8 x i32], ptr %v, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %v, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %v, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %v, i32 0, i32 4
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %4 = getelementptr inbounds i8, ptr %v, i32 20
  %5 = call ptr @memset(ptr %4, i32 255, i32 12)
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  tail call fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %7)
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %12 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %v, align 4
  %add.ptr.i.i.1 = getelementptr i32, ptr %9, i32 33
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #6, !srcloc !330
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %0, align 4
  %add.ptr.i.i.2 = getelementptr i32, ptr %9, i32 34
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2) #6, !srcloc !330
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %1, align 4
  %add.ptr.i.i.3 = getelementptr i32, ptr %9, i32 35
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3) #6, !srcloc !330
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %2, align 4
  %add.ptr.i.i.4 = getelementptr i32, ptr %9, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4) #6, !srcloc !330
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %24 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef %25) #6
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.44, i32 noundef 1, i32 noundef %27) #6
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.44, i32 noundef 2, i32 noundef %29) #6
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.44, i32 noundef 3, i32 noundef %31) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef %23) #6
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg, align 4
  %add.ptr.i.i68 = getelementptr i32, ptr %33, i32 40
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #6, !srcloc !330
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %36 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %v, align 4
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -559030611, ptr %0, align 4
  %add.ptr.i.i68.2 = getelementptr i32, ptr %33, i32 42
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.2) #6, !srcloc !330
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %1, align 4
  %add.ptr.i.i68.3 = getelementptr i32, ptr %33, i32 43
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.3) #6, !srcloc !330
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %2, align 4
  %add.ptr.i.i68.4 = getelementptr i32, ptr %33, i32 44
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.4) #6, !srcloc !330
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %46 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.45, i32 noundef %47) #6
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.46, i32 noundef %49) #6
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.47, i32 noundef %51) #6
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.48, i32 noundef %53) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.49, i32 noundef %45) #6
  %54 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg, align 4
  %add.ptr.i.i81 = getelementptr i32, ptr %55, i32 52
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81) #6, !srcloc !330
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %58 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %v, align 4
  %add.ptr.i.i81.1 = getelementptr i32, ptr %55, i32 53
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81.1) #6, !srcloc !330
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.50, i32 noundef %57) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.51, i32 noundef %60) #6
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg, align 4
  %add.ptr.i.i94 = getelementptr i32, ptr %62, i32 55
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i94) #6, !srcloc !330
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.52, i32 noundef %64) #6
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 224, ptr %3, align 4
  br label %for.body19

for.body19:                                       ; preds = %if.then.i108.2.for.body19_crit_edge, %for.inc.i99
  %i.1129 = phi i32 [ 0, %for.inc.i99 ], [ %inc27, %if.then.i108.2.for.body19_crit_edge ]
  %storemerge128 = phi i32 [ 224, %for.inc.i99 ], [ %add, %if.then.i108.2.for.body19_crit_edge ]
  %66 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg, align 4
  %shr.i.i106 = lshr exact i32 %storemerge128, 2
  %add.ptr.i.i107 = getelementptr i32, ptr %67, i32 %shr.i.i106
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107) #6, !srcloc !330
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.i103.1 = or i32 %storemerge128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 164, i32 %add.i103.1)
  %cmp1.not.i104.1 = icmp eq i32 %add.i103.1, 164
  br i1 %cmp1.not.i104.1, label %for.body19.if.then.i108.2_crit_edge, label %for.inc.i112.1

for.body19.if.then.i108.2_crit_edge:              ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i108.2

for.inc.i112.1:                                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i.i106.1 = lshr exact i32 %add.i103.1, 2
  %add.ptr.i.i107.1 = getelementptr i32, ptr %67, i32 %shr.i.i106.1
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107.1) #6, !srcloc !330
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %add.i103.2 = or i32 %storemerge128, 8
  br label %if.then.i108.2

if.then.i108.2:                                   ; preds = %for.inc.i112.1, %for.body19.if.then.i108.2_crit_edge
  %72 = phi i32 [ %71, %for.inc.i112.1 ], [ -559030611, %for.body19.if.then.i108.2_crit_edge ]
  %add.i103.2137 = phi i32 [ %add.i103.2, %for.inc.i112.1 ], [ 168, %for.body19.if.then.i108.2_crit_edge ]
  %shr.i.i106.2 = lshr i32 %add.i103.2137, 2
  %add.ptr.i.i107.2 = getelementptr i32, ptr %67, i32 %shr.i.i106.2
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107.2) #6, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.53, i32 noundef %i.1129, i32 noundef %69) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.54, i32 noundef %i.1129, i32 noundef %72) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.55, i32 noundef %i.1129, i32 noundef %74) #6
  %inc27 = add nuw nsw i32 %i.1129, 1
  %add = add i32 %storemerge128, 16
  %exitcond.not = icmp eq i32 %inc27, 5
  br i1 %exitcond.not, label %for.inc.i125.1, label %if.then.i108.2.for.body19_crit_edge

if.then.i108.2.for.body19_crit_edge:              ; preds = %if.then.i108.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19

for.inc.i125.1:                                   ; preds = %if.then.i108.2
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %0, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %74, ptr %1, align 4
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add, ptr %3, align 4
  %78 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %69, ptr %v, align 4
  %79 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg, align 4
  %add.ptr.i.i120 = getelementptr i32, ptr %80, i32 76
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i120) #6, !srcloc !330
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %83 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %v, align 4
  %add.ptr.i.i120.1 = getelementptr i32, ptr %80, i32 77
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i120.1) #6, !srcloc !330
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.56, i32 noundef %82) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.57, i32 noundef %85) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %v) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_scaler_update(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %hsize_in = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %hsize_in to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hsize_in, align 4
  %conv = zext i16 %3 to i32
  %vsize_in = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %vsize_in to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vsize_in, align 2
  %conv2 = zext i16 %5 to i32
  %hsize_out = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %hsize_out to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hsize_out, align 4
  %conv3 = zext i16 %7 to i32
  %vsize_out = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 4
  %8 = ptrtoint ptr %vsize_out to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vsize_out, align 2
  %conv4 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %7)
  %cmp.not.i = icmp ugt i16 %3, %7
  br i1 %cmp.not.i, label %if.else.i, label %entry.if.end20.i_crit_edge

entry.if.end20.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.else.i:                                        ; preds = %entry
  %div75.i = lshr i32 %conv3, 1
  %add.i = add nuw nsw i32 %div75.i, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv)
  %cmp1.not.i = icmp ult i32 %add.i, %conv
  br i1 %cmp1.not.i, label %if.else4.i, label %if.else.i.if.end20.i_crit_edge

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.else4.i:                                       ; preds = %if.else.i
  %mul.i = shl nuw nsw i32 %conv3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %conv)
  %cmp5.not.i = icmp ult i32 %mul.i, %conv
  br i1 %cmp5.not.i, label %if.else8.i, label %if.else4.i.if.end20.i_crit_edge

if.else4.i.if.end20.i_crit_edge:                  ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.else8.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul10.i = mul nuw nsw i32 %conv3, 3
  %div1176.i = lshr i32 %mul10.i, 2
  %add12.i = add nuw nsw i32 %div1176.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %conv)
  %cmp13.not.i = icmp ult i32 %add12.i, %conv
  %..i = select i1 %cmp13.not.i, i32 102, i32 101
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else8.i, %if.else4.i.if.end20.i_crit_edge, %if.else.i.if.end20.i_crit_edge, %entry.if.end20.i_crit_edge
  %val.0.i = phi i32 [ 98, %entry.if.end20.i_crit_edge ], [ 99, %if.else.i.if.end20.i_crit_edge ], [ 100, %if.else4.i.if.end20.i_crit_edge ], [ %..i, %if.else8.i ]
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %9)
  %cmp21.not.i = icmp ugt i16 %5, %9
  br i1 %cmp21.not.i, label %if.else24.i, label %if.end20.i.d71_scaler_update_filter_lut.exit_crit_edge

if.end20.i.d71_scaler_update_filter_lut.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %d71_scaler_update_filter_lut.exit

if.else24.i:                                      ; preds = %if.end20.i
  %div2577.i = lshr i32 %conv4, 1
  %add26.i = add nuw nsw i32 %div2577.i, %conv4
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %conv2)
  %cmp27.not.i = icmp ult i32 %add26.i, %conv2
  br i1 %cmp27.not.i, label %if.else30.i, label %if.else24.i.d71_scaler_update_filter_lut.exit_crit_edge

if.else24.i.d71_scaler_update_filter_lut.exit_crit_edge: ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %d71_scaler_update_filter_lut.exit

if.else30.i:                                      ; preds = %if.else24.i
  %mul31.i = shl nuw nsw i32 %conv4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul31.i, i32 %conv2)
  %cmp32.not.i = icmp ult i32 %mul31.i, %conv2
  br i1 %cmp32.not.i, label %if.else35.i, label %if.else30.i.d71_scaler_update_filter_lut.exit_crit_edge

if.else30.i.d71_scaler_update_filter_lut.exit_crit_edge: ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %d71_scaler_update_filter_lut.exit

if.else35.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul37.i = mul nuw nsw i32 %conv4, 3
  %div3878.i = lshr i32 %mul37.i, 2
  %add39.i = add nuw nsw i32 %div3878.i, %mul31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add39.i, i32 %conv2)
  %cmp40.not.i = icmp ult i32 %add39.i, %conv2
  %.79.i = select i1 %cmp40.not.i, i32 7208960, i32 7143424
  br label %d71_scaler_update_filter_lut.exit

d71_scaler_update_filter_lut.exit:                ; preds = %if.else35.i, %if.else30.i.d71_scaler_update_filter_lut.exit_crit_edge, %if.else24.i.d71_scaler_update_filter_lut.exit_crit_edge, %if.end20.i.d71_scaler_update_filter_lut.exit_crit_edge
  %.sink.i = phi i32 [ 6946816, %if.end20.i.d71_scaler_update_filter_lut.exit_crit_edge ], [ 7012352, %if.else24.i.d71_scaler_update_filter_lut.exit_crit_edge ], [ 7077888, %if.else30.i.d71_scaler_update_filter_lut.exit_crit_edge ], [ %.79.i, %if.else35.i ]
  %or29.i = or i32 %.sink.i, %val.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or29.i) #6
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #6, !srcloc !333
  %11 = ptrtoint ptr %hsize_in to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hsize_in, align 4
  %13 = and i16 %12, 8191
  %and = zext i16 %13 to i32
  %14 = ptrtoint ptr %vsize_in to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsize_in, align 2
  %16 = and i16 %15, 8191
  %and9 = zext i16 %16 to i32
  %shl = shl nuw nsw i32 %and9, 16
  %add = or i32 %shl, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  %add.ptr.i = getelementptr i32, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #6, !srcloc !333
  %18 = ptrtoint ptr %hsize_out to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hsize_out, align 4
  %20 = and i16 %19, 8191
  %and12 = zext i16 %20 to i32
  %21 = ptrtoint ptr %vsize_out to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vsize_out, align 2
  %23 = and i16 %22, 8191
  %and15 = zext i16 %23 to i32
  %shl16 = shl nuw nsw i32 %and15, 16
  %add17 = or i32 %shl16, %and12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %add17) #6
  %add.ptr.i155 = getelementptr i32, ptr %1, i32 57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %24) #6, !srcloc !333
  %left_crop = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 8
  %25 = ptrtoint ptr %left_crop to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %left_crop, align 2
  %27 = and i16 %26, 4095
  %and19 = zext i16 %27 to i32
  %right_crop = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 9
  %28 = ptrtoint ptr %right_crop to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %right_crop, align 4
  %30 = and i16 %29, 4095
  %and21 = zext i16 %30 to i32
  %shl22 = shl nuw nsw i32 %and21, 16
  %add23 = or i32 %shl22, %and19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %add23) #6
  %add.ptr.i156 = getelementptr i32, ptr %1, i32 58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %31) #6, !srcloc !333
  %right_part = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 10
  %32 = ptrtoint ptr %right_part to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %right_part, align 2
  %33 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %d71_scaler_update_filter_lut.exit
  call void @__sanitizer_cov_trace_pc() #8
  %total_hsize_out = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 7
  %34 = ptrtoint ptr %total_hsize_out to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %total_hsize_out, align 4
  %conv24 = zext i16 %35 to i32
  %36 = ptrtoint ptr %hsize_out to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hsize_out, align 4
  %conv26 = zext i16 %37 to i32
  %38 = ptrtoint ptr %left_crop to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %left_crop, align 2
  %conv28 = zext i16 %39 to i32
  %40 = shl i8 %bf.load, 2
  %sext = ashr i8 %40, 7
  %sub35 = sext i8 %sext to i32
  %sub = add nsw i32 %conv24, %sub35
  %add29 = sub nsw i32 %sub, %conv26
  %spec.select = add nsw i32 %add29, %conv28
  %total_hsize_in = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 5
  %41 = ptrtoint ptr %total_hsize_in to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %total_hsize_in, align 4
  %conv36 = zext i16 %42 to i32
  %mul = shl nsw i32 %spec.select, 1
  %add37 = or i32 %mul, 1
  %mul38 = mul i32 %add37, %conv36
  %mul41 = shl nuw nsw i32 %conv24, 1
  %43 = ptrtoint ptr %hsize_in to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hsize_in, align 4
  %conv45 = zext i16 %44 to i32
  %sub46.neg = sub nsw i32 %conv45, %conv36
  %mul47.neg = mul i32 %mul41, %sub46.neg
  %sub48 = add i32 %mul38, %mul47.neg
  %shl49 = shl i32 %sub48, 15
  %div = udiv i32 %shl49, %conv24
  br label %if.end58

if.else:                                          ; preds = %d71_scaler_update_filter_lut.exit
  call void @__sanitizer_cov_trace_pc() #8
  %total_hsize_in52 = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 5
  %45 = ptrtoint ptr %total_hsize_in52 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %total_hsize_in52, align 4
  %conv53 = zext i16 %46 to i32
  %shl54 = shl nuw nsw i32 %conv53, 15
  %total_hsize_out55 = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 7
  %47 = ptrtoint ptr %total_hsize_out55 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %total_hsize_out55, align 4
  %conv56 = zext i16 %48 to i32
  %div57 = udiv i32 %shl54, %conv56
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then
  %init_ph.0 = phi i32 [ %div, %if.then ], [ %div57, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %init_ph.0) #6
  %add.ptr.i157 = getelementptr i32, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %49) #6, !srcloc !333
  %total_hsize_in59 = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 5
  %50 = ptrtoint ptr %total_hsize_in59 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %total_hsize_in59, align 4
  %conv60 = zext i16 %51 to i32
  %shl61 = shl nuw i32 %conv60, 16
  %total_hsize_out62 = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 7
  %52 = ptrtoint ptr %total_hsize_out62 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %total_hsize_out62, align 4
  %conv63 = zext i16 %53 to i32
  %div64 = sdiv i32 %shl61, %conv63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %54 = tail call i32 @llvm.bswap.i32(i32 %div64) #6
  %add.ptr.i158 = getelementptr i32, ptr %1, i32 61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %54) #6, !srcloc !333
  %total_vsize_in = getelementptr inbounds %struct.komeda_scaler_state, ptr %state, i32 0, i32 6
  %55 = ptrtoint ptr %total_vsize_in to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %total_vsize_in, align 2
  %conv65 = zext i16 %56 to i32
  %shl66 = shl nuw nsw i32 %conv65, 15
  %57 = ptrtoint ptr %vsize_out to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vsize_out, align 2
  %conv68 = zext i16 %58 to i32
  %div69 = udiv i32 %shl66, %conv68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %59 = tail call i32 @llvm.bswap.i32(i32 %div69) #6
  %add.ptr.i159 = getelementptr i32, ptr %1, i32 62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %59) #6, !srcloc !333
  %60 = ptrtoint ptr %total_vsize_in to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %total_vsize_in, align 2
  %conv71 = zext i16 %61 to i32
  %shl72 = shl nuw i32 %conv71, 16
  %62 = ptrtoint ptr %vsize_out to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vsize_out, align 2
  %conv74 = zext i16 %63 to i32
  %div75 = sdiv i32 %shl72, %conv74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %div75) #6
  %add.ptr.i160 = getelementptr i32, ptr %1, i32 63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %64) #6, !srcloc !333
  %65 = ptrtoint ptr %right_part to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load76 = load i8, ptr %right_part, align 2
  %bf.load76.lobit = lshr i8 %bf.load76, 7
  %66 = lshr i8 %bf.load76, 2
  %67 = and i8 %66, 16
  %or86153 = or i8 %67, %bf.load76.lobit
  %or86 = zext i8 %or86153 to i32
  %68 = and i8 %bf.load76, 32
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 3
  %or94 = or i32 %70, %or86
  %71 = and i8 %bf.load76, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool99.not = icmp eq i8 %71, 0
  br i1 %tobool99.not, label %if.end58.if.end103_crit_edge, label %land.lhs.true

if.end58.if.end103_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

land.lhs.true:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %inputs = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 6
  %72 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %inputs, align 4
  %id = getelementptr inbounds %struct.komeda_component, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %75)
  %cmp.not = icmp eq i32 %75, 12
  %or102 = or i32 %or94, 2
  %spec.select154 = select i1 %cmp.not, i32 %or94, i32 %or102
  br label %if.end103

if.end103:                                        ; preds = %land.lhs.true, %if.end58.if.end103_crit_edge
  %ctrl.0 = phi i32 [ %or94, %if.end58.if.end103_crit_edge ], [ %spec.select154, %land.lhs.true ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %76 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0) #6
  %add.ptr.i161 = getelementptr i32, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 %76) #6, !srcloc !333
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 3
  %77 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %active_inputs.i, align 4
  %79 = and i16 %78, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool.not.i = icmp eq i16 %79, 0
  br i1 %tobool.not.i, label %if.end103.to_d71_input_id.exit_crit_edge, label %if.then.i

if.end103.to_d71_input_id.exit_crit_edge:         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_d71_input_id.exit

if.then.i:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 0
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i, align 4
  %hw_id.i = getelementptr inbounds %struct.komeda_component, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hw_id.i, align 4
  %output_port.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 0, i32 1
  %84 = ptrtoint ptr %output_port.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %output_port.i, align 4
  %conv1.i = zext i8 %85 to i32
  %add.i162 = add i32 %83, %conv1.i
  br label %to_d71_input_id.exit

to_d71_input_id.exit:                             ; preds = %if.then.i, %if.end103.to_d71_input_id.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i162, %if.then.i ], [ 0, %if.end103.to_d71_input_id.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %86 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  %add.ptr.i163 = getelementptr i32, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %86) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_scaler_dump(ptr nocapture noundef readonly %c, ptr noundef %sf) #0 align 64 {
for.inc.i90.9:
  %v = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %v) #6
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  tail call fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %1)
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.60, i32 noundef %5) #6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %add.ptr.i.i59 = getelementptr i32, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59) #6, !srcloc !330
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.61, i32 noundef %9) #6
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %add.ptr.i.i72 = getelementptr i32, ptr %11, i32 55
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #6, !srcloc !330
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %14 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %v, align 4
  %add.ptr.i.i72.1 = getelementptr i32, ptr %11, i32 56
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72.1) #6, !srcloc !330
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %17 = getelementptr inbounds i32, ptr %v, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 4
  %add.ptr.i.i72.2 = getelementptr i32, ptr %11, i32 57
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72.2) #6, !srcloc !330
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %21 = getelementptr inbounds i32, ptr %v, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %21, align 4
  %add.ptr.i.i72.3 = getelementptr i32, ptr %11, i32 58
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72.3) #6, !srcloc !330
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %25 = getelementptr inbounds i32, ptr %v, i32 3
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %25, align 4
  %add.ptr.i.i72.4 = getelementptr i32, ptr %11, i32 59
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72.4) #6, !srcloc !330
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %29 = getelementptr inbounds i32, ptr %v, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 4
  %add.ptr.i.i72.5 = getelementptr i32, ptr %11, i32 60
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72.5) #6, !srcloc !330
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %33 = getelementptr inbounds i32, ptr %v, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %33, align 4
  %add.ptr.i.i72.6 = getelementptr i32, ptr %11, i32 61
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72.6) #6, !srcloc !330
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %37 = getelementptr inbounds i32, ptr %v, i32 6
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %37, align 4
  %add.ptr.i.i72.7 = getelementptr i32, ptr %11, i32 62
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72.7) #6, !srcloc !330
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %41 = getelementptr inbounds i32, ptr %v, i32 7
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %41, align 4
  %add.ptr.i.i72.8 = getelementptr i32, ptr %11, i32 63
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72.8) #6, !srcloc !330
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %45 = getelementptr inbounds i32, ptr %v, i32 8
  %46 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.62, i32 noundef %47) #6
  %48 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.63, i32 noundef %49) #6
  %50 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.64, i32 noundef %51) #6
  %52 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.65, i32 noundef %53) #6
  %54 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.66, i32 noundef %55) #6
  %56 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.67, i32 noundef %57) #6
  %58 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.68, i32 noundef %59) #6
  %60 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.69, i32 noundef %61) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.70, i32 noundef %44) #6
  %62 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg, align 4
  %add.ptr.i.i85 = getelementptr i32, ptr %63, i32 76
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85) #6, !srcloc !330
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %66 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %v, align 4
  %add.ptr.i.i85.1 = getelementptr i32, ptr %63, i32 77
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85.1) #6, !srcloc !330
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %69 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %17, align 4
  %add.ptr.i.i85.2 = getelementptr i32, ptr %63, i32 78
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85.2) #6, !srcloc !330
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %72 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %21, align 4
  %add.ptr.i.i85.3 = getelementptr i32, ptr %63, i32 79
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85.3) #6, !srcloc !330
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %75 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %25, align 4
  %add.ptr.i.i85.4 = getelementptr i32, ptr %63, i32 80
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85.4) #6, !srcloc !330
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %78 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %29, align 4
  %add.ptr.i.i85.5 = getelementptr i32, ptr %63, i32 81
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85.5) #6, !srcloc !330
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %81 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %33, align 4
  %add.ptr.i.i85.6 = getelementptr i32, ptr %63, i32 82
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85.6) #6, !srcloc !330
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %84 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %37, align 4
  %add.ptr.i.i85.7 = getelementptr i32, ptr %63, i32 83
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85.7) #6, !srcloc !330
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %87 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %41, align 4
  %add.ptr.i.i85.8 = getelementptr i32, ptr %63, i32 84
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85.8) #6, !srcloc !330
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %90 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %45, align 4
  %add.ptr.i.i85.9 = getelementptr i32, ptr %63, i32 85
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85.9) #6, !srcloc !330
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %93 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.71, i32 noundef %94) #6
  %95 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.72, i32 noundef %96) #6
  %97 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.73, i32 noundef %98) #6
  %99 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.74, i32 noundef %100) #6
  %101 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.75, i32 noundef %102) #6
  %103 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.76, i32 noundef %104) #6
  %105 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.77, i32 noundef %106) #6
  %107 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.78, i32 noundef %108) #6
  %109 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.79, i32 noundef %110) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.80, i32 noundef %92) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %v) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_splitter_update(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %active_inputs.i, align 4
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %entry.to_d71_input_id.exit_crit_edge, label %if.then.i

entry.to_d71_input_id.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_d71_input_id.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %hw_id.i = getelementptr inbounds %struct.komeda_component, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_id.i, align 4
  %output_port.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 0, i32 1
  %9 = ptrtoint ptr %output_port.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %output_port.i, align 4
  %conv1.i = zext i8 %10 to i32
  %add.i = add i32 %8, %conv1.i
  br label %to_d71_input_id.exit

to_d71_input_id.exit:                             ; preds = %if.then.i, %entry.to_d71_input_id.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ 0, %entry.to_d71_input_id.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  %add.ptr.i = getelementptr i32, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !333
  %hsize = getelementptr inbounds %struct.komeda_splitter_state, ptr %state, i32 0, i32 1
  %12 = ptrtoint ptr %hsize to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hsize, align 4
  %14 = and i16 %13, 8191
  %and = zext i16 %14 to i32
  %vsize = getelementptr inbounds %struct.komeda_splitter_state, ptr %state, i32 0, i32 2
  %15 = ptrtoint ptr %vsize to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vsize, align 2
  %17 = and i16 %16, 8191
  %and3 = zext i16 %17 to i32
  %shl = shl nuw nsw i32 %and3, 16
  %add = or i32 %shl, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  %add.ptr.i12 = getelementptr i32, ptr %1, i32 53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %18) #6, !srcloc !333
  %overlap = getelementptr inbounds %struct.komeda_splitter_state, ptr %state, i32 0, i32 3
  %19 = ptrtoint ptr %overlap to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %overlap, align 4
  %21 = and i16 %20, 8191
  %and5 = zext i16 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %and5) #6
  %add.ptr.i13 = getelementptr i32, ptr %1, i32 54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %22) #6, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %add.ptr.i14 = getelementptr i32, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 16777216) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_splitter_dump(ptr nocapture noundef readonly %c, ptr noundef %sf) #0 align 64 {
for.inc.i24.2:
  %v = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %v) #6
  %0 = getelementptr inbounds [3 x i32], ptr %v, i32 0, i32 1
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg, align 4
  tail call fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %2)
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %4, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.83, i32 noundef %6) #6
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %add.ptr.i.i19 = getelementptr i32, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #6, !srcloc !330
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %11 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %v, align 4
  %add.ptr.i.i19.1 = getelementptr i32, ptr %8, i32 53
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.1) #6, !srcloc !330
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %0, align 4
  %add.ptr.i.i19.2 = getelementptr i32, ptr %8, i32 54
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.2) #6, !srcloc !330
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %17 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.84, i32 noundef %18) #6
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.85, i32 noundef %20) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.86, i32 noundef %16) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %v) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_merger_update(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %component = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component, align 4
  %max_active_inputs23 = getelementptr inbounds %struct.komeda_component, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %max_active_inputs23 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_active_inputs23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp25.not = icmp eq i8 %5, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %affected_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 5
  %active_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 3
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %index.026
  %6 = ptrtoint ptr %affected_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %affected_inputs.i.i, align 4
  %8 = ptrtoint ptr %active_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %active_inputs.i.i, align 4
  %xor4.i.i = xor i16 %9, %7
  %10 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %changed_active_inputs.i, align 2
  %or4.i = or i16 %xor4.i.i, %11
  %conv3 = zext i16 %or4.i to i32
  %and = and i32 %shl, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %conv.i = zext i16 %9 to i32
  %and.i = and i32 %shl, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.to_d71_input_id.exit_crit_edge, label %if.then.i

if.then.to_d71_input_id.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_d71_input_id.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 %index.026
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %hw_id.i = getelementptr inbounds %struct.komeda_component, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_id.i, align 4
  %output_port.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 %index.026, i32 1
  %16 = ptrtoint ptr %output_port.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %output_port.i, align 4
  %conv1.i = zext i8 %17 to i32
  %add.i = add i32 %15, %conv1.i
  br label %to_d71_input_id.exit

to_d71_input_id.exit:                             ; preds = %if.then.i, %if.then.to_d71_input_id.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ 0, %if.then.to_d71_input_id.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  %19 = add nuw nsw i32 %index.026, 32
  %add.ptr.i = getelementptr i32, ptr %1, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #6, !srcloc !333
  br label %for.inc

for.inc:                                          ; preds = %to_d71_input_id.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.026, 1
  %20 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %component, align 4
  %max_active_inputs = getelementptr inbounds %struct.komeda_component, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %max_active_inputs to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_active_inputs, align 4
  %conv = zext i8 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %hsize_merged = getelementptr inbounds %struct.komeda_merger_state, ptr %state, i32 0, i32 1
  %24 = ptrtoint ptr %hsize_merged to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hsize_merged, align 4
  %26 = and i16 %25, 8191
  %and6 = zext i16 %26 to i32
  %vsize_merged = getelementptr inbounds %struct.komeda_merger_state, ptr %state, i32 0, i32 2
  %27 = ptrtoint ptr %vsize_merged to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vsize_merged, align 2
  %29 = and i16 %28, 8191
  %and8 = zext i16 %29 to i32
  %shl9 = shl nuw nsw i32 %and8, 16
  %add10 = or i32 %shl9, %and6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %add10) #6
  %add.ptr.i21 = getelementptr i32, ptr %1, i32 53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %30) #6, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %add.ptr.i22 = getelementptr i32, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 16777216) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_merger_dump(ptr nocapture noundef readonly %c, ptr noundef %sf) #0 align 64 {
for.inc.i50:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  tail call fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %1)
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.89, i32 noundef %5) #6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %add.ptr.i.i19 = getelementptr i32, ptr %7, i32 33
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #6, !srcloc !330
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.90, i32 noundef %9) #6
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %add.ptr.i.i32 = getelementptr i32, ptr %11, i32 52
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #6, !srcloc !330
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.91, i32 noundef %13) #6
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %add.ptr.i.i45 = getelementptr i32, ptr %15, i32 53
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #6, !srcloc !330
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.92, i32 noundef %17) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_improc_update(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state1, align 4
  %pipeline = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 1
  %5 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pipeline, align 4
  %reg5 = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %7 = ptrtoint ptr %reg5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg5, align 4
  %component = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %component, align 4
  %max_active_inputs91 = getelementptr inbounds %struct.komeda_component, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %max_active_inputs91 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_active_inputs91, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp93.not = icmp eq i8 %12, 0
  br i1 %cmp93.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %affected_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 5
  %active_inputs.i.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 3
  %changed_active_inputs.i = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %index.094
  %13 = ptrtoint ptr %affected_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %affected_inputs.i.i, align 4
  %15 = ptrtoint ptr %active_inputs.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %active_inputs.i.i, align 4
  %xor4.i.i = xor i16 %16, %14
  %17 = ptrtoint ptr %changed_active_inputs.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %changed_active_inputs.i, align 2
  %or4.i = or i16 %xor4.i.i, %18
  %conv7 = zext i16 %or4.i to i32
  %and = and i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %conv.i = zext i16 %16 to i32
  %and.i = and i32 %shl, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.to_d71_input_id.exit_crit_edge, label %if.then.i

if.then.to_d71_input_id.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %to_d71_input_id.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 %index.094
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %hw_id.i = getelementptr inbounds %struct.komeda_component, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %hw_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_id.i, align 4
  %output_port.i = getelementptr %struct.komeda_component_state, ptr %state, i32 0, i32 6, i32 %index.094, i32 1
  %23 = ptrtoint ptr %output_port.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %output_port.i, align 4
  %conv1.i = zext i8 %24 to i32
  %add.i = add i32 %22, %conv1.i
  br label %to_d71_input_id.exit

to_d71_input_id.exit:                             ; preds = %if.then.i, %if.then.to_d71_input_id.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ 0, %if.then.to_d71_input_id.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  %26 = add nuw nsw i32 %index.094, 32
  %add.ptr.i = getelementptr i32, ptr %8, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #6, !srcloc !333
  br label %for.inc

for.inc:                                          ; preds = %to_d71_input_id.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.094, 1
  %27 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %component, align 4
  %max_active_inputs = getelementptr inbounds %struct.komeda_component, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %max_active_inputs to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %max_active_inputs, align 4
  %conv = zext i8 %30 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %hsize = getelementptr inbounds %struct.komeda_improc_state, ptr %state, i32 0, i32 3
  %31 = ptrtoint ptr %hsize to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hsize, align 2
  %33 = and i16 %32, 8191
  %and10 = zext i16 %33 to i32
  %vsize = getelementptr inbounds %struct.komeda_improc_state, ptr %state, i32 0, i32 4
  %34 = ptrtoint ptr %vsize to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vsize, align 4
  %36 = and i16 %35, 8191
  %and12 = zext i16 %36 to i32
  %shl13 = shl nuw nsw i32 %and12, 16
  %add14 = or i32 %shl13, %and10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %add14) #6
  %add.ptr.i78 = getelementptr i32, ptr %8, i32 53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %37) #6, !srcloc !333
  %color_depth = getelementptr inbounds %struct.komeda_improc_state, ptr %state, i32 0, i32 2
  %38 = ptrtoint ptr %color_depth to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %color_depth, align 1
  %conv15 = zext i8 %39 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %40 = shl nuw i32 %conv15, 24
  %add.ptr.i79 = getelementptr i32, ptr %8, i32 54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %40) #6, !srcloc !333
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 3
  %41 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %42 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %bf.cast.not = icmp eq i8 %42, 0
  br i1 %bf.cast.not, label %for.end.if.end26_crit_edge, label %if.then16

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then16:                                        ; preds = %for.end
  %gamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 12
  %43 = ptrtoint ptr %gamma_lut to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gamma_lut, align 4
  %tobool17.not = icmp eq ptr %44, null
  br i1 %tobool17.not, label %if.then16.if.end20_crit_edge, label %if.then18

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.then16
  %dou_ft_coeff_addr = getelementptr inbounds %struct.d71_pipeline, ptr %6, i32 0, i32 4
  %45 = ptrtoint ptr %dou_ft_coeff_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dou_ft_coeff_addr, align 4
  %fgamma_coeffs = getelementptr inbounds %struct.komeda_improc_state, ptr %state, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then18
  %i.05.i = phi i32 [ 0, %if.then18 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i80 = getelementptr i32, ptr %fgamma_coeffs, i32 %i.05.i
  %47 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i80, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  %50 = add nuw nsw i32 %i.05.i, 32
  %add.ptr.i.i = getelementptr i32, ptr %46, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %49) #6, !srcloc !333
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65
  br i1 %exitcond.not.i, label %for.body.i.if.end20_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end20_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end20:                                         ; preds = %for.body.i.if.end20_crit_edge, %if.then16.if.end20_crit_edge
  %ctrl.0 = phi i32 [ 0, %if.then16.if.end20_crit_edge ], [ 16, %for.body.i.if.end20_crit_edge ]
  %ctm = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 11
  %51 = ptrtoint ptr %ctm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctm, align 4
  %tobool21.not = icmp eq ptr %52, null
  br i1 %tobool21.not, label %if.end20.if.end26_crit_edge, label %if.then22

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %ctm_coeffs = getelementptr inbounds %struct.komeda_improc_state, ptr %state, i32 0, i32 6
  %53 = ptrtoint ptr %ctm_coeffs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ctm_coeffs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  %add.ptr.i.i84 = getelementptr i32, ptr %8, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84, i32 %55) #6, !srcloc !333
  %arrayidx.i82.1 = getelementptr %struct.komeda_improc_state, ptr %state, i32 0, i32 6, i32 1
  %56 = ptrtoint ptr %arrayidx.i82.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i82.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  %add.ptr.i.i84.1 = getelementptr i32, ptr %8, i32 77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.1, i32 %58) #6, !srcloc !333
  %arrayidx.i82.2 = getelementptr %struct.komeda_improc_state, ptr %state, i32 0, i32 6, i32 2
  %59 = ptrtoint ptr %arrayidx.i82.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i82.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  %add.ptr.i.i84.2 = getelementptr i32, ptr %8, i32 78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.2, i32 %61) #6, !srcloc !333
  %arrayidx.i82.3 = getelementptr %struct.komeda_improc_state, ptr %state, i32 0, i32 6, i32 3
  %62 = ptrtoint ptr %arrayidx.i82.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i82.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  %add.ptr.i.i84.3 = getelementptr i32, ptr %8, i32 79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.3, i32 %64) #6, !srcloc !333
  %arrayidx.i82.4 = getelementptr %struct.komeda_improc_state, ptr %state, i32 0, i32 6, i32 4
  %65 = ptrtoint ptr %arrayidx.i82.4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i82.4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  %add.ptr.i.i84.4 = getelementptr i32, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.4, i32 %67) #6, !srcloc !333
  %arrayidx.i82.5 = getelementptr %struct.komeda_improc_state, ptr %state, i32 0, i32 6, i32 5
  %68 = ptrtoint ptr %arrayidx.i82.5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i82.5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  %add.ptr.i.i84.5 = getelementptr i32, ptr %8, i32 81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.5, i32 %70) #6, !srcloc !333
  %arrayidx.i82.6 = getelementptr %struct.komeda_improc_state, ptr %state, i32 0, i32 6, i32 6
  %71 = ptrtoint ptr %arrayidx.i82.6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i82.6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  %add.ptr.i.i84.6 = getelementptr i32, ptr %8, i32 82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.6, i32 %73) #6, !srcloc !333
  %arrayidx.i82.7 = getelementptr %struct.komeda_improc_state, ptr %state, i32 0, i32 6, i32 7
  %74 = ptrtoint ptr %arrayidx.i82.7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i82.7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #6
  %add.ptr.i.i84.7 = getelementptr i32, ptr %8, i32 83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.7, i32 %76) #6, !srcloc !333
  %arrayidx.i82.8 = getelementptr %struct.komeda_improc_state, ptr %state, i32 0, i32 6, i32 8
  %77 = ptrtoint ptr %arrayidx.i82.8 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i82.8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #6
  %add.ptr.i.i84.8 = getelementptr i32, ptr %8, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.8, i32 %79) #6, !srcloc !333
  %or24 = or i32 %ctrl.0, 1
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end20.if.end26_crit_edge, %for.end.if.end26_crit_edge
  %mask.0 = phi i32 [ -1810, %if.then22 ], [ -1810, %if.end20.if.end26_crit_edge ], [ -1793, %for.end.if.end26_crit_edge ]
  %ctrl.1 = phi i32 [ %or24, %if.then22 ], [ %ctrl.0, %if.end20.if.end26_crit_edge ], [ 0, %for.end.if.end26_crit_edge ]
  %color_format = getelementptr inbounds %struct.komeda_improc_state, ptr %state, i32 0, i32 1
  %80 = ptrtoint ptr %color_format to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %color_format, align 4
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %81, label %if.end26.if.end48_crit_edge [
    i8 8, label %if.then31
    i8 4, label %if.then37
    i8 2, label %if.then44
  ]

if.end26.if.end48_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %or32 = or i32 %ctrl.1, 1792
  br label %if.end48

if.then37:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %or38 = or i32 %ctrl.1, 768
  br label %if.end48

if.then44:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %or45 = or i32 %ctrl.1, 256
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.then37, %if.then31, %if.end26.if.end48_crit_edge
  %ctrl.2 = phi i32 [ %or32, %if.then31 ], [ %or38, %if.then37 ], [ %or45, %if.then44 ], [ %ctrl.1, %if.end26.if.end48_crit_edge ]
  %add.ptr.i.i89 = getelementptr i32, ptr %8, i32 52
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i89) #6, !srcloc !330
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %and.i90 = and i32 %84, %mask.0
  %or.i = or i32 %and.i90, %ctrl.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %85 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i89, i32 %85) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_improc_dump(ptr nocapture noundef readonly %c, ptr noundef %sf) #0 align 64 {
for.inc.i93.11:
  %v = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %v) #6
  %0 = getelementptr inbounds i8, ptr %v, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  tail call fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %3)
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %8 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %v, align 4
  %add.ptr.i.i.1 = getelementptr i32, ptr %5, i32 33
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #6, !srcloc !330
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %11 = getelementptr inbounds i32, ptr %v, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.95, i32 noundef %7) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.96, i32 noundef %10) #6
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %add.ptr.i.i49 = getelementptr i32, ptr %13, i32 48
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49) #6, !srcloc !330
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.97, i32 noundef %15) #6
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg, align 4
  %add.ptr.i.i62 = getelementptr i32, ptr %17, i32 52
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62) #6, !srcloc !330
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %20 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %v, align 4
  %add.ptr.i.i62.1 = getelementptr i32, ptr %17, i32 53
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62.1) #6, !srcloc !330
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %11, align 4
  %add.ptr.i.i62.2 = getelementptr i32, ptr %17, i32 54
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62.2) #6, !srcloc !330
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %26 = getelementptr inbounds i32, ptr %v, i32 2
  %27 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.98, i32 noundef %28) #6
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.99, i32 noundef %30) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.100, i32 noundef %25) #6
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg, align 4
  %add.ptr.i.i75 = getelementptr i32, ptr %32, i32 76
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75) #6, !srcloc !330
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %35 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %v, align 4
  %add.ptr.i.i75.1 = getelementptr i32, ptr %32, i32 77
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.1) #6, !srcloc !330
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %11, align 4
  %add.ptr.i.i75.2 = getelementptr i32, ptr %32, i32 78
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.2) #6, !srcloc !330
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %26, align 4
  %add.ptr.i.i75.3 = getelementptr i32, ptr %32, i32 79
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.3) #6, !srcloc !330
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %44 = getelementptr inbounds i32, ptr %v, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %44, align 4
  %add.ptr.i.i75.4 = getelementptr i32, ptr %32, i32 80
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.4) #6, !srcloc !330
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %48 = getelementptr inbounds i32, ptr %v, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %48, align 4
  %add.ptr.i.i75.5 = getelementptr i32, ptr %32, i32 81
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.5) #6, !srcloc !330
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %52 = getelementptr inbounds i32, ptr %v, i32 5
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %51, ptr %52, align 4
  %add.ptr.i.i75.6 = getelementptr i32, ptr %32, i32 82
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.6) #6, !srcloc !330
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %56 = getelementptr inbounds i32, ptr %v, i32 6
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %55, ptr %56, align 4
  %add.ptr.i.i75.7 = getelementptr i32, ptr %32, i32 83
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.7) #6, !srcloc !330
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %60 = getelementptr inbounds i32, ptr %v, i32 7
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %59, ptr %60, align 4
  %add.ptr.i.i75.8 = getelementptr i32, ptr %32, i32 84
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.8) #6, !srcloc !330
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %64 = getelementptr inbounds i32, ptr %v, i32 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %63, ptr %64, align 4
  %add.ptr.i.i75.9 = getelementptr i32, ptr %32, i32 85
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.9) #6, !srcloc !330
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %68 = getelementptr inbounds i32, ptr %v, i32 9
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %67, ptr %68, align 4
  %add.ptr.i.i75.10 = getelementptr i32, ptr %32, i32 86
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.10) #6, !srcloc !330
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %72 = getelementptr inbounds i32, ptr %v, i32 10
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %71, ptr %72, align 4
  %add.ptr.i.i75.11 = getelementptr i32, ptr %32, i32 87
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75.11) #6, !srcloc !330
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %76 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 0, i32 noundef %77) #6
  %78 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 1, i32 noundef %79) #6
  %80 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 2, i32 noundef %81) #6
  %82 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %44, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 3, i32 noundef %83) #6
  %84 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %48, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 4, i32 noundef %85) #6
  %86 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %52, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 5, i32 noundef %87) #6
  %88 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %56, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 6, i32 noundef %89) #6
  %90 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %60, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 7, i32 noundef %91) #6
  %92 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %64, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 8, i32 noundef %93) #6
  %94 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %68, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 9, i32 noundef %95) #6
  %96 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %72, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 10, i32 noundef %97) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.101, i32 noundef 11, i32 noundef %75) #6
  %98 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg, align 4
  %add.ptr.i.i88 = getelementptr i32, ptr %99, i32 92
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88) #6, !srcloc !330
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %102 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %v, align 4
  %add.ptr.i.i88.1 = getelementptr i32, ptr %99, i32 93
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.1) #6, !srcloc !330
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %105 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %11, align 4
  %add.ptr.i.i88.2 = getelementptr i32, ptr %99, i32 94
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.2) #6, !srcloc !330
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %108 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %26, align 4
  %add.ptr.i.i88.3 = getelementptr i32, ptr %99, i32 95
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.3) #6, !srcloc !330
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %111 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %44, align 4
  %add.ptr.i.i88.4 = getelementptr i32, ptr %99, i32 96
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.4) #6, !srcloc !330
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %114 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %48, align 4
  %add.ptr.i.i88.5 = getelementptr i32, ptr %99, i32 97
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.5) #6, !srcloc !330
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %117 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %52, align 4
  %add.ptr.i.i88.6 = getelementptr i32, ptr %99, i32 98
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.6) #6, !srcloc !330
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %120 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %56, align 4
  %add.ptr.i.i88.7 = getelementptr i32, ptr %99, i32 99
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.7) #6, !srcloc !330
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %123 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %60, align 4
  %add.ptr.i.i88.8 = getelementptr i32, ptr %99, i32 100
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.8) #6, !srcloc !330
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %126 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %64, align 4
  %add.ptr.i.i88.9 = getelementptr i32, ptr %99, i32 101
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.9) #6, !srcloc !330
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %129 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %68, align 4
  %add.ptr.i.i88.10 = getelementptr i32, ptr %99, i32 102
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.10) #6, !srcloc !330
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %132 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %72, align 4
  %add.ptr.i.i88.11 = getelementptr i32, ptr %99, i32 103
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.11) #6, !srcloc !330
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %135 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 0, i32 noundef %136) #6
  %137 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 1, i32 noundef %138) #6
  %139 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 2, i32 noundef %140) #6
  %141 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %44, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 3, i32 noundef %142) #6
  %143 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %48, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 4, i32 noundef %144) #6
  %145 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %52, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 5, i32 noundef %146) #6
  %147 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %56, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 6, i32 noundef %148) #6
  %149 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %60, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 7, i32 noundef %150) #6
  %151 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %64, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 8, i32 noundef %152) #6
  %153 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %68, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 9, i32 noundef %154) #6
  %155 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %72, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 10, i32 noundef %156) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.102, i32 noundef 11, i32 noundef %134) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %v) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_timing_ctrlr_update(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.komeda_component_state, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state1, align 4
  %reg2 = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %5 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg2, align 4
  %crtc_hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 7, i32 13
  %7 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %crtc_hdisplay, align 4
  %conv = zext i16 %8 to i32
  %crtc_hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 7, i32 16
  %9 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %crtc_hsync_start, align 2
  %conv3 = zext i16 %10 to i32
  %sub = sub nsw i32 %conv3, %conv
  %crtc_hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 7, i32 17
  %11 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crtc_hsync_end, align 4
  %conv6 = zext i16 %12 to i32
  %sub9 = sub nsw i32 %conv6, %conv3
  %crtc_htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 7, i32 18
  %13 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %crtc_htotal, align 2
  %conv10 = zext i16 %14 to i32
  %sub13 = sub nsw i32 %conv10, %conv6
  %crtc_vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 7, i32 20
  %15 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %crtc_vdisplay, align 2
  %conv14 = zext i16 %16 to i32
  %crtc_vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 7, i32 23
  %17 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %crtc_vsync_start, align 4
  %conv15 = zext i16 %18 to i32
  %sub18 = sub nsw i32 %conv15, %conv14
  %crtc_vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 7, i32 24
  %19 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %crtc_vsync_end, align 2
  %conv19 = zext i16 %20 to i32
  %sub22 = sub nsw i32 %conv19, %conv15
  %crtc_vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 7, i32 25
  %21 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %crtc_vtotal, align 4
  %conv23 = zext i16 %22 to i32
  %sub26 = sub nsw i32 %conv23, %conv19
  %and = and i32 %conv, 8191
  %and27 = shl nuw i32 %conv14, 16
  %shl = and i32 %and27, 536805376
  %add = or i32 %shl, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  %add.ptr.i = getelementptr i32, ptr %6, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #6, !srcloc !333
  %and28 = and i32 %sub, 4095
  %and29 = shl i32 %sub13, 16
  %shl30 = and i32 %and29, 67043328
  %add31 = or i32 %shl30, %and28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %add31) #6
  %add.ptr.i77 = getelementptr i32, ptr %6, i32 57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %24) #6, !srcloc !333
  %and32 = and i32 %sub18, 16383
  %and33 = shl i32 %sub26, 16
  %shl34 = and i32 %and33, 16711680
  %add35 = or i32 %shl34, %and32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %add35) #6
  %add.ptr.i78 = getelementptr i32, ptr %6, i32 58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %25) #6, !srcloc !333
  %and36 = shl i32 %sub22, 16
  %shl37 = and i32 %and36, 16711680
  %and38 = and i32 %sub9, 1023
  %or = or i32 %shl37, %and38
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 7, i32 11
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and39 = shl i32 %27, 26
  %28 = and i32 %and39, 268435456
  %or40 = or i32 %or, %28
  %and42 = shl i32 %27, 12
  %29 = and i32 %and42, 4096
  %or45 = or i32 %or40, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or45) #6
  %add.ptr.i79 = getelementptr i32, ptr %6, i32 59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %30) #6, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %add.ptr.i80 = getelementptr i32, ptr %6, i32 53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 67108864) #6, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %add.ptr.i81 = getelementptr i32, ptr %6, i32 54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 83886080) #6, !srcloc !333
  %pipeline = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 1
  %31 = ptrtoint ptr %pipeline to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pipeline, align 4
  %dual_link = getelementptr inbounds %struct.komeda_pipeline, ptr %32, i32 0, i32 20
  %33 = ptrtoint ptr %dual_link to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dual_link, align 4, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool46.not = icmp eq i8 %34, 0
  br i1 %tobool46.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add47 = add nsw i32 %sub, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %add47) #6
  %add.ptr.i82 = getelementptr i32, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %35) #6, !srcloc !333
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.0 = phi i32 [ 65539, %if.then ], [ 3, %entry.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %value.0) #6
  %add.ptr.i83 = getelementptr i32, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %36) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_timing_ctrlr_disable(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !332
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #6, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d71_timing_ctrlr_dump(ptr nocapture noundef readonly %c, ptr noundef %sf) #0 align 64 {
for.inc.i112.4:
  %v = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %v) #6
  %0 = getelementptr inbounds [8 x i32], ptr %v, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %v, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %v, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %v, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %v, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %v, i32 0, i32 6
  %reg = getelementptr inbounds %struct.komeda_component, ptr %c, i32 0, i32 3
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  tail call fastcc void @dump_block_header(ptr noundef %sf, ptr noundef %7)
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %add.ptr.i.i = getelementptr i32, ptr %9, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !330
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.105, i32 noundef %11) #6
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %add.ptr.i.i68 = getelementptr i32, ptr %13, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #6, !srcloc !330
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %16 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %v, align 4
  %add.ptr.i.i68.1 = getelementptr i32, ptr %13, i32 53
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.1) #6, !srcloc !330
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %0, align 4
  %add.ptr.i.i68.2 = getelementptr i32, ptr %13, i32 54
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.2) #6, !srcloc !330
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %1, align 4
  %add.ptr.i.i68.3 = getelementptr i32, ptr %13, i32 55
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.3) #6, !srcloc !330
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %2, align 4
  %add.ptr.i.i68.4 = getelementptr i32, ptr %13, i32 56
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.4) #6, !srcloc !330
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %3, align 4
  %add.ptr.i.i68.5 = getelementptr i32, ptr %13, i32 57
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.5) #6, !srcloc !330
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %4, align 4
  %add.ptr.i.i68.6 = getelementptr i32, ptr %13, i32 58
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.6) #6, !srcloc !330
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %5, align 4
  %add.ptr.i.i68.7 = getelementptr i32, ptr %13, i32 59
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.7) #6, !srcloc !330
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %37 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.106, i32 noundef %38) #6
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.107, i32 noundef %40) #6
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.108, i32 noundef %42) #6
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.109, i32 noundef %44) #6
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.110, i32 noundef %46) #6
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.111, i32 noundef %48) #6
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.112, i32 noundef %50) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.113, i32 noundef %36) #6
  %51 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg, align 4
  %add.ptr.i.i81 = getelementptr i32, ptr %52, i32 64
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81) #6, !srcloc !330
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %55 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %v, align 4
  %add.ptr.i.i81.1 = getelementptr i32, ptr %52, i32 65
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81.1) #6, !srcloc !330
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %0, align 4
  %add.ptr.i.i81.2 = getelementptr i32, ptr %52, i32 66
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81.2) #6, !srcloc !330
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %61 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.114, i32 noundef %62) #6
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.115, i32 noundef %64) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.116, i32 noundef %60) #6
  %65 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg, align 4
  %add.ptr.i.i94 = getelementptr i32, ptr %66, i32 68
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i94) #6, !srcloc !330
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %69 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %v, align 4
  %add.ptr.i.i94.1 = getelementptr i32, ptr %66, i32 69
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i94.1) #6, !srcloc !330
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %0, align 4
  %add.ptr.i.i94.2 = getelementptr i32, ptr %66, i32 70
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i94.2) #6, !srcloc !330
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %75 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.117, i32 noundef 0, i32 noundef %76) #6
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.117, i32 noundef 1, i32 noundef %78) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.117, i32 noundef 2, i32 noundef %74) #6
  %79 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg, align 4
  %add.ptr.i.i107 = getelementptr i32, ptr %80, i32 72
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107) #6, !srcloc !330
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %83 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %v, align 4
  %add.ptr.i.i107.1 = getelementptr i32, ptr %80, i32 73
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107.1) #6, !srcloc !330
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %0, align 4
  %add.ptr.i.i107.2 = getelementptr i32, ptr %80, i32 74
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107.2) #6, !srcloc !330
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %1, align 4
  %add.ptr.i.i107.3 = getelementptr i32, ptr %80, i32 75
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107.3) #6, !srcloc !330
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %2, align 4
  %add.ptr.i.i107.4 = getelementptr i32, ptr %80, i32 76
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107.4) #6, !srcloc !330
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !331
  %95 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.118, i32 noundef 0, i32 noundef %96) #6
  %97 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.119, i32 noundef 0, i32 noundef %98) #6
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.118, i32 noundef 1, i32 noundef %100) #6
  %101 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.119, i32 noundef 1, i32 noundef %102) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.120, i32 noundef %94) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %v) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318}
!llvm.module.flags = !{!320, !321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1347, i32 3}
!2 = !{ptr @d71_pipeline_funcs, !3, !"d71_pipeline_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1432, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 420, i32 14}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 422, i32 3}
!8 = !{ptr @d71_layer_funcs, !9, !"d71_layer_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 400, i32 44}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 379, i32 4}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 386, i32 3}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 392, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 295, i32 12}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 298, i32 12}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 305, i32 17}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 308, i32 17}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 311, i32 18}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 314, i32 17}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 315, i32 17}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 316, i32 17}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 317, i32 17}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 320, i32 17}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 321, i32 17}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 322, i32 17}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 325, i32 17}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 326, i32 17}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 329, i32 18}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 332, i32 18}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 333, i32 18}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 337, i32 19}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 343, i32 19}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 347, i32 17}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 348, i32 17}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 349, i32 17}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 94, i32 17}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 95, i32 17}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 101, i32 18}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 105, i32 18}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 538, i32 6}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 540, i32 3}
!72 = !{ptr @d71_wb_layer_funcs, !73, !"d71_wb_layer_funcs", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 519, i32 44}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 491, i32 17}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 494, i32 17}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 495, i32 17}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 496, i32 17}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 499, i32 17}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 503, i32 18}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 504, i32 18}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 505, i32 18}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 510, i32 18}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 681, i32 6}
!94 = !{ptr @d71_compiz_funcs, !95, !"d71_compiz_funcs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 660, i32 44}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 632, i32 18}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 635, i32 17}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 636, i32 17}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 637, i32 17}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 638, i32 17}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 639, i32 17}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 642, i32 17}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 643, i32 17}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 646, i32 17}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 650, i32 18}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 651, i32 18}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 652, i32 18}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 656, i32 17}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 657, i32 17}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 848, i32 6}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 852, i32 3}
!128 = !{ptr @d71_scaler_funcs, !129, !"d71_scaler_funcs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 829, i32 44}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 800, i32 17}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 803, i32 17}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 806, i32 17}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 807, i32 17}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 808, i32 17}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 809, i32 17}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 810, i32 17}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 811, i32 17}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 812, i32 17}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 813, i32 17}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 814, i32 17}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 817, i32 17}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 818, i32 17}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 819, i32 17}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 820, i32 17}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 821, i32 17}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 822, i32 17}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 823, i32 17}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 824, i32 17}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 825, i32 17}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 826, i32 17}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 957, i32 6}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 960, i32 3}
!176 = !{ptr @d71_splitter_funcs, !177, !"d71_splitter_funcs", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 937, i32 44}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 929, i32 17}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 932, i32 17}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 933, i32 17}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 934, i32 17}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1028, i32 6}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1031, i32 3}
!190 = !{ptr @d71_merger_funcs, !191, !"d71_merger_funcs", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1007, i32 44}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 995, i32 17}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 998, i32 17}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1001, i32 17}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1004, i32 17}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1138, i32 31}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1140, i32 3}
!204 = !{ptr @d71_improc_funcs, !205, !"d71_improc_funcs", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1118, i32 44}
!206 = !{ptr @.str.95, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1098, i32 17}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1099, i32 17}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1102, i32 17}
!212 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1105, i32 17}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1106, i32 17}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1107, i32 17}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1111, i32 18}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1115, i32 18}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1265, i32 30}
!224 = !{ptr @.str.104, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1267, i32 3}
!226 = !{ptr @d71_timing_ctrlr_funcs, !227, !"d71_timing_ctrlr_funcs", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1245, i32 44}
!228 = !{ptr @.str.105, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1216, i32 17}
!230 = !{ptr @.str.106, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1219, i32 17}
!232 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1220, i32 17}
!234 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1221, i32 17}
!236 = !{ptr @.str.109, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1222, i32 17}
!238 = !{ptr @.str.110, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1223, i32 17}
!240 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1224, i32 17}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1225, i32 17}
!244 = !{ptr @.str.113, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1226, i32 17}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1229, i32 17}
!248 = !{ptr @.str.115, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1230, i32 17}
!250 = !{ptr @.str.116, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1231, i32 17}
!252 = !{ptr @.str.117, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1235, i32 18}
!254 = !{ptr @.str.118, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1239, i32 18}
!256 = !{ptr @.str.119, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1240, i32 18}
!258 = !{ptr @.str.120, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1242, i32 17}
!260 = !{ptr @.str.121, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1387, i32 17}
!262 = !{ptr @.str.122, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1392, i32 17}
!264 = !{ptr @.str.123, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1393, i32 17}
!266 = !{ptr @.str.124, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1394, i32 17}
!268 = !{ptr @.str.125, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1395, i32 17}
!270 = !{ptr @.str.126, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1396, i32 17}
!272 = !{ptr @.str.127, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1397, i32 17}
!274 = !{ptr @.str.128, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1400, i32 17}
!276 = !{ptr @.str.129, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1403, i32 17}
!278 = !{ptr @.str.130, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1404, i32 17}
!280 = !{ptr @.str.131, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1405, i32 17}
!282 = !{ptr @.str.132, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1412, i32 17}
!284 = !{ptr @.str.133, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1417, i32 17}
!286 = !{ptr @.str.134, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1418, i32 17}
!288 = !{ptr @.str.135, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1419, i32 17}
!290 = !{ptr @.str.136, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1420, i32 17}
!292 = !{ptr @.str.137, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1421, i32 17}
!294 = !{ptr @.str.138, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1360, i32 15}
!296 = !{ptr @.str.139, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1363, i32 17}
!298 = !{ptr @.str.140, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1364, i32 17}
!300 = !{ptr @.str.141, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1365, i32 17}
!302 = !{ptr @.str.142, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1368, i32 17}
!304 = !{ptr @.str.143, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1371, i32 17}
!306 = !{ptr @.str.144, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1372, i32 17}
!308 = !{ptr @.str.145, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1373, i32 17}
!310 = !{ptr @.str.146, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1374, i32 17}
!312 = !{ptr @.str.147, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1375, i32 17}
!314 = !{ptr @.str.148, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1378, i32 17}
!316 = !{ptr @.str.149, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1379, i32 17}
!318 = !{ptr @.str.150, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c", i32 1380, i32 17}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"min_enum_size", i32 4}
!322 = !{i32 8, !"branch-target-enforcement", i32 0}
!323 = !{i32 8, !"sign-return-address", i32 0}
!324 = !{i32 8, !"sign-return-address-all", i32 0}
!325 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!329 = !{!"auto-init"}
!330 = !{i64 7008449}
!331 = !{i64 2156655751}
!332 = !{i64 2156656137}
!333 = !{i64 7008031}
!334 = !{i8 0, i8 2}
!335 = !{i64 2156656751}
!336 = !{i64 2156657280}
